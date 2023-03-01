local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Main", game.Players.LocalPlayer.UserId, "Developer")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Main", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
Section1:Button({
    Title = "Kill All",
    ButtonName = "KILL!!",
    Description = "kills everyone",
    }, function(value)
    print(value)
end)
Section1:Toggle({
    Title = "Auto Farm Coins",
    Description = "Optional Description here",
    Default = false
    }, function(value)
    print(value)
end)
Section1:Slider({
    Title = "Walkspeed",
    Description = "",
    Default = 1,
    Min = 0,
    Max = 100
    }, function(s)
    game:GetService("Workspace").Vlixiz1.Humanoid.WalkSpeed = s
end)
Section1:Keybind({
    Title = "Kill All",
    Description = "",
    Default = Enum.KeyCode.Q,
    }, function(value)
    print(value)
end)
