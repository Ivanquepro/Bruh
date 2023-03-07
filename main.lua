local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Main", game.Players.LocalPlayer.UserId, "Developer")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Main", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
Section1:Button({
    Title = "Wth",
    ButtonName = "Button",
    Description = "Wth",
    }, function(value)
    
end)
Section1:Toggle({
    Title = "Fly",
    Description = "Beta",
    Default = false
    }, function(value)
    
end)
Section1:Slider({
    Title = "Walkspeed",
    Description = "",
    Default = 26,
    Min = 0,
    Max = 200
    }, function(s)
    game:GetService("Workspace").Vlixiz1.Humanoid.WalkSpeed = s
end)
Section1:Keybind({
    Title = "Noclip Beta",
    Description = "Beta noclip",
    Default = Enum.KeyCode.N,
    }, function(value)
end)
Section1:Slider({
    Title = "HipHeight",
    Description = "HipHeight",
    Default = 2,
    Min = 0,
    Max = 100
    }, function(s)
    game:GetService("Workspace").Vlixiz1.Humanoid.HipHeight = s
end)
Section1:Slider({
    Title = "JumpPower",
    Description = "JumpPower",
    Default = 50,
    Min = 0,
    Max = 100
    }, function(s)
    game:GetService("Workspace").Vlixiz1.Humanoid.JumpHeight = s
end)
local Section1 = SubButton1:Section("Beta", "Right")
Section1:Button({
    Title = "Destroy",
    ButtonName = "Button",
    Description = "Wth",
    }, function(value)
    
end)
