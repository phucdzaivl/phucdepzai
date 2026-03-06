local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local lar1 = Instance.new("ScreenGui")
local lar2 = Instance.new("ImageButton")
local lar3 = Instance.new("UICorner")
lar1.Parent = game.CoreGui
lar1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
lar2.Parent = lar1
lar2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
lar2.Position = UDim2.new(0.1, 0, 0.16, 0)
lar2.Size = UDim2.new(0, 45, 0, 45)
lar2.Draggable = true
lar2.Image = "rbxassetid://89841242357091"
lar3.CornerRadius = UDim.new(1, 0)
lar3.Parent = lar2
lar2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

local Window = Fluent:CreateWindow({
    Title = "Phucdzai Hub",
    SubTitle = "Tổng Hợp",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})

-- [KHỞI TẠO 10 TABS]
local Tabs = {
    Main = Window:AddTab({ Title = "Thông Tin", Icon = "info" }),
    Setting = Window:AddTab({ Title = "Cài Đặt", Icon = "settings" }),
    BloxFruits = Window:AddTab({ Title = "Blox Fruits", Icon = "swords" }),
    BringMob = Window:AddTab({ Title = "Bring Mob", Icon = "box" }),
    AutoClick = Window:AddTab({ Title = "Auto Click", Icon = "mouse-pointer-2" }),
    FarmChest = Window:AddTab({ Title = "Farm Chest", Icon = "archive" }),
    ServerHop = Window:AddTab({ Title = "Hop Server", Icon = "refresh-cw" }),
    ServerVip = Window:AddTab({ Title = "Server 1 Người", Icon = "user" }),
    Utility = Window:AddTab({ Title = "Linh Tinh", Icon = "component" }),
    FixLag = Window:AddTab({ Title = "Fix Lag/Fly", Icon = "zap" })
}

Tabs.Main:AddButton({
    Title = "Copy Discord",
    Description = "Hack và anh em xã đoàn",
    Callback = function()
        setclipboard("https://discord.gg/At95G4vB")
        Fluent:Notify({ Title = "Hệ thống", Content = "Đã copy link Discord!" })
    end
})

local MainToggle = Tabs.Setting:AddToggle("MainFarm", {Title = "Bật Tất Cả Hỗ Trợ", Default = false})
MainToggle:OnChanged(function() _G.AutoFarm = MainToggle.Value end)

Tabs.BloxFruits:AddButton({
    Title = "Blue X Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end
})
Tabs.BloxFruits:AddButton({
    Title = "Quantum Onyx",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))() end
})

Tabs.BloxFruits:AddButton({
   getgenv().Version = "V4"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))() end
})

Tabs.BringMob:AddParagraph({Title = "Hướng dẫn", Content = "Khi bật 'Hỗ trợ farm' ở tab Cài Đặt, quái sẽ tự gom lại."})

Tabs.AutoClick:AddParagraph({Title = "Trạng thái", Content = "Tự động click chuột trái khi bật Farm."})

Tabs.FarmChest:AddButton({
    Title = "Trong Nguyen Farm Chest",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/TN-Tp-Chest.lua"))() end
})

Tabs.ServerHop:AddButton({
    Title = "Trẩu Roblox Hop",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/hopless.lua"))() end
})

Tabs.ServerVip:AddButton({
    Title = "Anura Hub (Vip Server)",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/anuragaming1/Meow_gaming/refs/heads/main/Servervip.lua.txt"))() end
})

Tabs.Utility:AddButton({
Title = "Fly GUI V3",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})

Tabs.FixLag:AddButton({
    Title = "Turbo Lite (Fix Lag)",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))() end
})

spawn(function()
    while true do
        task.wait()
        if _G.AutoFarm then
            pcall(function()
                -- Click chuột
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                
                for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 500 then
                        v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
                        v.HumanoidRootPart.CanCollide = false
                    end
                end
            end)
        end
    end
end)

Window:SelectTab(1)
