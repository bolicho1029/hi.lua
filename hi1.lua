local Arrayfield = loadstring(game:HttpGet("https://pastebin.com/raw/iiuX23pg"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
 
local Window = Arrayfield:CreateWindow({
 Name = "Totally Balanced Soul Ops Boss Rush | 11717233041",
 LoadingTitle = "Made by Paolo [Thanks to Nekai for helping Alot!]",
 LoadingSubtitle = "by Scripttale",
 ConfigurationSaving = {
 Enabled = true,
 FolderName = nil, -- Create a custom folder for your hub/game
 FileName = "Big Hub"
   },
 Discord = {
 Enabled = true,
 Invite = "scripttale", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
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
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
loadstring(game:HttpGet("https://pastebin.com/raw/9pRCjvVs"))() --Arrayfield toggler
else 
end
local Tab = Window:CreateTab("Main", 4483362458)
local GoldEarned = Tab:CreateLabel("Coins Earned: ")
local Button = Tab:CreateButton({
   Name = "Insta-Kill Boss",
   Callback = function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
               sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
               for i, v in ipairs(game.Workspace:GetDescendants()) do
                  if v:IsA("Humanoid") and v.Parent:FindFirstChild("NPCTAG") and v.Parent:FindFirstChild("Zombie") then
                     Notification:Notify(
            {
                Title = "Notification",
                Description = "Proceed To kill Boss Named: " .. v.Parent.Name
            },
            {
                OutlineColor = Color3.fromRGB(76, 0, 130),
                Time = 20,
                Type = "default"
            }
        )
                     wait(20)
                     v.Parent:FindFirstChild("Head"):Destroy()
                     v.Parent:FindFirstChild("Torso"):Destroy()
                     v.Health = 0
                     v.MaxHealth = 0
                     
                  end 
               end
       settings().Physics.AllowSleep = false
            settings().Physics.ThrottleAdjustTime = math.huge - math.huge
   end,
})
getgenv().AutofarmMode = nil
local Dropdown = Tab:CreateDropdown({
   Name = "Autofarm Mode",
   Options = {"None","Normal","SkipHorror","SkipInk [Possibly Fastest]"},
   CurrentOption = {"None"},
   MultipleOptions = false,
   Flag = "AutofarmMode", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
getgenv().AutofarmMode = Option
   end,
})
 
local repsosowown
local Toggle = Tab:CreateToggle({
   Name = "Autofarm",
   CurrentValue = false,
   Flag = "Autofarm",
   Callback = function(Value)
      getgenv().Autofarm = Value
      pcall(function()
      if getgenv().Autofarm and getgenv().AutofarmMode ~= "None" then
         repsosowown = game:GetService("RunService").RenderStepped:Connect(function()
          
            if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE:FindFirstChildOfClass("TextLabel").Text == "Wave: 0/0" or game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE:FindFirstChildOfClass("TextLabel").Text == "Wave: 0/68408" then
              if getgenv().AutofarmMode == "Normal" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                
               firetouchinterest(game.Workspace:FindFirstChild("Start"):FindFirstChild("Part"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 0)
               firetouchinterest(game.Workspace:FindFirstChild("Start"):FindFirstChild("Part"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 1)
              elseif getgenv().AutofarmMode == "SkipHorror" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                
             fireclickdetector(game.Workspace:FindFirstChild("Skippy").ClickDetector)
             wait(1)
             firetouchinterest(game.Workspace:FindFirstChild("Start"):FindFirstChild("Part"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 0)
             firetouchinterest(game.Workspace:FindFirstChild("Start"):FindFirstChild("Part"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 1)
              elseif getgenv().AutofarmMode == "SkipInk [Possibly Fastest]" then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                
             fireclickdetector(game.Workspace:FindFirstChild("InkSkip").ClickDetector)
             wait(1)
             firetouchinterest(game.Workspace:FindFirstChild("Start"):FindFirstChild("Part"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 0)
               firetouchinterest(game.Workspace:FindFirstChild("Start"):FindFirstChild("Part"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 1)
              end
           
            elseif not game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
              game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Sans[" "].Head.CFrame
             
            elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE:FindFirstChildOfClass("TextLabel").Text == "Wave: 66/0" then
               fireclickdetector(game.Workspace:FindFirstChild("SoulKiller").ClickDetector)
            else
               sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
               sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
               for i, v in ipairs(game.Workspace:GetChildren()) do
                  if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("NPCTAG") and v:FindFirstChild("Zombie") then
                     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(1, 35,1)
                     task.wait(1)
                     game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                     wait(20)
                     v:FindFirstChildOfClass("Humanoid").Health = 0
                     v:FindFirstChildOfClass("Humanoid").MaxHealth = 0
                     wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                  end
               end
            end
            settings().Physics.AllowSleep = false
            settings().Physics.ThrottleAdjustTime = math.huge - math.huge
         end)
      elseif repsosowown then
         repsosowown:Disconnect()
         game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
         end
      end)
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Spam True Paolo",
   CurrentValue = false,
   Flag = "SpanTurePoalo",
   Callback = function(t)
   if t then
     repeat
       wait(1)
       fireclickdetector(game.Workspace:FindFirstChild("Pablo....").ClickDetector)
       until t == false
     end
   end,
})
local CoinsEan = game.Players.LocalPlayer.leaderstats.Coins.Value
 
while wait(1) do 
  GoldEarned:Set("Coins Earned: " .. game.Players.LocalPlayer.leaderstats.Coins.Value - CoinsEan)
  end
setfpscap(60)
