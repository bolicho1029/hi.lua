local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

-- Основные настройки стиля
local Theme = {
    Background = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(255, 255, 255),
    Hover = Color3.fromRGB(40, 40, 40),
    Active = Color3.fromRGB(60, 60, 60),
    Overlay = Color3.fromRGB(0, 0, 0)
}

-- Создание UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GoodGameG_UI"
ScreenGui.Parent = game.CoreGui -- Помещаем в CoreGui, чтобы избежать удаления при смерти

-- Затемнение фона
local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.BackgroundColor3 = Theme.Overlay
Overlay.BackgroundTransparency = 1
Overlay.BorderSizePixel = 0
Overlay.Parent = ScreenGui

-- Главная панель
local MainPanel = Instance.new("Frame")
MainPanel.Size = UDim2.new(0, 0, 0, 0) -- Начальный размер для анимации
MainPanel.Position = UDim2.new(0.5, 0, 0.5, 0)
MainPanel.AnchorPoint = Vector2.new(0.5, 0.5)
MainPanel.BackgroundColor3 = Theme.Background
MainPanel.BorderSizePixel = 0
MainPanel.ClipsDescendants = true
MainPanel.Parent = Overlay

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = MainPanel

local Stroke = Instance.new("UIStroke")
Stroke.Color = Theme.Accent
Stroke.Thickness = 1
Stroke.Parent = MainPanel

-- Заголовок
local Header = Instance.new("TextLabel")
Header.Text = "goodgameg"
Header.TextColor3 = Theme.Accent
Header.Font = Enum.Font.GothamBold
Header.TextSize = 18
Header.Size = UDim2.new(0, 0, 0, 40)
Header.Position = UDim2.new(0, 15, 0, 10)
Header.BackgroundTransparency = 1
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.Parent = MainPanel

-- Кнопка закрытия
local CloseBtn = Instance.new("TextButton")
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Theme.Accent
CloseBtn.TextSize = 24
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Parent = MainPanel

-- Контейнер для элементов
local Content = Instance.new("ScrollingFrame")
Content.Size = UDim2.new(1, -20, 1, -60)
Content.Position = UDim2.new(0, 10, 0, 50)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ScrollBarThickness = 0
Content.Parent = MainPanel

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0, 5)
Layout.Parent = Content

-- Функция создания кнопки меню
local function CreateButton(text, callback)
    local Btn = Instance.new("TextButton")
    Btn.Text = "  " .. text
    Btn.TextColor3 = Theme.Accent
    Btn.Font = Enum.Font.Gotham
    Btn.TextSize = 14
    Btn.Size = UDim2.new(1, 0, 0, 35)
    Btn.BackgroundColor3 = Theme.Background
    Btn.BackgroundTransparency = 1
    Btn.TextXAlignment = Enum.TextXAlignment.Left
    Btn.BorderSizePixel = 0
    Btn.Parent = Content

    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 6)
    BtnCorner.Parent = Btn

    local ActiveBar = Instance.new("Frame")
    ActiveBar.Size = UDim2.new(0, 3, 1, 0)
    ActiveBar.Position = UDim2.new(0, 0, 0, 0)
    ActiveBar.BackgroundColor3 = Theme.Accent
    ActiveBar.BorderSizePixel = 0
    ActiveBar.Visible = false
    ActiveBar.Parent = Btn

    -- Эффекты наведения
    Btn.MouseEnter:Connect(function()
        TweenService:Create(Btn, TweenInfo.new(0.2), {BackgroundColor3 = Theme.Hover}):Play()
    end)
    Btn.MouseLeave:Connect(function()
        TweenService:Create(Btn, TweenInfo.new(0.2), {BackgroundColor3 = Theme.Background}):Play()
    end)

    Btn.MouseButton1Click:Connect(function()
        ActiveBar.Visible = not ActiveBar.Visible
        callback()
    end)

    return Btn
end

-- ФУНКЦИОНАЛ ЧИТОВ --

local noclip = false
local flying = false

-- Kill All
local function KillAll()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent.Name ~= LocalPlayer.Name then
            v.Health = 0
        end
    end
end

-- Noclip Loop
game:GetService("RunService").Stepped:Connect(function()
    if noclip then
        for _, part in pairs(Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

-- Fly Logic
local function ToggleFly()
    flying = not flying
    local bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    bv.Velocity = Vector3.new(0, 0, 0)
    bv.Parent = Character.HumanoidRootPart
    
    task.spawn(function()
        while flying do
            local moveDir = Vector3.new(0,0,0)
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveDir = moveDir + workspace.CurrentCamera.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveDir = moveDir - workspace.CurrentCamera.CFrame.LookVector end
            bv.Velocity = moveDir * 50
            task.wait()
        end
        bv:Destroy()
    end)
end

-- Наполнение меню
CreateButton("Set Health (Max)", function()
    Character.Humanoid.MaxHealth = 99999
    Character.Humanoid.Health = 99999
end)

CreateButton("Toggle Fly", function()
    ToggleFly()
end)

CreateButton("Toggle Noclip", function()
    noclip = not noclip
end)

CreateButton("Kill All NPCs/Bosses", function()
    KillAll()
end)

-- АНИМАЦИЯ ПОЯВЛЕНИЯ --
local function OpenMenu()
    Overlay.BackgroundTransparency = 1
    MainPanel.Size = UDim2.new(0, 0, 0, 0)
    MainPanel.BackgroundTransparency = 1
    
    TweenService:Create(Overlay, TweenInfo.new(0.5), {BackgroundTransparency = 0.5}):Play()
    TweenService:Create(MainPanel, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
        Size = UDim2.new(0, 300, 0, 400),
        BackgroundTransparency = 0
    }):Play()
end

CloseBtn.MouseButton1Click:Connect(function()
    TweenService:Create(Overlay, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
    TweenService:Create(MainPanel, TweenInfo.new(0.3), {Size = UDim2.new(0, 0, 0, 0)}):Play()
end)

OpenMenu()
