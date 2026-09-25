local Arrayfield = загрузочная строка(игра"":HttpGet("https://pastebin.com/raw/iiuX23pg"))()
local NotificationHolder = загрузочная строка("игра:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
 
local Window = Arrayfield:CreateWindow({
 Name = "Полностью сбалансированный босс Soul Ops Раш | 11717233041",
 LoadingTitle = "Сделано Паоло [Спасибо Некаи за большую помощь!]",
 LoadingSubtitle = "по сценарию",
 Сохранение конфигурации = {
 Включено = true,
 FolderName = nil, -- Создайте пользовательскую папку для вашего хаба / игры
 Имя файла = "Big Hub"
   },
 Discord = {
 Включено = true,
 Пригласить = "scripttale", - Код приглашения в Discord, не включать discord.gg /. Например. discord.gg/ABCD было бы ABCD
 RememberJoins = true  - Установите для этого значение false, чтобы они присоединялись к discord каждый раз, когда они его загружают
   },
 KeySystem = false,  - Установите значение true, чтобы использовать нашу систему ключей
 Настройки клавиш = {
      Title = "Untitled",
 Подзаголовок = "Система ключей",
 Примечание = "Способ получения ключа не предусмотрен",
 FileName = "Key", - Рекомендуется использовать что-то уникальное, поскольку другие скрипты, использующие Rayfield, могут перезаписать ваш ключевой файл
 SaveKey = true, - Ключ пользователя будет сохранен, но если вы измените ключ, они не смогут использовать ваш скрипт
 GrabKeyFromSite = false, -- Если это верно, задайте приведенный ниже ключ для необработанного сайта, с которого Rayfield должен получить ключ
 Key = {"Hello"} -- Список ключей, которые будут приняты системой, может представлять собой необработанные ссылки на файлы (pastebin, github и т.д.) Или простые строки ("hello", "key22")
   }
})
если игра.Игроки.Локальный игрок.Игровой интерфейс:Найди первого ребенка("TouchGui") тогда
(загрузочнаяигра:HttpGet("https://pastebin.com/raw/9pRCjvVs"))() --Переключатель Arrayfield
ещё 
конец
локальная вкладка = Окно"":CreateTab("Главная", 4483362458)
local GoldEarned = Вкладка " ":Метка создания("Заработанные монеты: ")
локальная кнопка = Вкладка:createButton({
 Name = "Мгновенное убийство босса",
 Обратный вызов = функция()
sethiddenproperty(игра.Игроки.Локальный проигрыватель, "SimulationRadius", 69696969)
 sethiddenproperty(игра.Игроки.LocalPlayer, "MaxSimulationRadius", математика.огромная)
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
 v.Parent:FindFirstChild("Голова"):Destroy()
 v.Parent:FindFirstChild("Торс"):Destroy()
 v.Health = 0
 v.MaxHealth = 0
                     
                  конец 
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
 повторное включение:Отключить()
 Игра.Игроки.Локальный игрок.Персонаж.HumanoidRootPart.Закрепленный = false
         конец
      конец)
   конец,
})
локальный переключатель = Вкладка:CreateToggle({
 Name = "Спам True Paolo",
 Текущее значение = false,
 Флаг = "SpanTurePoalo",
 Обратный вызов = функция(t)
   если t, то
     повторить
 подождать(1)
 детектор фейерверков(игра.Рабочее пространство:FindFirstChild("Пабло").ClickDetector)
       пока t == false
     конец
   конец,
})
local CoinsEan = игра.Игроки.Локальный игрок.статистика лидеров.Монеты.Стоимость
 
пока ждите(1) делайте 
 Получено золото:Набор("Заработанные монеты" .. игра.Игроки.Локальный игрок.статистика лидеров.Монеты.Значение - CoinsEan)
  конец
setfpscap(60)
