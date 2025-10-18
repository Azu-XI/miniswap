local d3d = require('d3d8')
local d3d8dev = d3d.get_device()
local ffi = require("ffi")
local imgui = require('imgui')

local C = ffi.C

local gui = {
    styles = {
        combo = {
            flags = bit.bor(
                ImGuiComboFlags_NoArrowButton,
                ImGuiComboFlags_WidthFitPreview
            )
        },
    },
    textures = {
        lockLevelIcon = nil,
        weaponModesIcon = nil,
    },
    window_flags = {
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
    },
};

function gui.Initialize()
    gui.window_flags.current = gui.window_flags.base;
    
    gui.textures.lockLevelIcon = loadTexture("user-lock-light.png");
    gui.textures.weaponModesIcon = loadTexture("weapons-light.png");

    ashita.events.register('d3d_present', 'miniswap_gui', gui.Draw);
end

function gui.Destroy()
    ashita.events.unregister('d3d_present', 'miniswap_gui');
end

function gui.Draw()
    imgui.SetNextWindowSize({ -1, -1, }, ImGuiCond_Always)

    if (imgui.Begin('MiniSwap', true, gui.window_flags.current)) then
        local hoverStyles = imgui.IsWindowHovered() and gui.window_flags.active or gui.window_flags.inactive;
        gui.window_flags.current = bit.bor(gui.window_flags.base, hoverStyles);

        local weaponModeOptions = {"Auto", "Sandung / Atoyac", "Sandung / Thief's Knife"};
        imgui.Image(gui.textures.weaponModesIcon.data, {16, 16});
        imgui.SameLine();

        local selectedWeaponMode = "Sandung / Atoyac";
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
        

        local lockLevel = nil  -- TODO: get external state somehow?
        local lockLevelText = lockLevel ~= nil and tostring(lockLevel) or "Unlocked"
        imgui.Image(gui.textures.lockLevelIcon.data, {16, 16});
        imgui.SameLine();
        imgui.Text(lockLevelText);
    end
end

function loadTexture(filename)
    local texture_info = T{}

    local ptr = ffi.new("IDirect3DTexture8*[1]");
    local path = string.format(
        "%s\\config\\addons\\luashitacast\\common\\miniswap\\assets\\%s",
        AshitaCore:GetInstallPath(),
        filename
    )
    local res = C.D3DXCreateTextureFromFileA(d3d8dev, path, ptr);
    if (res ~= C.S_OK) then
        return nil;
    end;

    texture_info.image = ffi.new("IDirect3DTexture8*", ptr[0]);
    texture_info.data = tonumber(ffi.cast('uint32_t', texture_info.image))

    d3d.gc_safe_release(texture_info.image);

    return texture_info;
end

return gui;


            -- if (imgui.IsWindowHovered()) then
            --     gui.window_flags.current = bit.bor(gui.window_flags.base, gui.window_flags.active);
            -- else
            --     gui.window_flags.current = bit.bor(gui.window_flags.base, gui.window_flags.inactive);
            -- end

            -- if (Settings.WeaponModeOptions) then
            --     imgui.Image(profile._gui._Textures.WeaponModesData, {16, 16});
            --     imgui.SameLine();
            --     imgui.Text(profile._VarHelper.GetCycle("WeaponModes"));
            --     imgui.SameLine();

            --     local selectedWeaponMode = profile._VarHelper.GetCycle("WeaponModes");

            --     -- if (imgui.IsWindowHovered()) then
            --         -- if (imgui.BeginCombo("WeaponModes", selectedWeaponMode, ImGuiComboFlags_NoPreview)) then
            --         --     for name, _ in pairs(Settings.WeaponModeOptions) do
            --         --         imgui.Selectable(name, name == selectedWeaponMode);
            --         --     end
            --         -- end
            --     -- end

            --     if (imgui.BeginCombo('', selectedWeaponMode, ImGuiComboFlags_NoPreview)) then
            --         for i = 1,#Settings.WeaponModeOptions,1 do
            --             local is_selected = i == 0;

            --             if (imgui.Selectable(Settings.WeaponModeOptions[i], is_selected)) then
            --                 -- ui.theme_index[1] = i;
            --                 -- settings.icons.theme = theme_paths[i];
            --                 -- resources.clear_cache();
            --             end

            --             if (is_selected) then
            --                 imgui.SetItemDefaultFocus();
            --             end
            --         end
            --         imgui.EndCombo();
            --     end

            -- end
            
            -- imgui.Image(profile._gui._Textures.LockLvData, {16, 16});
            -- imgui.SameLine();
            -- if (Settings.LockedLevel ~= nil) then
            --     imgui.Text(tostring(Settings.LockedLevel));
            -- else
            --     imgui.Text("Unlocked");
            -- end