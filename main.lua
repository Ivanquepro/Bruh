local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "Bebra Hub",
   LoadingTitle = "I monkey",
   LoadingSubtitle = "by arangutang",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "discord.gg/b2tZer5s", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Papuas",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/b2tZer5s)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Admin"
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Speedhack")

local Slider = Tab:CreateSlider({
   Name = "Speedhack",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game:GetService("Workspace").Characters.LocalPlayer.WalkSpeed = 0, 100 --min, max      
   game:GetService("Workspace").Characters.LocalPlayer.Humanoid.WalkSpeed = s
   end,
})
