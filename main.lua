local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()
local Window = Rayfield:CreateWindow({
   Name = "Bruh Hub",
   LoadingTitle = "Pls teach me scripting",
   LoadingSubtitle = "by Ivan",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Admin"
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Functions")
local Slider = Tab:CreateSlider({
   Name = "Speedhack",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(s)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
