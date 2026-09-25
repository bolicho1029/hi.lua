local Arrayfield = loadstring(game:HttpGet("https://pastebin.com/raw/iiuX23pg"))()
local notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/notiflib/main/main"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
 
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
local servershutdown = Tab:CreateLabel("")
local Button = Tab:CreateButton({
 Name = "Insta-Kill Boss",
 Callback = function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
 sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
               for i, v in ipairs(game.Workspace:GetDescendants()) do
                  if v:IsA("Humanoid") and v.Parent:FindFirstChild("Zombie") then
v:TakeDamage(v.Health)
                  elseif v.Parent:FindFirstChild("invincible") then
 NotifyLib.prompt('Notify', 'Failed.', 2)
                  end 
               end
       settings().Physics.AllowSleep = false
       settings().Physics.ThrottleAdjustTime = math.huge - math.huge
   end,
})
getgenv().AutofarmMode = "Normal"
local Dropdown = Tab:CreateDropdown({
   Name = "Autofarm Mode",
   Options = {"Normal","SkipHorror","SkipInk"},
   CurrentOption = {"Normal"},
   MultipleOptions = false,
   Flag = "AutofarmMode", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
getgenv().AutofarmMode = Option
   end,
})
 
 
function StartGame()
firetouchinterest(game.Workspace:FindFirstChild("Start").Part,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
firetouchinterest(game.Workspace:FindFirstChild("Start").Part,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
end
local autofarmconect
local Toggle = Tab:CreateToggle({
   Name = "Autofarm",
   Info = {
            Title = 'Autofarm',
            Image = '',
            Description = 'Just A Autofarm lol',
        },
   CurrentValue = false,
   Flag = "Autofarm",
   Callback = function(Value)
      _G.Autofarm = Value
     if _G.Autofarm then 
       autofarmconect = game:GetService("RunService").Heartbeat:Connect(function()
       if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Wave Counter").WAVE:FindFirstChildOfClass("TextLabel").Text == "Wave: 0/0" then
              if getgenv().AutofarmMode == "Normal" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                StartGame()
              elseif getgenv().AutofarmMode == "SkipHorror" and game.Workspace:FindFirstChild("Skippy") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
             fireclickdetector(game.Workspace:FindFirstChild("Skippy").ClickDetector)
             wait(1)
             StartGame()
              elseif getgenv().AutofarmMode == "InkSkip" and game.Workspace:FindFirstChild("InkSkip") then 
               fireclickdetector(game.Workspace:FindFirstChild("InkSkip").ClickDetector)
               wait(1)
               StartGame()
               end
              elseif not game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
               if game.Workspace:FindFirstChild("Door") then
               game.Workspace:FindFirstChild("Door"):Remove()
               end
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-2163, 4, -2355)
            elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE:FindFirstChildOfClass("TextLabel").Text == "Wave: 66/0" then
               fireclickdetector(game.Workspace:FindFirstChild("SoulKiller").ClickDetector)
               elseif game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored == true and game.Workspace.Values.Charas.Value <= 0 then 
                  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
               elseif game.Workspace.Values.Charas.Value >= 1 then
                   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
                   sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
                  for i,v in ipairs(game.Workspace:GetChildren()) do
                  if v.Name ~= "REAPERSANS" and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("Zombie") and v:FindFirstChild("NPCTAG") then
                     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + CFrame.new(0,10,6) 
                     game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                     wait(2)
                     v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.huge)
                     elseif game.Workspace:FindFirstChild("AllVial") and game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE:FindFirstChildOfClass("TextLabel").Text == "Wave: 9/0" then 
                     for i,v in ipairs(game.Workspace.AllVial:GetDescendants()) do
                     if v:IsA("Humanoid") then 
                       wait(2)
                       v:TakeDamage(math.huge)
                     end
                  end 
                     end
                  end
                  
                   end
               settings().Physics.AllowSleep = false
            settings().Physics.ThrottleAdjustTime = math.huge - math.huge
end)
 
     elseif autofarmconect then 
       autofarmconect:Disconnect()
       autofarmconect = nil
       game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
   end 
end,
})
        
local Button = Tab:CreateButton({
  Name = "Collect All DustDust Shard",
   Callback = function()
     local DustDustShardName = {
       "P1S",
       "P2S",
       "P3S",
       "P4S",
       "P5S",
       }
       
  if game.Workspace:FindFirstChild("P1S") or game.Workspace:FindFirstChild("P2S") or game.Workspace:FindFirstChild("P3S") or game.Workspace:FindFirstChild("P4S") or game.Workspace:FindFirstChild("P5S") then 
    pcall(function()
    fireclickdetector(game.Workspace[DustDustShardName[1]].ClickDetector)
    fireclickdetector(game.Workspace[DustDustShardName[2]].ClickDetector)
    fireclickdetector(game.Workspace[DustDustShardName[3]].ClickDetector)
    fireclickdetector(game.Workspace[DustDustShardName[4]].ClickDetector)
    fireclickdetector(game.Workspace[DustDustShardName[5]].ClickDetector)
    end)
      else 
        NotifyLib.prompt('Notify', 'No shard found! you probably did collect it all before.', 2)
    end
  end,
  })
 
local Toggle = Tab:CreateToggle({
        Name = "AutoRemove door",
        Info = {
            Title = 'remove door',
            Image = '12735851647',
            Description = "Remove the anoying dor",
        },
        CurrentValue = false,
        Flag = "autoremove door", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.Toggle = Value 
        while _G.Toggle do wait() 
          if Workspace:FindFirstChild("Door") then 
               Workspace:FindFirstChild("Door"):Destroy()
            end
          end 
        end,
    })
  
local CoinsEan = game.Players.LocalPlayer.leaderstats.Coins.Value
while wait() do 
  GoldEarned:Set("Coins Earned: " .. game.Players.LocalPlayer.leaderstats.Coins.Value - CoinsEan)
  servershutdown:Set("ServerShutdownTimer: ".. game.Workspace.Values.ServerTime.Value)
  
end
if game.Workspace.Values.ServerTime.Value <= 10 then 
    NotifyLib.prompt('Notify', 'Server Shutdown. | ServerHopping. . .', 2)
 end
setfpscap(math.huge)
 
--Ac Momento Real 99% 🤯
local gameMetaTable = getrawmetatable(game)
setreadonly(gameMetaTable, false)
local oldNameCall = gameMetaTable.__namecall
gameMetaTable.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" and self.Name == "Exploiter" or self.Name == "AdminPanelHandler" and self.Parent == game.ReplicatedStorage then
        return nil
    end
    return oldNameCall(self, ...)
end)
 
setreadonly(gameMetaTable, true)
