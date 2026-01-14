--// DONGQUOCHUY HUB (100% RIÊNG)
--// Author: DongQuocHuy

local LOGO_ID = "rbxassetid://140474437868120"
local HUB_KEY = "dongquochuy2010" -- 🔑 ĐỔI KEY TẠI ĐÂY

-- ===== KEY SYSTEM =====
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local function CreateKeyUI()
    local gui = Instance.new("ScreenGui", Player.PlayerGui)
    gui.Name = "DONGQUOCHUY_KEY"

    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.fromScale(0.3, 0.25)
    frame.Position = UDim2.fromScale(0.35, 0.35)
    frame.BackgroundColor3 = Color3.fromRGB(20,20,25)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0,12)

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1,0,0.25,0)
    title.Text = "🔐 DONGQUOCHUY HUB KEY"
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.GothamBold
    title.TextScaled = true

    local box = Instance.new("TextBox", frame)
    box.PlaceholderText = "Nhập key tại đây"
    box.Size = UDim2.new(0.8,0,0.25,0)
    box.Position = UDim2.new(0.1,0,0.4,0)
    box.Text = ""
    box.TextScaled = true
    box.Font = Enum.Font.Gotham
    box.BackgroundColor3 = Color3.fromRGB(35,35,40)
    box.TextColor3 = Color3.fromRGB(255,255,255)
    Instance.new("UICorner", box).CornerRadius = UDim.new(0,8)

    local btn = Instance.new("TextButton", frame)
    btn.Text = "XÁC NHẬN"
    btn.Size = UDim2.new(0.5,0,0.22,0)
    btn.Position = UDim2.new(0.25,0,0.7,0)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.BackgroundColor3 = Color3.fromRGB(0,120,255)
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)

    btn.MouseButton1Click:Connect(function()
        if box.Text == HUB_KEY then
            gui:Destroy()
            LoadHub()
        else
            btn.Text = "SAI KEY!"
            task.wait(1)
            btn.Text = "XÁC NHẬN"
        end
    end)
end

-- ===== HUB =====
function LoadHub()
    local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

    local Window = Rayfield:CreateWindow({
        Name = "DONGQUOCHUY HUB",
        LoadingTitle = "DONGQUOCHUY HUB",
        LoadingSubtitle = "100% Private Hub",
        Theme = {
            TextColor = Color3.fromRGB(240,240,240),
            Background = Color3.fromRGB(20,20,20),
            Topbar = Color3.fromRGB(15,15,15),
            Shadow = Color3.fromRGB(10,10,10),
            Accent = Color3.fromRGB(0,120,255)
        },
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "DongQuocHuyHub",
            FileName = "Config"
        },
        Discord = { Enabled = false },
        KeySystem = false
    })

    -- MAIN
    local MainTab = Window:CreateTab("🏠 Main", LOGO_ID)
    MainTab:CreateParagraph({
        Title = "DONGQUOCHUY HUB",
        Content = "Hub RIÊNG 100%\nKhông BlueX • Có Key System • UI Dark Blue"
    })

    -- GAMES
    local GameTab = Window:CreateTab("🎮 Games", LOGO_ID)

    GameTab:CreateButton({
        Name = "Blox Fruits",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
        end
    })

    GameTab:CreateButton({
        Name = "Blade Ball",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Blade-Ball/main/BladeBall"))()
        end
    })

    GameTab:CreateButton({
        Name = "Pet Simulator 99",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NotHubScripts/PetSim99/main/Main.lua"))()
        end
    })

    -- PLAYER
    local PlayerTab = Window:CreateTab("👤 Player", LOGO_ID)

    PlayerTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {16,200},
        Increment = 1,
        CurrentValue = 16,
        Callback = function(v)
            local h = Player.Character and Player.Character:FindFirstChild("Humanoid")
            if h then h.WalkSpeed = v end
        end
    })

    PlayerTab:CreateSlider({
        Name = "JumpPower",
        Range = {50,300},
        Increment = 5,
        CurrentValue = 50,
        Callback = function(v)
            local h = Player.Character and Player.Character:FindFirstChild("Humanoid")
            if h then h.JumpPower = v end
        end
    })

    -- SETTINGS
    local SettingsTab = Window:CreateTab("⚙ Settings", LOGO_ID)
    SettingsTab:CreateButton({
        Name = "Destroy Hub",
        Callback = function()
            Rayfield:Destroy()
        end
    })

    Rayfield:Notify({
        Title = "DONGQUOCHUY HUB",
        Content = "Key đúng • Load thành công!",
        Duration = 5
    })
end

CreateKeyUI()
