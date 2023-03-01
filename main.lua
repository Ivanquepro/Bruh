loadstring(game:HttpGet('https://garfieldscripts.xyz/ui-libs/janlib.lua'))()
-- [Legit Tab UI] ------------------------------------------------------------------------------------------------------------------------------------------------------------
local MainTab = library:AddTab("Main"); 
local MainColunm1 = MainTab:AddColumn();
local Main = MainColunm1:AddSection("LocalCheats")

Main:AddDivider("Main");
Main:AddSlider{text = "Speedhack", flag = "Speed", min = 0, max = 100, value = 1, suffix = ""}

-- [Rage Tab UI] ------------------------------------------------------------------------------------------------------------------------------------------------------------
local RageTab = library:AddTab("Rage"); 
local RageColunm1 = RageTab:AddColumn();
local RageMain = RageColunm1:AddSection("Auto Wall")

RageMain:AddDivider("Main");
RageMain:AddToggle{text = "Enabled", flag = "AutoWallEnabled"}

-- [Visuals Tab UI] ------------------------------------------------------------------------------------------------------------------------------------------------------------
local VisualsTab = library:AddTab("Visuals"); 
local VisualsColunm1 = VisualsTab:AddColumn();
local VisualsMain = VisualsColunm1:AddSection("Local Visuals")

VisualsMain:AddDivider("Main");
VisualsMain:AddToggle{text = "Enabled", flag = "LocalVisualsEnabled"}
VisualsMain:AddToggle{text = "Custom Arm", flag = "CustomArm"}:AddColor({flag = "ArmColor", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625)});
VisualsMain:AddSlider{text = "Transparency", flag = "ArmTransparency", min = 0.10, max = 0.95, float = 0.01, value = 0.85, suffix = "%"}
VisualsMain:AddList({text = "Material", flag = "ArmMaterial", value = "ForceField", values = {"ForceField", "Neon", "SmoothPlastic"}});
VisualsMain:AddToggle{text = "Custom Weapon", flag = "CustomWeapon"}:AddColor({flag = "WeaponColor", color = Color3.new(1, 1, 1)});
VisualsMain:AddSlider{text = "Transparency", flag = "WeaponTransparency", min = 0.10, max = 0.95, float = 0.01, value = 0.85, suffix = "%"}
VisualsMain:AddList({text = "Material", flag = "WeaponMaterial", value = "ForceField", values = {"ForceField", "Neon", "SmoothPlastic"}});
VisualsMain:AddDivider("Mesh");
VisualsMain:AddToggle{text = "Enabled", flag = "TextureEnabled"}
VisualsMain:AddList({text = "Arm Animation", flag = "ArmAnimation", value = "Bubbles", values = {"Bubbles", "Scanning"}});
VisualsMain:AddList({text = "Weapon Animation", flag = "WeaponAnimation", value = "Bubbles", values = {"Bubbles", "Scanning"}});
VisualsMain:AddDivider("Third Person");
VisualsMain:AddToggle{text = "Enabled", flag = "ThirdPersonEnabled"}:AddColor({flag = "ThirdPersonColor", color = Color3.new(1, 1, 1)});
VisualsMain:AddList({text = "Material", flag = "ThirdPersonMaterial", value = "ForceField", values = {"ForceField", "SmoothPlastic"}});

local VisualsColunm2 = VisualsTab:AddColumn();
local VisualsSecond = VisualsColunm2:AddSection("Camera Visuals")

VisualsSecond:AddDivider("Main");
VisualsSecond:AddToggle{text = "Enabled", flag = "CameraVisualsEnabled"}
VisualsSecond:AddToggle{text = "Change Camera FOV", flag = "ChangeCameraFOV"}
VisualsSecond:AddSlider{text = "Camera FOV", flag = "CameraFOV", min = 10, max = 120, value = 120, suffix = "°"}
VisualsSecond:AddToggle{text = "Remove Round Lock", flag = "RemoveRoundLock"}
VisualsSecond:AddToggle{text = "No Camera Bob", flag = "NoCameraBob"}
VisualsSecond:AddToggle{text = "No Gun Bob", flag = "NoGunBob"}
VisualsSecond:AddToggle{text = "Remove Gun Scope", flag = "RemoveGunScope"}
VisualsSecond:AddToggle{text = "Anti Suppression", flag = "AntiSuppression"}

-- [Library Settings UI] -----------------------------------------------------------------------------------------------------------------------------------------------------
local SettingsTab = library:AddTab("Settings"); 
local SettingsColumn = SettingsTab:AddColumn(); 
local SettingsColumn2 = SettingsTab:AddColumn(); 
local SettingSection = SettingsColumn:AddSection("Menu"); 
local ConfigSection = SettingsColumn2:AddSection("Configs");
local Warning = library:AddWarning({type = "confirm"});

SettingSection:AddBind({text = "Open / Close", flag = "UI Toggle", nomouse = true, key = "End", callback = function()
    library:Close();
end});

SettingSection:AddColor({text = "Accent Color", flag = "Menu Accent Color", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625), callback = function(color)
    if library.currentTab then
        library.currentTab.button.TextColor3 = color;
    end
    for i,v in pairs(library.theme) do
        v[(v.ClassName == "TextLabel" and "TextColor3") or (v.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = color;
    end
end});

-- [Background List]
local backgroundlist = {
    Floral = "rbxassetid://5553946656",
    Flowers = "rbxassetid://6071575925",
    Circles = "rbxassetid://6071579801",
    Hearts = "rbxassetid://6073763717"
};

-- [Background List]
local back = SettingSection:AddList({text = "Background", max = 4, flag = "background", values = {"Floral", "Flowers", "Circles", "Hearts"}, value = "Floral", callback = function(v)
    if library.main then
        library.main.Image = backgroundlist[v];
    end
end});

-- [Background Color Picker]
back:AddColor({flag = "backgroundcolor", color = Color3.new(), callback = function(color)
    if library.main then
        library.main.ImageColor3 = color;
    end
end, trans = 1, calltrans = function(trans)
    if library.main then
        library.main.ImageTransparency = 1 - trans;
    end
end});

-- [Tile Size Slider]
SettingSection:AddSlider({text = "Tile Size", min = 50, max = 500, value = 50, callback = function(size)
    if library.main then
        library.main.TileSize = UDim2.new(0, size, 0, size);
    end
end});

-- [Discord Button]
SettingSection:AddButton({text = "Discord", callback = function()
end});

-- [Config Box]
ConfigSection:AddBox({text = "Config Name", skipflag = true});

-- [Config List]
ConfigSection:AddList({text = "Configs", skipflag = true, value = "", flag = "Config List", values = library:GetConfigs()});

-- [Create Button]
ConfigSection:AddButton({text = "Create", callback = function()
    library:GetConfigs();
    writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}");
    library.options["Config List"]:AddValue(library.flags["Config Name"]);
end});

-- [Save Button]
ConfigSection:AddButton({text = "Save", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:SaveConfig(library.flags["Config List"]);
    end
end});

-- [Load Button]
ConfigSection:AddButton({text = "Load", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:LoadConfig(library.flags["Config List"]);
    end
end});

-- [Delete Button]
ConfigSection:AddButton({text = "Delete", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to delete config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        local config = library.flags["Config List"];
        if table.find(library:GetConfigs(), config) and isfile(library.foldername .. "/" .. config .. library.fileext) then
            library.options["Config List"]:RemoveValue(config);
            delfile(library.foldername .. "/" .. config .. library.fileext);
        end
    end
end});

-- [Init] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
library:Init();
library:selectTab(library.tabs[1]);
