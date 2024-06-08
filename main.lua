getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Skibidi Power",
    LoadingTitle = "NOW YOU SIGMA",
    LoadingSubtitle = "by Sirius",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "what", -- Create a custom folder for your hub/game
       FileName = "Skibidi hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image
 local MainSection = Tab:CreateSection("Main")

 local Slider = MainTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {0, 100},
    Increment = 10,
    Suffix = "Skibidi",
    CurrentValue = 16,
    Flag = "Speed1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Local gmt = getrawmetatable(game)
        Local oldIndex = gmt.__index
        setreadonly(gmt, false)

        gmt.__index = newcclosure(function(Self,Key)
            if tostring(Self) == "Humanoid" and tostring(Key) == "WalkSpeed" then
                return
            end
            return oldIndex(Self,Key)
        end)

        while wait() do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "ESP",
    Callback = function()
    local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    hightlight.Name = "Hightlight"

    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Hightlight") then
        local hightlightClone = highlight:Clone()
        hightlightClone.Adornee = v.Character
        hightlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        hightlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        hightlightClone.Name = "Highlight"
        end
    end

    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Hightlight:Destroy()
    end)


    RunService.HeartBeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Hightlight") then
            local hightlightClone = hightlight:Clone()
            hightlightClone.Adornee = v.Character
            hightlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            hightlightClone.DepthMode = Enum.HightlightDepthMode.AlwaysOnTop
            hightlightClone.Name = "Hightlight"
            tast.wait()
        end
    end)
 })
