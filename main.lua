getgenv().LibTheme = {
    MainColor = Color3.fromRGB(35,35,40);
    BrighterMainColor = Color3.fromRGB(40,40,45);
    IconsColor = Color3.fromRGB(100,100,120);
    Accent = Color3.fromRGB(0,100,255);
    DarkText = Color3.fromRGB(170,170,170);
    BrightText = Color3.fromRGB(145,145,145);
    Font = "Gotham";
    SoundVolume = 0.2;
    HideKey = "RightAlt"
}

local Library = loadstring(game:HttpGet("https://github.com/slf0Dev/Ocerium_Project/raw/main/Ocerium%20Special%20ui"))()

local Main = Library.Main("Ocerium")

local Page = Main.Page("Main","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Main")

local Toggle = Section.Component("Toggle","Toggle Name",function(bool)
  
end,false)

local Dropdown = Section.Component("Dropdown","Dropdown Name",table,false,function(string,bool)

end,false)

local Slider = Section.Component("Slider","Speed",0,100,false,function(s)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end,16)

local Button = Section.Component("Button","ESP",function()
