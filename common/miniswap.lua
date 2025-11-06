-- Examples:
-- * https://github.com/Jyouya/Ashita-Stuff/tree/master/config/addons/luashitacast
-- ** UI example on Ashita discord with filters: `from: will.8627 has: image`
-- * https://github.com/avogadro-war/ashita_profiles

local fonts = require('fonts');
local imgui = require('imgui');

local state = {
    CurrentLevel = 0,
    Debug = false,
    LevelSynced = false,
    LockedLevel = nil,
    LockedTP = false,
    WeaponModeOptions = nil,
};

local shared = gFunc.LoadFile('shared.lua') or {};
local profile = {
    Aliases = shared.Aliases or {},
    Bindings = shared.Bindings or {},
    MiniSwap = {},
    Packer = {},
    Sets = shared.Sets or {},
};

do -- COMMANDS REGION
    profile.MiniSwap.HandleCommand = function(args)
        local command = string.lower(args[1])

        if (command:any('debug')) then
            profile.MiniSwap.HandleCommandDebug(args[2])
        elseif (command:any('locklv')) then
            profile.MiniSwap.HandleCommandLockLV(args[2]);
        elseif (command:any('locktp')) then
            profile.MiniSwap.HandleCommandLockTP(args[2]);
        elseif (command:any('weapon')) then
            -- TODO
        end
    end
    profile.HandleCommand = profile.MiniSwap.HandleCommand;

    profile.MiniSwap.HandleCommandDebug = function(targetValue)
        if targetValue == nil then
            state.Debug = not state.Debug;
        else
            state.Debug = string.lower(targetValue):any('on', 'enable');
        end
        gFunc.Message("Debug: " .. (state.Debug and "ON" or "OFF"));
    end

    profile.MiniSwap.HandleCommandLockTP = function(targetValue)
        local currentValue = state.LockedTP;

        local DoLockTP = function()
            local player = gData.GetPlayer();
    
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Main')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Sub')
            if (player.MainJob ~= 'BRD') then
                AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Range')
            end
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Ammo')

            state.LockedTP = true;
        end

        local DoUnlockTP = function()
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Main')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Sub')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Range')
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Ammo')

            state.LockedTP = false;
        end

        if (targetValue == "on" and not currentValue) then
            DoLockTP()

        elseif (targetValue == "off" and currentValue) then
            DoUnlockTP()

        elseif (targetValue == nil) then
            if (currentValue) then DoUnlockTP() else DoLockTP() end

        end
    end

    profile.MiniSwap.HandleCommandLockLV = function(targetValue)
        if (targetValue == 'none' or targetValue == nil) then
            state.LockedLevel = nil;
        else
            state.LockedLevel = tonumber(targetValue);
        end
    end
end

do -- GEAR LIFECYCLE REGION
    profile.MiniSwap.HandleDefault = function()
        local environment = gData.GetEnvironment()
        local player = gData.GetPlayer();

        profile.MiniSwap.EvaluateGear(player);

        -- Stance: Engaged
        if (player.Status == 'Engaged') then
            gFunc.EquipSet(profile.Sets.Engaged);

            local pet = gData.GetPet();
            if (pet ~= nil) then
                profile.MiniSwap.TryEquipSet("Engaged_Pet_Default");

                local pet_name = profile.MiniSwap.Slugify(pet.Name);
                profile.MiniSwap.TryEquipSet("Engaged_Pet_" .. pet_name);
            end

        -- Stance: Resting
        elseif (player.Status == 'Resting') then
            gFunc.EquipSet(profile.Sets.Resting);

        -- Stance: Idle
        elseif (player.Status == 'Idle') then
            gFunc.EquipSet(profile.Sets.Idle);

            local pet = gData.GetPet();
            if (pet ~= nil) then
                profile.MiniSwap.TryEquipSet("Idle_Pet_Default");

                local pet_name = profile.MiniSwap.Slugify(pet.Name);
                profile.MiniSwap.TryEquipSet("Idle_Pet_" .. pet_name);
            end
        end

        -- Town Sets
        if (environment.Area ~= nil and profile.MiniSwap.TownGroupsMapping[environment.Area] ~= nil) then
           profile.MiniSwap.TryEquipSet("Town");

           local groups = profile.MiniSwap.TownGroupsMapping[environment.Area]
           if (groups ~= nil) then
                for _idx, groupName in pairs(groups) do
                    profile.MiniSwap.TryEquipSet("Town_" .. groupName);
                end
            end
        end
    end
    profile.HandleDefault = profile.MiniSwap.HandleDefault;

    profile.MiniSwap.HandleAbility = function()
        local action = gData.GetAction();
        
        -- TYPE, one of:
        --   Rune Enchantment, Ready, Blood Pact: Rage, Blood Pact: Ward, Corsair Roll, Quick Draw, Unknown
        local actionType = profile.MiniSwap.Slugify(action.Type);
        if (actionType ~= "Unknown") then
            profile.MiniSwap.TryEquipSet("JA_" .. actionType);
        end

        -- NAME
        local actionName = profile.MiniSwap.Slugify(action.Name);
        profile.MiniSwap.TryEquipSet("JA_" .. actionName);
    end
    profile.HandleAbility = profile.MiniSwap.HandleAbility;

    profile.MiniSwap.HandleItem = function()
        local action = gData.GetAction();
        local actionName = profile.MiniSwap.Slugify(action.Name);
        profile.MiniSwap.TryEquipSet("Item_" .. actionName);
    end
    profile.HandleItem = profile.MiniSwap.HandleItem;

    profile.MiniSwap.HandlePrecast = function()
        profile.MiniSwap.TryEquipSet("Precast_Default");

        local action = gData.GetAction();
        local actionName = profile.MiniSwap.Slugify(action.Name);
        local actionSkill = profile.MiniSwap.Slugify(action.Skill);

        -- SKILL, one of:
        --   Divine Magic, Healing Magic, Enhancing Magic, Enfeebling Magic, Elemental Magic,
        --   Dark Magic, Summoning, Ninjutsu, Singing, Blue Magic, Geomancy, Unknown
        profile.MiniSwap.TryEquipSet("Precast_" .. actionSkill);

        -- GROUPS
        local groups = profile.MiniSwap.ActionGroupsMapping[actionName];
        if (groups ~= nil) then
            for _idx, groupName in pairs(groups) do
                profile.MiniSwap.TryEquipSet("Precast_" .. groupName);
            end
        end

        -- NAME
        profile.MiniSwap.TryEquipSet("Precast_" .. actionName);
    end
    profile.HandlePrecast = profile.MiniSwap.HandlePrecast;

    profile.MiniSwap.HandleMidcast = function()
        -- DEFAULT
        profile.MiniSwap.TryEquipSet("Midcast_Default");

        local action = gData.GetAction();
        local actionName = profile.MiniSwap.Slugify(action.Name);
        local actionSkill = profile.MiniSwap.Slugify(action.Skill);

        -- SKILL, one of:
        --   Divine Magic, Healing Magic, Enhancing Magic, Enfeebling Magic, Elemental Magic,
        --   Dark Magic, Summoning, Ninjutsu, Singing, Blue Magic, Geomancy, Unknown
        profile.MiniSwap.TryEquipSet("Midcast_" .. actionSkill);

        -- GROUPS
        local groups = profile.MiniSwap.ActionGroupsMapping[actionName];
        if (groups ~= nil) then
            for _idx, groupName in pairs(groups) do
                profile.MiniSwap.TryEquipSet("Midcast_" .. groupName);
            end
        end

        -- NAME
        profile.MiniSwap.TryEquipSet("Midcast_" .. actionName);
    end
    profile.HandleMidcast = profile.MiniSwap.HandleMidcast;

    profile.MiniSwap.HandlePreshot = function()
        profile.MiniSwap.TryEquipSet("Preshot_Default");
    end
    profile.HandlePreshot = profile.MiniSwap.HandlePreshot;

    profile.MiniSwap.HandleMidshot = function()
        profile.MiniSwap.TryEquipSet("Midshot_Default");
    end
    profile.HandleMidshot = profile.MiniSwap.HandleMidshot;

    profile.MiniSwap.HandleWeaponskill = function()
        profile.MiniSwap.TryEquipSet("WS_Default");

        local action = gData.GetAction();
        local actionName = profile.MiniSwap.Slugify(action.Name)
        profile.MiniSwap.TryEquipSet("WS_" .. actionName);
    end
    profile.HandleWeaponskill = profile.MiniSwap.HandleWeaponskill;
end

do -- GUI REGION
    gui = {
        styles = {
            combo = {
                flags = bit.bor(
                    ImGuiComboFlags_NoArrowButton,
                    -- ImGuiComboFlags_NoPreview,
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

        -- imgui.PushStyleColor(ImGuiCol_FrameBg, { 0.0, 0.0, 0.0, 0.0 });  -- TODO: Re-add after fixing alignment (also re-add the corresponding pop)
        -- imgui.PushStyleVar(ImGuiStyleVar_FrameBorderSize, 0.0);

        if (imgui.Begin('MiniSwap', true, gui.styles.window.flags.current)) then
            local hoverStyles = imgui.IsWindowHovered() and gui.styles.window.flags.active or gui.styles.window.flags.inactive;
            gui.styles.window.flags.current = bit.bor(gui.styles.window.flags.base, hoverStyles);

            -- local weaponModeOptions = {"Auto", "Sandung / Atoyac", "Sandung / Thief's Knife"};
            -- local selectedWeaponMode = "Sandung / Atoyac";

            -- imgui.Text("W.");
            -- imgui.SameLine();

            -- if (imgui.BeginCombo("##MiniSwapWeaponModeSelect", selectedWeaponMode, gui.styles.combo.flags)) then
            --     for i = 1,#weaponModeOptions,1 do
            --         local is_selected = i == 0;

            --         if (imgui.Selectable(weaponModeOptions[i], is_selected)) then
            --             -- ui.theme_index[1] = i;
            --             -- state.icons.theme = theme_paths[i];
            --             -- resources.clear_cache();
            --         end

            --         if (is_selected) then
            --             imgui.SetItemDefaultFocus();
            --         end
            --     end
            --     imgui.EndCombo();
            -- end

            local levelText = ""
            if (state.LockedLevel ~= nil) then
                levelText = tostring(state.LockedLevel) .. " (locked)"
            elseif (state.LevelSynced) then
                levelText = tostring(state.CurrentLevel) .. " (synced)"
            else
                levelText = tostring(state.CurrentLevel) .. " (unlocked)"
            end
            imgui.Text("Lv. " .. levelText);

            local TPText = state.LockedTP and "On" or "Off"
            imgui.Text("TP. " .. TPText)
        end

        -- imgui.PopStyleVar();
        -- imgui.PopStyleColor();
    end
end

do -- MAPPINGS REGION
    profile.MiniSwap.ActionGroupsMapping = {
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
    profile.MiniSwap.ProcessActionGroupsMapping = function()
        for actionName, groupNames in pairs(profile.MiniSwap.ActionGroupsMapping) do
            actionName = profile.MiniSwap.Slugify(actionName);
            profile.MiniSwap.ActionGroupsMapping[actionName] = groupNames;
        end
    end

    profile.MiniSwap.TownGroupsMapping = T{
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
    profile.MiniSwap.OnLoad = function()
        profile.MiniSwap.ProcessActionGroupsMapping();

        gSettings.AllowAddSet = true;

        gui.Initialize();

        if (profile.Sets.Weapons) then
            local weaponModes = {"Auto"};
            for name, _ in pairs(profile.Sets.Weapons) do
                table.insert(weaponModes, name);
            end
            state.WeaponModeOptions = weaponModes;
        end

        for name, cmd in pairs(profile.Aliases) do
            profile.MiniSwap.ExecuteCommand("/alias " .. name .. " " .. cmd);
        end

        for keys, cmd in pairs(profile.Bindings) do
            profile.MiniSwap.ExecuteCommand("/bind " .. keys .. " " .. cmd);
        end

        profile.MiniSwap.OnLoad_LockStyle:once(5);
    end
    profile.OnLoad = profile.MiniSwap.OnLoad;

    profile.MiniSwap.OnLoad_LockStyle = function ()
        if (profile.Sets.LockStyle == nil) then
            return
        end

        gFunc.LockStyle(profile.Sets.LockStyle);
    end

    profile.MiniSwap.OnUnload = function()
        gui.Destroy();

        for name, _cmd in pairs(profile.Aliases) do
            profile.MiniSwap.ExecuteCommand("/alias delete " .. name);
        end

        for keys, _cmd in pairs(profile.Bindings) do
            profile.MiniSwap.ExecuteCommand("/unbind " .. keys);
        end
    end
    profile.OnUnload = profile.MiniSwap.OnUnload;
end

do -- UTILS REGION
    profile.MiniSwap.DeepCopy = function(original)
        local copy = {}
        for k, v in pairs(original) do
            if type(v) == "table" then
                v = profile.MiniSwap.DeepCopy(v)
            end
            copy[k] = v
        end
        return copy
    end

    profile.MiniSwap.DelayCommand = function (command, delay)
        profile.MiniSwap.ExecuteCommand:bind1(command):once(delay)
    end

    profile.MiniSwap.ExecuteCommand = function (command)
        AshitaCore:GetChatManager():QueueCommand(-1, command)
    end

    profile.MiniSwap.EvaluateGear = function(player)
        local level = state.LockedLevel or player.MainJobSync;
        if (level ~= state.CurrentLevel) then
            gFunc.EvaluateLevels(profile.Sets, level);
            state.CurrentLevel = level;
        end
        state.LevelSynced = player.MainJobLevel ~= player.MainJobSync
    end

    profile.MiniSwap.ShowDebug = function(message)
        if (state.Debug) then
            gFunc.Message(message);
        end
    end

    profile.MiniSwap.Slugify = function(rawName)
        local output = string.gsub(rawName, "%s+", "")
        output = string.gsub(output, "'", "")
        output = string.gsub(output, ":", "")
        return output
    end

    profile.MiniSwap.TryEquipSet = function(setName)
        local set = profile.Sets[setName]
        if (set ~= nil) then
            profile.MiniSwap.ShowDebug("Try Equip Set: " .. setName .. " (OK)")
            gFunc.EquipSet(setName);
        else
            profile.MiniSwap.ShowDebug("Try Equip Set: " .. setName .. " (MISSING)")
        end
    end
end


return profile;