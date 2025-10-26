-- Examples:
-- * https://github.com/Jyouya/Ashita-Stuff/tree/master/config/addons/luashitacast
-- ** UI example on Ashita discord with filters: `from: will.8627 has: image`
-- * https://github.com/avogadro-war/ashita_profiles

local fonts = require('fonts');
local imgui = require('imgui');

local Settings = {
    CurrentLevel = 0,
    Debug = false,
    LevelSynced = false,
    LockedLevel = nil,
    UseStylist = true,  -- TODO: Make it toggleable in users files
    WeaponModeOptions = nil,
};

local profile = {};

profile.Packer = {};
profile.Sets = gFunc.LoadFile('shared_sets.lua') or {};

do -- COMMANDS REGION
    profile.DoHandleCommand = function(args)
        local command = string.lower(args[1])

        if (command:any('debug')) then
            profile._HandleCommandDebug(args[2])
        elseif (command:any('locklv')) then
            profile._HandleCommandLockLV(args[2]);
        elseif (command:any('locktp')) then
            profile._HandleCommandLockTP(args[2]);
        elseif (command:any('weapon')) then
            profile._VarHelper.AdvanceCycle("WeaponModes");
        end
    end
    profile.HandleCommand = profile.DoHandleCommand;

    profile._HandleCommandDebug = function(target_value)
        if target_value == nil then
            Settings.Debug = not Settings.Debug;
        else
            Settings.Debug = string.lower(target_value):any('on', 'enable');
        end
        gFunc.Message("Debug: " .. (Settings.Debug and "ON" or "OFF"));
    end

    profile._HandleCommandLockTP = function(target_value)
        local current_value = profile._VarHelper.GetToggle('LockTP')

        local DoLockTP = function()
            local player = gData.GetPlayer();
    
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Main')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Sub')
            if (player.MainJob ~= 'BRD') then
                AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Range')
            end
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Ammo')
        end

        local DoUnlockTP = function()
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Main')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Sub')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Range')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Ammo')
        end

        if (target_value == "on" and not current_value) then
            profile._VarHelper.AdvanceToggle('LockTP')
            DoLockTP()

        elseif (target_value == "off" and current_value) then
            profile._VarHelper.AdvanceToggle('LockTP')
            DoUnlockTP()

        elseif (target_value == nil) then
            profile._VarHelper.AdvanceToggle('LockTP')
            if (current_value) then DoUnlockTP() else DoLockTP() end

        end
    end

    profile._HandleCommandLockLV = function(target_value)
        if (target_value == 'none' or target_value == nil) then
            Settings.LockedLevel = nil;
            if (profile._VarHelper.GetToggle('LockLV')) then profile._VarHelper.AdvanceToggle('LockLV') end
        else
            Settings.LockedLevel = tonumber(target_value);
            if (not profile._VarHelper.GetToggle('LockLV')) then profile._VarHelper.AdvanceToggle('LockLV') end
        end
    end
end

do -- GEAR LIFECYCLE REGION
    profile.DoHandleDefault = function()
        local environment = gData.GetEnvironment()
        local player = gData.GetPlayer();

        profile._EvaluateGear(player);

        -- Stance: Engaged
        if (player.Status == 'Engaged') then
            gFunc.EquipSet(profile.Sets.Engaged);

            local pet = gData.GetPet();
            if (pet ~= nil) then
                profile._TryEquipSet("Engaged_Pet_Default");

                local pet_name = profile._Slugify(pet.Name);
                profile._TryEquipSet("Engaged_Pet_" .. pet_name);
            end

        -- Stance: Resting
        elseif (player.Status == 'Resting') then
            gFunc.EquipSet(profile.Sets.Resting);

        -- Stance: Idle
        elseif (player.Status == 'Idle') then
            gFunc.EquipSet(profile.Sets.Idle);

            local pet = gData.GetPet();
            if (pet ~= nil) then
                profile._TryEquipSet("Idle_Pet_Default");

                local pet_name = profile._Slugify(pet.Name);
                profile._TryEquipSet("Idle_Pet_" .. pet_name);
            end
        end

        -- Town Sets
        if (environment.Area ~= nil and profile._TownGroupsMapping[environment.Area] ~= nil) then
           profile._TryEquipSet("Town");

           local groups = profile._TownGroupsMapping[environment.Area]
           if (groups ~= nil) then
                for _idx, group_name in pairs(groups) do
                    profile._TryEquipSet("Town_" .. group_name);
                end
            end
        end
    end
    profile.HandleDefault = profile.DoHandleDefault;

    profile.DoHandleAbility = function()
        local action = gData.GetAction();
        
        -- TYPE, one of:
        --   Rune Enchantment, Ready, Blood Pact: Rage, Blood Pact: Ward, Corsair Roll, Quick Draw, Unknown
        local action_type = profile._Slugify(action.Type);
        if (action_type ~= "Unknown") then
            profile._TryEquipSet("JA_" .. action_type);
        end

        -- NAME
        local action_name = profile._Slugify(action.Name);
        profile._TryEquipSet("JA_" .. action_name);
    end
    profile.HandleAbility = profile.DoHandleAbility;

    profile.DoHandleItem = function()
        local action = gData.GetAction();
        local action_name = profile._Slugify(action.Name);
        profile._TryEquipSet("Item_" .. action_name);
    end
    profile.HandleItem = profile.DoHandleItem;

    profile.DoHandlePrecast = function()
        profile._TryEquipSet("Precast_Default");

        local action = gData.GetAction();
        local action_name = profile._Slugify(action.Name);
        local action_skill = profile._Slugify(action.Skill);

        -- SKILL, one of:
        --   Divine Magic, Healing Magic, Enhancing Magic, Enfeebling Magic, Elemental Magic,
        --   Dark Magic, Summoning, Ninjutsu, Singing, Blue Magic, Geomancy, Unknown
        profile._TryEquipSet("Precast_" .. action_skill);

        -- GROUPS
        local groups = profile._ActionGroupsMapping[action_name];
        if (groups ~= nil) then
            for _idx, group_name in pairs(groups) do
                profile._TryEquipSet("Precast_" .. group_name);
            end
        end

        -- NAME
        profile._TryEquipSet("Precast_" .. action_name);
    end
    profile.HandlePrecast = profile.DoHandlePrecast;

    profile.DoHandleMidcast = function()
        -- DEFAULT
        profile._TryEquipSet("Midcast_Default");

        local action = gData.GetAction();
        local action_name = profile._Slugify(action.Name);
        local action_skill = profile._Slugify(action.Skill);

        -- SKILL, one of:
        --   Divine Magic, Healing Magic, Enhancing Magic, Enfeebling Magic, Elemental Magic,
        --   Dark Magic, Summoning, Ninjutsu, Singing, Blue Magic, Geomancy, Unknown
        profile._TryEquipSet("Midcast_" .. action_skill);

        -- GROUPS
        local groups = profile._ActionGroupsMapping[action_name];
        if (groups ~= nil) then
            for _idx, group_name in pairs(groups) do
                profile._TryEquipSet("Midcast_" .. group_name);
            end
        end

        -- NAME
        profile._TryEquipSet("Midcast_" .. action_name);
    end
    profile.HandleMidcast = profile.DoHandleMidcast;

    profile.DoHandlePreshot = function()
        profile._TryEquipSet("Preshot_Default");
    end
    profile.HandlePreshot = profile.DoHandlePreshot;

    profile.DoHandleMidshot = function()
        profile._TryEquipSet("Midshot_Default");
    end
    profile.HandleMidshot = profile.DoHandleMidshot;

    profile.DoHandleWeaponskill = function()
        profile._TryEquipSet("WS_Default");

        local action = gData.GetAction();
        local action_name = profile._Slugify(action.Name)
        profile._TryEquipSet("WS_" .. action_name);
    end
    profile.HandleWeaponskill = profile.DoHandleWeaponskill;
end

do -- GUI REGION
    gui = {
        styles = {
            combo = {
                flags = bit.bor(
                    -- ImGuiComboFlags_NoArrowButton,
                    ImGuiComboFlags_NoPreview,
                    bit.lshift(1, 7)  -- ImGuiComboFlags_WidthFitPreview which is undefined? Not working anyway...
                ),
            },
            window = {
                flags = {
                    base = bit.bor(
                        ImGuiWindowFlags_NoDecoration,
                        ImGuiWindowFlags_AlwaysAutoResize,
                        ImGuiWindowFlags_NoFocusOnAppearing,
                        ImGuiWindowFlags_NoNav,
                        ImGuiWindowFlags_NoBringToFrontOnFocus
                    ),
                    current = 0,
                    active = 0,
                    inactive = ImGuiWindowFlags_NoBackground,
                }
            }
        },
    };

    function gui.Initialize()
        gui.styles.window.flags.current = gui.styles.window.flags.base;
        ashita.events.register('d3d_present', 'miniswap_gui', gui.Draw);
    end

    function gui.Destroy()
        ashita.events.unregister('d3d_present', 'miniswap_gui');
    end

    function gui.Draw()
        imgui.SetNextWindowSize({ -1, -1, }, ImGuiCond_Always)

        if (imgui.Begin('MiniSwap', true, gui.styles.window.flags.current)) then
            local hoverStyles = imgui.IsWindowHovered() and gui.styles.window.flags.active or gui.styles.window.flags.inactive;
            gui.styles.window.flags.current = bit.bor(gui.styles.window.flags.base, hoverStyles);

            local weaponModeOptions = {"Auto", "Sandung / Atoyac", "Sandung / Thief's Knife"};
            local selectedWeaponMode = "Sandung / Atoyac";

            imgui.Text("W. " .. selectedWeaponMode);
            imgui.SameLine();

            if (imgui.BeginCombo("##MiniSwapWeaponModeSelect", selectedWeaponMode, gui.styles.combo.flags)) then
                for i = 1,#weaponModeOptions,1 do
                    local is_selected = i == 0;

                    if (imgui.Selectable(weaponModeOptions[i], is_selected)) then
                        -- ui.theme_index[1] = i;
                        -- settings.icons.theme = theme_paths[i];
                        -- resources.clear_cache();
                    end

                    if (is_selected) then
                        imgui.SetItemDefaultFocus();
                    end
                end
                imgui.EndCombo();
            end

            local levelText = ""
            if (Settings.LockedLevel ~= nil) then
                levelText = tostring(Settings.LockedLevel) .. " (locked)"
            elseif (Settings.LevelSynced) then
                levelText = tostring(Settings.CurrentLevel) .. " (synced)"
            else
                levelText = tostring(Settings.CurrentLevel) .. " (unlocked)"
            end
            imgui.Text("Lv. " .. levelText);
        end
    end
end

do -- OLD GUI REGION
    profile._VarHelper = {}

    profile._VarHelper.State = {
        ["Cycles"] = {},
        ["Toggles"] = {},
    }

    profile._VarHelper.FontSettings = T{
        background = T{
            border_color    = 0xFF000000,
            border_flags    = 15, -- FontBorderFlags.Solid,
            border_sizes    = '1,1,1,1',
            border_visible  = true,
            color           = 0xAA333344,
            visible         = true,
        },
        bold = false,
        color = 0xFFFFFFFF,
        font_family = 'Tahoma',
        font_height = 12,
        padding = 5,
        position_x = 1799,
        position_y = 1240,
        visible = true,
    };

    profile._VarHelper.Initialize = function()
        profile._VarHelper.FontObject = fonts.new(profile._VarHelper.FontSettings);

        ashita.events.register('d3d_present', 'miniswap_present_cb', function ()
            local outText = '';
            for key, value in pairs(profile._VarHelper.State.Toggles) do
                outText = outText .. '\n' .. key .. ': ';
                if (value == true) then
                    outText = outText .. '|cFF00FF00|Enabled|r';
                else
                    outText = outText .. '|cFFFF0000|Disabled|r';
                end
            end
            for key, value in pairs(profile._VarHelper.State.Cycles) do
                outText = outText .. '\n' .. key .. ': ' .. '|cFF00FF00|' .. value.Array[value.Index] .. '|r';
            end
            profile._VarHelper.FontObject.text = outText:match'^%s*(.*)';
        end);
    end

    profile._VarHelper.Destroy = function()
        if (profile._VarHelper.FontObject ~= nil) then
            profile._VarHelper.FontObject:destroy();
        end
        ashita.events.unregister('d3d_present', 'miniswap_present_cb');
    end

    --name must be a valid lua variable name in string format.
    --default must be a boolean
    profile._VarHelper.CreateToggle = function(name, default)
        profile._VarHelper.State.Toggles[name] = default;
    end

    profile._VarHelper.AdvanceToggle = function(name)
        if (type(profile._VarHelper.State.Toggles[name]) ~= 'boolean') then
            return;
        elseif profile._VarHelper.State.Toggles[name] then
            profile._VarHelper.State.Toggles[name] = false;
        else
            profile._VarHelper.State.Toggles[name] = true;
        end
    end

    profile._VarHelper.GetToggle = function(name)
        if (profile._VarHelper.State.Toggles[name] ~= nil) then
            return profile._VarHelper.State.Toggles[name];
        else
            return false;
        end
    end

    --name must be a valid lua variable name in string format.
    --values must be an array style table containing only strings mapped to sequential indices.
    --first value in table will be default.
    profile._VarHelper.CreateCycle = function(name, values)
        local newCycle = {
            Index = 1,
            Array = values
        };
        profile._VarHelper.State.Cycles[name] = newCycle;
    end

    profile._VarHelper.AdvanceCycle = function(name)
        local ctable = profile._VarHelper.State.Cycles[name];
        if (type(ctable) ~= 'table') then
            return;
        end
        
        ctable.Index = ctable.Index + 1;
        if (ctable.Index > #ctable.Array) then
            ctable.Index = 1;
        end
    end

    profile._VarHelper.GetCycle = function(name)
        local ctable = profile._VarHelper.State.Cycles[name];
        if (type(ctable) == 'table') then
            return ctable.Array[ctable.Index];
        else
            return 'Unknown';
        end
    end
end

do -- MAPPINGS REGION
    profile._ActionGroupsMapping = {
        ["1000 Needles"] = {"BluMagicalAcc", "BluMagical"},
        ["Absolute Terror"] = {"BluMagicalAcc", "BluMagical"},
        ["Absorb-Acc"] = {"Absorb"},
        ["Absorb-Agi"] = {"Absorb"},
        ["Absorb-Attri"] = {"Absorb"},
        ["Absorb-Chr"] = {"Absorb"},
        ["Absorb-Dex"] = {"Absorb"},
        ["Absorb-Int"] = {"Absorb"},
        ["Absorb-Mnd"] = {"Absorb"},
        ["Absorb-Str"] = {"Absorb"},
        ["Absorb-TP"] = {"Absorb"},
        ["Absorb-Vit"] = {"Absorb"},
        ["Acrid Stream"] = {"BluMagicalMnd", "BluMagical"},
        ["Actinic Burst"] = {"BluMagicalAcc", "BluMagical"},
        ["Advancing March"] = {"March"},
        ["Amorphic Spikes"] = {"BluPhysicalDex", "BluPhysical"},
        ["Amplification"] = {"BluEnhancing"},
        ["Anemohelix"] = {"Helix"},
        ["Anemohelix II"] = {"Helix"},
        ["Animating Wail"] = {"BluEnhancing"},
        ["Anvil Lightning"] = {"BluMagicalDex", "BluMagical"},
        ["Archer's Prelude"] = {"Prelude"},
        ["Arise"] = {"Raise"},
        ["Army's Paeon"] = {"Paeon"},
        ["Army's Paeon II"] = {"Paeon"},
        ["Army's Paeon III"] = {"Paeon"},
        ["Army's Paeon IV"] = {"Paeon"},
        ["Army's Paeon V"] = {"Paeon"},
        ["Army's Paeon VI"] = {"Paeon"},
        ["Aspir"] = {"Aspir"},
        ["Aspir II"] = {"Aspir"},
        ["Asuran Claws"] = {"BluPhysicalDex", "BluPhysical"},
        ["Atra. Libations"] = {"BluMagicalVit", "BluMagical"},
        ["Auroral Drape"] = {"BluMagicalAcc", "BluMagical"},
        ["Aurorastorm"] = {"Storm"},
        ["Aurorastorm II"] = {"Storm"},
        ["Awful Eye"] = {"BluMagicalAcc", "BluMagical"},
        ["Bad Breath"] = {"BluBreath"},
        ["Banish"] = {"Banish"},
        ["Banish II"] = {"Banish"},
        ["Banish III"] = {"Banish"},
        ["Banishga II"] = {"Banish"},
        ["Banishga"] = {"Banish"},
        ["Baraera"] = {"EnhancingPotency", "BarElement"},
        ["Baraero"] = {"EnhancingPotency", "BarElement"},
        ["Baramnesia"] = {"EnhancingPotency", "BarStatus"},
        ["Baramnesra"] = {"EnhancingPotency", "BarStatus"},
        ["Barbed Crescent"] = {"BluPhysicalDex", "BluPhysical"},
        ["Barblind"] = {"EnhancingPotency", "BarStatus"},
        ["Barblindra"] = {"EnhancingPotency", "BarStatus"},
        ["Barblizzara"] = {"EnhancingPotency", "BarElement"},
        ["Barblizzard"] = {"EnhancingPotency", "BarElement"},
        ["Barfira"] = {"EnhancingPotency", "BarElement"},
        ["Barfire"] = {"EnhancingPotency", "BarElement"},
        ["Barparalyze"] = {"EnhancingPotency", "BarStatus"},
        ["Barparalyzra"] = {"EnhancingPotency", "BarStatus"},
        ["Barpetra"] = {"EnhancingPotency", "BarStatus"},
        ["Barpetrify"] = {"EnhancingPotency", "BarStatus"},
        ["Barpoison"] = {"EnhancingPotency", "BarStatus"},
        ["Barpoisonra"] = {"EnhancingPotency", "BarStatus"},
        ["Barrier Tusk"] = {"BluSkill"},
        ["Barsilence"] = {"EnhancingPotency", "BarStatus"},
        ["Barsilencera"] = {"EnhancingPotency", "BarStatus"},
        ["Barsleep"] = {"EnhancingPotency", "BarStatus"},
        ["Barsleepra"] = {"EnhancingPotency", "BarStatus"},
        ["Barstone"] = {"EnhancingPotency", "BarElement"},
        ["Barstonra"] = {"EnhancingPotency", "BarElement"},
        ["Barthunder"] = {"EnhancingPotency", "BarElement"},
        ["Barthundra"] = {"EnhancingPotency", "BarElement"},
        ["Barvira"] = {"EnhancingPotency", "BarStatus"},
        ["Barvirus"] = {"EnhancingPotency", "BarStatus"},
        ["Barwater"] = {"EnhancingPotency", "BarElement"},
        ["Barwatera"] = {"EnhancingPotency", "BarElement"},
        ["Battery Charge"] = {"BluEnhancing"},
        ["Battle Dance"] = {"BluPhysicalStr", "BluPhysical"},
        ["Battlefield Elegy"] = {"Elegy"},
        ["Benthic Typhoon"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Bewitching Etude"] = {"Etude"},
        ["Bilgestorm"] = {"BluPhysical"},
        ["Blade Madrigal"] = {"Madrigal"},
        ["Blank Gaze"] = {"BluMagicalAcc", "BluMagical"},
        ["Blastbomb"] = {"BluMagicalInt", "BluMagical"},
        ["Blaze Spikes"] = {"EnhancingPotency"},
        ["Blazing Bound"] = {"BluMagicalInt", "BluMagical"},
        ["Blinding Fulgor"] = {"BluMagicalStr", "BluMagical"},
        ["Blindna"] = {"StatusRemoval"},
        ["Blink"] = {"EnhancingDuration"},
        ["Blistering Roar"] = {"BluMagicalAcc", "BluMagical"},
        ["Blitzstrahl"] = {"BluStun", "BluMagicalInt", "BluMagical"},
        ["Blood Drain"] = {"BluMagicalAcc", "BluMagical"},
        ["Blood Saber"] = {"BluMagicalAcc", "BluMagical"},
        ["Bloodrake"] = {"BluPhysicalStr", "BluPhysical"},
        ["Bludgeon"] = {"BluPhysicalChr", "BluPhysical"},
        ["Body Slam"] = {"BluPhysicalVit", "BluPhysical"},
        ["Bomb Toss"] = {"BluMagicalInt", "BluMagical"},
        ["Burn"] = {"ElementalEnfeeble"},
        ["Cannonball"] = {"BluPhysicalVit", "BluPhysical"},
        ["Carcharian Verve"] = {"BluEnhancing"},
        ["Carnage Elegy"] = {"Elegy"},
        ["Chaotic Eye"] = {"BluMagicalAcc", "BluMagical"},
        ["Charged Whisker"] = {"BluMagicalDex", "BluMagical"},
        ["Chocobo Mazurka"] = {"Mazurka"},
        ["Choke"] = {"ElementalEnfeeble"},
        ["Cimicine Discharge"] = {"BluMagicalAcc", "BluMagical"},
        ["Claw Cyclone"] = {"BluPhysicalDex", "BluPhysical"},
        ["Cocoon"] = {"BluEnhancing"},
        ["Cold Wave"] = {"BluMagicalAcc", "BluMagical"},
        ["Corrosive Ooze"] = {"BluMagicalAcc", "BluMagical"},
        ["Cryohelix"] = {"Helix"},
        ["Cryohelix II"] = {"Helix"},
        ["Cura"] = {"Cura"},
        ["Cura II"] = {"Cura"},
        ["Cura III"] = {"Cura"},
        ["Curaga"] = {"Cura"},
        ["Curaga II"] = {"Cura"},
        ["Curaga III"] = {"Cura"},
        ["Curaga IV"] = {"Cura"},
        ["Curaga V"] = {"Cura"},
        ["Cure"] = {"Cure"},
        ["Cure II"] = {"Cure"},
        ["Cure III"] = {"Cure"},
        ["Cure IV"] = {"Cure"},
        ["Cure V"] = {"Cure"},
        ["Cursed Sphere"] = {"BluMagicalInt", "BluMagical"},
        ["Cursna"] = {"StatusRemoval"},
        ["Dark Carol"] = {"Carol"},
        ["Dark Carol II"] = {"Carol"},
        ["Dark Maneuver"] = {"Maneuver"},
        ["Dark Orb"] = {"BluMagicalInt", "BluMagical"},
        ["Dark Threnody"] = {"Threnody"},
        ["Dark Threnody II"] = {"Threnody"},
        ["Death Ray"] = {"BluMagicalInt", "BluMagical"},
        ["Death Scissors"] = {"BluPhysicalStr", "BluPhysical"},
        ["Delta Thrust"] = {"BluPhysicalVit", "BluPhysical"},
        ["Demoralizing Roar"] = {"BluMagicalAcc", "BluMagical"},
        ["Deodorize"] = {"EnhancingDuration"},
        ["Dextrous Etude"] = {"Etude"},
        ["Diamondhide"] = {"BluSkill"},
        ["Diffusion Ray"] = {"BluMagicalInt", "BluMagical"},
        ["Digest"] = {"BluMagicalAcc", "BluMagical"},
        ["Dimensional Death"] = {"BluPhysicalStr", "BluPhysical"},
        ["Disseverment"] = {"BluPhysicalDex", "BluPhysical"},
        ["Doton: Ichi"] = {"ElementalNinjutsu"},
        ["Doton: Ni"] = {"ElementalNinjutsu"},
        ["Doton: San"] = {"ElementalNinjutsu"},
        ["Dragonfoe Mambo"] = {"Mambo"},
        ["Drain"] = {"Drain"},
        ["Drain II"] = {"Drain"},
        ["Drain III"] = {"Drain"},
        ["Dream Flower"] = {"BluMagicalAcc", "BluMagical"},
        ["Droning Whirlwind"] = {"BluMagicalInt", "BluMagical"},
        ["Drown"] = {"ElementalEnfeeble"},
        ["Earth Carol"] = {"Carol"},
        ["Earth Carol II"] = {"Carol"},
        ["Earth Maneuver"] = {"Maneuver"},
        ["Earth Threnody"] = {"Threnody"},
        ["Earth Threnody II"] = {"Threnody"},
        ["Embalming Earth"] = {"BluMagicalInt", "BluMagical"},
        ["Empty Thrash"] = {"BluPhysicalStr", "BluPhysical"},
        ["Enaero"] = {"EnElement"},
        ["Enaero II"] = {"EnElement"},
        ["Enblizzard"] = {"EnElement"},
        ["Enblizzard II"] = {"EnElement"},
        ["Enchanting Etude"] = {"Etude"},
        ["Endark"] = {"EnElement"},
        ["Endark II"] = {"EnElement"},
        ["Enervation"] = {"BluMagicalAcc", "BluMagical"},
        ["Enfire"] = {"EnElement"},
        ["Enfire II"] = {"EnElement"},
        ["Enlight"] = {"EnElement"},
        ["Enlight II"] = {"EnElement"},
        ["Enstone"] = {"EnElement"},
        ["Enstone II"] = {"EnElement"},
        ["Enthunder"] = {"EnElement"},
        ["Enthunder II"] = {"EnElement"},
        ["Entomb"] = {"BluMagicalVit", "BluMagical"},
        ["Enwater"] = {"EnElement"},
        ["Enwater II"] = {"EnElement"},
        ["Erase"] = {"StatusRemoval"},
        ["Erratic Flutter"] = {"BluEnhancing"},
        ["Evryone. Grudge"] = {"BluMagicalMnd", "BluMagical"},
        ["Exuviation"] = {"BluEnhancing"},
        ["Eyes On Me"] = {"BluMagicalChr", "BluMagical"},
        ["Fantod"] = {"BluEnhancing"},
        ["Feather Barrier"] = {"BluEnhancing"},
        ["Feather Storm"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Feather Tickle"] = {"BluMagicalAcc", "BluMagical"},
        ["Filamented Hold"] = {"BluMagicalAcc", "BluMagical"},
        ["Final Sting"] = {"BluPhysicalHP", "BluPhysical"},
        ["Fire Carol"] = {"Carol"},
        ["Fire Carol II"] = {"Carol"},
        ["Fire Maneuver"] = {"Maneuver"},
        ["Fire Threnody"] = {"Threnody"},
        ["Fire Threnody II"] = {"Threnody"},
        ["Firespit"] = {"BluMagicalInt", "BluMagical"},
        ["Firestorm II"] = {"Storm"},
        ["Firestorm"] = {"Storm"},
        ["Flurry II"] = {"EnhancingDuration"},
        ["Flurry"] = {"EnhancingDuration"},
        ["Flying Hip Press"] = {"BluBreath"},
        ["Foe Lullaby"] = {"Lullaby"},
        ["Foe Requiem"] = {"Requiem"},
        ["Foe Lullaby II"] = {"Lullaby"},
        ["Foe Requiem II"] = {"Requiem"},
        ["Foe Requiem III"] = {"Requiem"},
        ["Foe Requiem IV"] = {"Requiem"},
        ["Foe Requiem V"] = {"Requiem"},
        ["Foe Requiem VI"] = {"Requiem"},
        ["Foe Requiem VII"] = {"Requiem"},
        ["Foot Kick"] = {"BluPhysicalDex", "BluPhysical"},
        ["Foul Waters"] = {"BluMagicalInt", "BluMagical"},
        ["Frenetic Rip"] = {"BluPhysicalDex", "BluPhysical"},
        ["Frightful Roar"] = {"BluMagicalAcc", "BluMagical"},
        ["Frost Breath"] = {"BluBreath"},
        ["Frost"] = {"ElementalEnfeeble"},
        ["Frypan"] = {"BluStun", "BluPhysical"},
        ["Full Cure"] = {"Cure"},
        ["Gain-AGI"] = {"Gain"},
        ["Gain-CHR"] = {"Gain"},
        ["Gain-DEX"] = {"Gain"},
        ["Gain-INT"] = {"Gain"},
        ["Gain-MND"] = {"Gain"},
        ["Gain-STR"] = {"Gain"},
        ["Gain-VIT"] = {"Gain"},
        ["Gates of Hades"] = {"BluMagicalDex", "BluMagical"},
        ["Geo-Acumen"] = {"Geo"},
        ["Geo-AGI"] = {"Geo"},
        ["Geo-Attunement"] = {"Geo"},
        ["Geo-Barrier"] = {"Geo"},
        ["Geo-CHR"] = {"Geo"},
        ["Geo-DEX"] = {"Geo"},
        ["Geo-Fade"] = {"Geo"},
        ["Geo-Fend"] = {"Geo"},
        ["Geo-Focus"] = {"Geo"},
        ["Geo-Frailty"] = {"Geo"},
        ["Geo-Fury"] = {"Geo"},
        ["Geo-Gravity"] = {"Geo"},
        ["Geo-Haste"] = {"Geo"},
        ["Geo-INT"] = {"Geo"},
        ["Geo-Languor"] = {"Geo"},
        ["Geo-Malaise"] = {"Geo"},
        ["Geo-MND"] = {"Geo"},
        ["Geo-Paralyze"] = {"Geo"},
        ["Geo-Poison"] = {"Geo"},
        ["Geo-Precision"] = {"Geo"},
        ["Geo-Refresh"] = {"Geo"},
        ["Geo-Regen"] = {"Geo"},
        ["Geo-Slip"] = {"Geo"},
        ["Geo-Slow"] = {"Geo"},
        ["Geo-STR"] = {"Geo"},
        ["Geo-Torpor"] = {"Geo"},
        ["Geo-Vex"] = {"Geo"},
        ["Geo-VIT"] = {"Geo"},
        ["Geo-Voidance"] = {"Geo"},
        ["Geo-Wilt"] = {"Geo"},
        ["Geist Wall"] = {"BluMagicalAcc", "BluMagical"},
        ["Geohelix"] = {"Helix"},
        ["Geohelix II"] = {"Helix"},
        ["Glutinous Dart"] = {"BluPhysicalVit", "BluPhysical"},
        ["Goblin Rush"] = {"BluPhysicalDex", "BluPhysical"},
        ["Grand Slam"] = {"BluPhysicalVit", "BluPhysical"},
        ["Hailstorm II"] = {"Storm"},
        ["Hailstorm"] = {"Storm"},
        ["Harden Shell"] = {"BluEnhancing"},
        ["Haste"] = {"EnhancingDuration"},
        ["Haste II"] = {"EnhancingDuration"},
        ["Head Butt"] = {"BluStun", "BluPhysical"},
        ["Healing Breeze"] = {"BluHealing"},
        ["Heat Breath"] = {"BluBreath"},
        ["Heavy Strike"] = {"BluPhysicalAcc", "BluPhysical"},
        ["Hecatomb Wave"] = {"BluBreath", "BluMagicalAcc", "BluMagical"},
        ["Helldive"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Herculean Etude"] = {"Etude"},
        ["Holy"] = {"Holy"},
        ["Holy II"] = {"Holy"},
        ["Horde Lullaby"] = {"Lullaby"},
        ["Horde Lullaby II"] = {"Lullaby"},
        ["Hunter's Prelude"] = {"Prelude"},
        ["Huton: Ichi"] = {"ElementalNinjutsu"},
        ["Huton: Ni"] = {"ElementalNinjutsu"},
        ["Huton: San"] = {"ElementalNinjutsu"},
        ["Hydro Shot"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Hydrohelix"] = {"Helix"},
        ["Hydrohelix II"] = {"Helix"},
        ["Hyoton: Ichi"] = {"ElementalNinjutsu"},
        ["Hyoton: Ni"] = {"ElementalNinjutsu"},
        ["Hyoton: San"] = {"ElementalNinjutsu"},
        ["Hysteric Barrage"] = {"BluPhysicalDex", "BluPhysical"},
        ["Ice Break"] = {"BluMagicalInt", "BluMagical"},
        ["Ice Carol"] = {"Carol"},
        ["Ice Carol II"] = {"Carol"},
        ["Ice Maneuver"] = {"Maneuver"},
        ["Ice Spikes"] = {"EnhancingPotency"},
        ["Ice Threnody"] = {"Threnody"},
        ["Ice Threnody II"] = {"Threnody"},
        ["Indi-Acumen"] = {"Indi"},
        ["Indi-AGI"] = {"Indi"},
        ["Indi-Attunement"] = {"Indi"},
        ["Indi-Barrier"] = {"Indi"},
        ["Indi-CHR"] = {"Indi"},
        ["Indi-DEX"] = {"Indi"},
        ["Indi-Fade"] = {"Indi"},
        ["Indi-Fend"] = {"Indi"},
        ["Indi-Focus"] = {"Indi"},
        ["Indi-Frailty"] = {"Indi"},
        ["Indi-Fury"] = {"Indi"},
        ["Indi-Gravity"] = {"Indi"},
        ["Indi-Haste"] = {"Indi"},
        ["Indi-INT"] = {"Indi"},
        ["Indi-Languor"] = {"Indi"},
        ["Indi-Malaise"] = {"Indi"},
        ["Indi-MND"] = {"Indi"},
        ["Indi-Paralyze"] = {"Indi"},
        ["Indi-Poison"] = {"Indi"},
        ["Indi-Precision"] = {"Indi"},
        ["Indi-Refresh"] = {"Indi"},
        ["Indi-Regen"] = {"Indi"},
        ["Indi-Slip"] = {"Indi"},
        ["Indi-Slow"] = {"Indi"},
        ["Indi-STR"] = {"Indi"},
        ["Indi-Torpor"] = {"Indi"},
        ["Indi-Vex"] = {"Indi"},
        ["Indi-VIT"] = {"Indi"},
        ["Indi-Voidance"] = {"Indi"},
        ["Indi-Wilt"] = {"Indi"},
        ["Infrasonics"] = {"BluMagicalAcc", "BluMagical"},
        ["Invisible"] = {"EnhancingDuration"},
        ["Ionohelix"] = {"Helix"},
        ["Ionohelix II"] = {"Helix"},
        ["Jet Stream"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Jettatura"] = {"BluMagicalAcc", "BluMagical"},
        ["Katon: Ichi"] = {"ElementalNinjutsu"},
        ["Katon: Ni"] = {"ElementalNinjutsu"},
        ["Katon: San"] = {"ElementalNinjutsu"},
        ["Klimaform"] = {"DarkDuration"},
        ["Knight's Minne II"] = {"Minne"},
        ["Knight's Minne III"] = {"Minne"},
        ["Knight's Minne IV"] = {"Minne"},
        ["Knight's Minne V"] = {"Minne"},
        ["Knight's Minne"] = {"Minne"},
        ["Leafstorm"] = {"BluMagicalInt", "BluMagical"},
        ["Learned Etude"] = {"Etude"},
        ["Light Carol"] = {"Carol"},
        ["Light Carol II"] = {"Carol"},
        ["Light Maneuver"] = {"Maneuver"},
        ["Light Threnody"] = {"Threnody"},
        ["Light Threnody II"] = {"Threnody"},
        ["Light of Penance"] = {"BluMagicalAcc", "BluMagical"},
        ["Lightning Carol"] = {"Carol"},
        ["Lightning Carol II"] = {"Carol"},
        ["Lightning Threnody"] = {"Threnody"},
        ["Lightning Threnody II"] = {"Threnody"},
        ["Logical Etude"] = {"Etude"},
        ["Lowing"] = {"BluMagicalAcc", "BluMagical"},
        ["Luminohelix"] = {"Helix"},
        ["Luminohelix II"] = {"Helix"},
        ["MP Drainkiss"] = {"BluMagicalAcc", "BluMagical"},
        ["Maelstrom"] = {"BluMagicalInt", "BluMagical"},
        ["Mage's Ballad"] = {"Ballad"},
        ["Mage's Ballad II"] = {"Ballad"},
        ["Mage's Ballad III"] = {"Ballad"},
        ["Magic Barrier"] = {"BluSkill"},
        ["Magic Fruit"] = {"BluHealing"},
        ["Magic Hammer"] = {"BluMagicalMnd", "BluMagical"},
        ["Magnetite Cloud"] = {"BluBreath"},
        ["Mandibular Bite"] = {"BluPhysicalInt", "BluPhysical"},
        ["Memento Mori"] = {"BluEnhancing"},
        ["Metallic Body"] = {"BluSkill"},
        ["Mighty Guard"] = {"BluEnhancing"},
        ["Mighty Guard"] = {"BluSkill"},
        ["Mind Blast"] = {"BluMagicalAcc", "BluMagicalMnd", "BluMagical"},
        ["Molting Plumage"] = {"BluMagicalAgi", "BluMagical"},
        ["Mortal Ray"] = {"BluMagicalAcc", "BluMagical"},
        ["Mysterious Light"] = {"BluMagicalChr", "BluMagical"},
        ["Nat. Meditation"] = {"BluEnhancing"},
        ["Nectarous Deluge"] = {"BluMagicalMnd", "BluMagical"},
        ["Noctohelix"] = {"Helix"},
        ["Noctohelix II"] = {"Helix"},
        ["Occultation"] = {"BluEnhancing"},
        ["Orcish Counterstance"] = {"BluEnhancing"},
        ["Osmosis"] = {"BluMagicalAcc", "BluMagical"},
        ["Palling Salvo"] = {"BluMagicalAgi", "BluMagical"},
        ["Paralyna"] = {"StatusRemoval"},
        ["Paralyzing Triad"] = {"BluPhysicalDex", "BluPhysical"},
        ["Phalanx II"] = {"Phalanx"},
        ["Phalanx"] = {"Phalanx"},
        ["Pinecone Bomb"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Plasma Charge"] = {"BluSkill"},
        ["Plenilune Embrace"] = {"BluHealing"},
        ["Poison Breath"] = {"BluBreath"},
        ["Poisona"] = {"StatusRemoval"},
        ["Pollen"] = {"BluHealing"},
        ["Power Attack"] = {"BluPhysicalVit", "BluPhysical"},
        ["Protect"] = {"ProShell", "Protect"},
        ["Protect II"] = {"ProShell", "Protect"},
        ["Protect III"] = {"ProShell", "Protect"},
        ["Protect IV"] = {"ProShell", "Protect"},
        ["Protect V"] = {"ProShell", "Protect"},
        ["Protectra"] = {"ProShell", "Protectra"},
        ["Protectra II"] = {"ProShell", "Protectra"},
        ["Protectra III"] = {"ProShell", "Protectra"},
        ["Protectra IV"] = {"ProShell", "Protectra"},
        ["Protectra V"] = {"ProShell", "Protectra"},
        ["Pyric Bulwark"] = {"BluSkill"},
        ["Pyrohelix II"] = {"Helix"},
        ["Pyrohelix"] = {"Helix"},
        ["Quad. Continuum"] = {"BluPhysicalVit", "BluPhysical"},
        ["Quadrastrike"] = {"BluPhysicalStr", "BluPhysical"},
        ["Queasyshroom"] = {"BluPhysicalInt", "BluPhysical"},
        ["Quick Etude"] = {"Etude"},
        ["Radiant Breath"] = {"BluBreath"},
        ["Rail Cannon"] = {"BluMagicalInt", "BluMagical"},
        ["Rainstorm II"] = {"Storm"},
        ["Rainstorm"] = {"Storm"},
        ["Raise"] = {"Raise"},
        ["Raise II"] = {"Raise"},
        ["Raise III"] = {"Raise"},
        ["Raiton: Ichi"] = {"ElementalNinjutsu"},
        ["Raiton: Ni"] = {"ElementalNinjutsu"},
        ["Raiton: San"] = {"ElementalNinjutsu"},
        ["Ram Charge"] = {"BluPhysicalMnd", "BluPhysical"},
        ["Raptor Mazurka"] = {"Mazurka"},
        ["Rasp"] = {"ElementalEnfeeble"},
        ["Reactor Cool"] = {"BluSkill"},
        ["Reaving Wind"] = {"BluMagicalAcc", "BluMagical"},
        ["Refresh"] = {"Refresh"},
        ["Refresh II"] = {"Refresh"},
        ["Refresh III"] = {"Refresh"},
        ["Refueling"] = {"BluEnhancing"},
        ["Regen"] = {"Regen"},
        ["Regen II"] = {"Regen"},
        ["Regen III"] = {"Regen"},
        ["Regen IV"] = {"Regen"},
        ["Regen V"] = {"Regen"},
        ["Regeneration"] = {"BluEnhancing", "BluMagicalInt", "BluMagical"},
        ["Rending Deluge"] = {"BluMagicalInt", "BluMagical"},
        ["Reraise"] = {"EnhancingDuration", "Raise"},
        ["Reraise II"] = {"EnhancingDuration", "Raise"},
        ["Reraise III"] = {"EnhancingDuration", "Raise"},
        ["Reraise IV"] = {"EnhancingDuration", "Raise"},
        ["Restoral"] = {"BluHealing"},
        ["Retinal Glare"] = {"BluMagicalInt", "BluMagical"},
        ["Sage Etude"] = {"Etude"},
        ["Saline Coat"] = {"BluEnhancing"},
        ["Sandspin"] = {"BluMagicalAcc", "BluMagical"},
        ["Sandspray"] = {"BluMagicalAcc", "BluMagical"},
        ["Sandstorm"] = {"Storm"},
        ["Sandstorm II"] = {"Storm"},
        ["Saurian Slide"] = {"BluPhysicalVit", "BluPhysical"},
        ["Scouring Spate"] = {"BluMagicalMnd", "BluMagical"},
        ["Screwdriver"] = {"BluPhysicalMnd", "BluPhysical"},
        ["Searing Tempest"] = {"BluMagicalStr", "BluMagical"},
        ["Seedspray"] = {"BluPhysicalDex", "BluPhysical"},
        ["Self-Destruct"] = {"BluBreath"},
        ["Sheep Song"] = {"BluMagicalAcc", "BluMagical"},
        ["Sheepfoe Mambo"] = {"Mambo"},
        ["Shell"] = {"ProShell", "Shell"},
        ["Shell II"] = {"ProShell", "Shell"},
        ["Shell III"] = {"ProShell", "Shell"},
        ["Shell IV"] = {"ProShell", "Shell"},
        ["Shell V"] = {"ProShell", "Shell"},
        ["Shellra"] = {"ProShell", "Shellra"},
        ["Shellra II"] = {"ProShell", "Shellra"},
        ["Shellra III"] = {"ProShell", "Shellra"},
        ["Shellra IV"] = {"ProShell", "Shellra"},
        ["Shellra V"] = {"ProShell", "Shellra"},
        ["Shock Spikes"] = {"EnhancingPotency"},
        ["Shock"] = {"ElementalEnfeeble"},
        ["Sickle Slash"] = {"BluPhysicalDex", "BluPhysical"},
        ["Silena"] = {"StatusRemoval"},
        ["Silent Storm"] = {"BluMagicalAgi", "BluMagical"},
        ["Sinewy Etude"] = {"Etude"},
        ["Sinker Drill"] = {"BluPhysicalStr", "BluPhysical"},
        ["Smite of Rage"] = {"BluPhysicalDex", "BluPhysical"},
        ["Sneak"] = {"EnhancingDuration"},
        ["Soporific"] = {"BluMagicalAcc", "BluMagical"},
        ["Sound Blast"] = {"BluMagicalAcc", "BluMagical"},
        ["Spectral Floe"] = {"BluMagicalInt", "BluMagical"},
        ["Spinal Cleave"] = {"BluPhysicalStr", "BluPhysical"},
        ["Spiral Spin"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Spirited Etude"] = {"Etude"},
        ["Sprout Smack"] = {"BluPhysicalVit", "BluPhysical"},
        ["Stinking Gas"] = {"BluMagicalAcc", "BluMagical"},
        ["Stona"] = {"StatusRemoval"},
        ["Sub-zero Smash"] = {"BluMagicalAcc", "BluPhysicalVit", "BluPhysical"},
        ["Subduction"] = {"BluMagicalInt", "BluMagical"},
        ["Sudden Lunge"] = {"BluStun", "BluPhysicalAGI", "BluPhysical"},
        ["Suiton: Ichi"] = {"ElementalNinjutsu"},
        ["Suiton: Ni"] = {"ElementalNinjutsu"},
        ["Suiton: San"] = {"ElementalNinjutsu"},
        ["Sweeping Gouge"] = {"BluPhysicalVit", "BluPhysical"},
        ["Swift Etude"] = {"Etude"},
        ["Sword Madrigal"] = {"Madrigal"},
        ["Tail Slap"] = {"BluStun", "BluPhysicalVit", "BluPhysical"},
        ["Tem. Upheaval"] = {"BluMagicalInt", "BluMagical"},
        ["Temper"] = {"EnhancingPotency"},
        ["Temper II"] = {"EnhancingPotency"},
        ["Temporal Shift"] = {"BluStun", "BluMagical"},
        ["Tenebral Crush"] = {"BluMagical"},
        ["Terror Touch"] = {"BluPhysicalDex", "BluPhysical"},
        ["Thermal Pulse"] = {"BluMagicalVit", "BluMagical"},
        ["Thrashing Assault"] = {"BluPhysicalDex", "BluPhysical"},
        ["Thunder Breath"] = {"BluBreath"},
        ["Thunder Maneuver"] = {"Maneuver"},
        ["Thunderbolt"] = {"BluStun", "BluMagicalInt", "BluMagical"},
        ["Thunderstorm II"] = {"Storm"},
        ["Thunderstorm"] = {"Storm"},
        ["Tourbillion"] = {"BluPhysicalMnd", "BluPhysical"},
        ["Triumphant Roar"] = {"BluEnhancing"},
        ["Uncanny Etude"] = {"Etude"},
        ["Uppercut"] = {"BluPhysicalStr", "BluPhysical"},
        ["Utsusemi: Ichi"] = {"Utsusemi"},
        ["Utsusemi: Ni"] = {"Utsusemi"},
        ["Utsusemi: San"] = {"Utsusemi"},
        ["Valor Minuet"] = {"Minuet"},
        ["Valor Minuet II"] = {"Minuet"},
        ["Valor Minuet III"] = {"Minuet"},
        ["Valor Minuet IV"] = {"Minuet"},
        ["Valor Minuet V"] = {"Minuet"},
        ["Vanity Dive"] = {"BluPhysicalDex", "BluPhysical"},
        ["Vapor Spray"] = {"BluBreath"},
        ["Venom Shell"] = {"BluMagicalAcc", "BluMagical"},
        ["Vertical Cleave"] = {"BluPhysicalStr", "BluPhysical"},
        ["Victory March"] = {"March"},
        ["Viruna"] = {"StatusRemoval"},
        ["Vital Etude"] = {"Etude"},
        ["Vivacious Etude"] = {"Etude"},
        ["Voidstorm II"] = {"Storm"},
        ["Voidstorm"] = {"Storm"},
        ["Voracious Trunk"] = {"BluMagicalAcc", "BluMagical"},
        ["Warm-Up"] = {"BluEnhancing"},
        ["Water Bomb"] = {"BluMagicalInt", "BluMagical"},
        ["Water Carol"] = {"Carol"},
        ["Water Carol II"] = {"Carol"},
        ["Water Maneuver"] = {"Maneuver"},
        ["Water Threnody"] = {"Threnody"},
        ["Water Threnody II"] = {"Threnody"},
        ["Whirl of Rage"] = {"BluStun", "BluPhysicalStr", "BluPhysicalMnd", "BluPhysical"},
        ["White Wind"] = {"BluHealing"},
        ["Wild Carrot"] = {"BluHealing"},
        ["Wild Oats"] = {"BluPhysicalAgi", "BluPhysical"},
        ["Wind Breath"] = {"BluBreath"},
        ["Wind Carol"] = {"Carol"},
        ["Wind Carol II"] = {"Carol"},
        ["Wind Maneuver"] = {"Maneuver"},
        ["Wind Threnody"] = {"Threnody"},
        ["Wind Threnody II"] = {"Threnody"},
        ["Winds of Promyvion"] = {"BluEnhancing"},
        ["Windstorm II"] = {"Storm"},
        ["Windstorm"] = {"Storm"},
        ["Yawn"] = {"BluMagicalAcc", "BluMagical"},
        ["Zephyr Mantle"] = {"BluEnhancing"},
    }

    -- Normalized action name to the mapping
    profile._ProcessActionGroupsMapping = function()
        for action_name, group_names in pairs(profile._ActionGroupsMapping) do
            action_name = profile._Slugify(action_name);
            profile._ActionGroupsMapping[action_name] = group_names;
        end
    end

    profile._TownGroupsMapping = T{
        ["Tavnazian Safehold"] = {},

        ["Al Zahbi"] = {},
        ["Aht Urhgan Whitegate"] = {},
        ["Nashmau"] = {},
        
        ["Southern San d'Oria [S]"] = {"SandOria"},
        ["Bastok Markets [S]"] = {"Bastok"},
        ["Windurst Waters [S]"] = {"Windurst"},
        
        ["San d'Oria-Jeuno Airship"] = {},
        ["Bastok-Jeuno Airship"] = {},
        ["Windurst-Jeuno Airship"] = {},
        ["Kazham-Jeuno Airship"] = {},
        
        ["Southern San d'Oria"] = {"SandOria"},
        ["Northern San d'Oria"] = {"SandOria"},
        ["Port San d'Oria"] = {"SandOria"},
        ["Chateau d'Oraguille"] = {"SandOria"},
        
        ["Bastok Mines"] = {"Bastok"},
        ["Bastok Markets"] = {"Bastok"},
        ["Port Bastok"] = {"Bastok"},
        ["Metalworks"] = {"Bastok"},
        
        ["Windurst Waters"] = {"Windurst"},
        ["Windurst Walls"] = {"Windurst"},
        ["Port Windurst"] = {"Windurst"},
        ["Windurst Woods"] = {"Windurst"},
        ["Heavens Tower"] = {"Windurst"},
        
        ["Ru'Lude Gardens"] = {"Jeuno"},
        ["Upper Jeuno"] = {"Jeuno"},
        ["Lower Jeuno"] = {"Jeuno"},
        ["Port Jeuno"] = {"Jeuno"},
        
        ["Rabao"] = {},
        ["Selbina"] = {},
        ["Mhaura"] = {},
        ["Kazham"] = {},
        ["Norg"] = {},
        
        ["Mog Garden"] = {"Adoulin"},
        ["Celennia Memorial Library"] = {"Adoulin"},
        ["Western Adoulin"] = {"Adoulin"},
        ["Eastern Adoulin"] = {"Adoulin"},
    }
end

do -- PROFILE LIFECYCLE REGION
    profile.DoOnLoad = function()
        profile._ProcessActionGroupsMapping();

        gSettings.AllowAddSet = true;

        profile._VarHelper.Initialize();
        profile._VarHelper.CreateToggle("LockTP", false);
        profile._VarHelper.CreateToggle("LockLV", false);

        gui.Initialize();

        if (profile.Sets.Weapons) then
            local weaponModes = {"Auto"};
            for name, _ in pairs(profile.Sets.Weapons) do
                table.insert(weaponModes, name);
            end
            profile._VarHelper.CreateCycle("WeaponModes", weaponModes);
            Settings.WeaponModeOptions = weaponModes;
        end

        profile._ExecuteCommand("/alias /locklv /lac fwd locklv");
        profile._ExecuteCommand("/alias /locktp /lac fwd locktp");

        profile._OnLoad_LockStyle:once(5);
    end
    profile.OnLoad = profile.DoOnLoad;

    profile._OnLoad_LockStyle = function ()
        if (profile.Sets.LockStyle == nil) then
            return
        end

        gFunc.LockStyle(profile.Sets.LockStyle);
        if (Settings.UseStylist) then
            profile._DelayCommand("/sl blink", 1)
        end
    end

    profile.DoOnUnload = function()
        profile._VarHelper.Destroy();
        gui.Destroy();

        profile._ExecuteCommand("/alias delete /locklv");
        profile._ExecuteCommand("/alias delete /locktp");
    end
    profile.OnUnload = profile.DoOnUnload;
end

do -- UTILS REGION
    profile.DeepCopy = function(original)
        local copy = {}
        for k, v in pairs(original) do
            if type(v) == "table" then
                v = profile.DeepCopy(v)
            end
            copy[k] = v
        end
        return copy
    end

    profile._DelayCommand = function (command, delay)
        profile._ExecuteCommand:bind1(command):once(delay)
    end

    profile._ExecuteCommand = function (command)
        AshitaCore:GetChatManager():QueueCommand(-1, command)
    end

    profile._EvaluateGear = function(player)
        local level = profile._VarHelper.GetToggle('LockLV') and Settings.LockedLevel or player.MainJobSync;
        if (level ~= Settings.CurrentLevel) then
            gFunc.EvaluateLevels(profile.Sets, level);
            Settings.CurrentLevel = level;
        end
        Settings.LevelSynced = player.MainJobLevel ~= player.MainJobSync
    end

    profile._ShowDebug = function(message)
        if (Settings.Debug) then
            gFunc.Message(message);
        end
    end

    profile._Slugify = function(raw_name)
        local output = string.gsub(raw_name, "%s+", "")
        output = string.gsub(output, "'", "")
        output = string.gsub(output, ":", "")
        return output
    end

    profile._TryEquipSet = function(set_name)
        local set = profile.Sets[set_name]
        if (set ~= nil) then
            profile._ShowDebug("Try Equip Set: " .. set_name .. " (OK)")
            gFunc.EquipSet(set_name);
        else
            profile._ShowDebug("Try Equip Set: " .. set_name .. " (MISSING)")
        end
    end
end


return profile;