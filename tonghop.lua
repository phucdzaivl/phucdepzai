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
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, Enum.KeyCode.End, false, game)
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

local Tabs = {
    Main = Window:AddTab({ Title = "Thông Tin", Icon = "info" }),
    Scripts = Window:AddTab({ Title = "Blox Fruits", Icon = "code" }),
    Utility = Window:AddTab({ Title = "Cài Đặt", Icon = "settings" }),
    Server = Window:AddTab({ Title = "Server/Hop", Icon = "refresh-cw" })
}

-- Tab Thông Tin
Tabs.Main:AddButton({
    Title = "Copy Discord",
    Description = "Hack và anh em xã đoàn",
    Callback = function()
        setclipboard("https://discord.gg/At95G4vB")
        Fluent:Notify({ Title = "Thành công", Content = "Đã copy link Discord!" })
    end
})

Tabs.Scripts:AddButton({
    Title = "Blue X Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Quantum Onyx",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end
})

local AutoFarmToggle = Tabs.Utility:AddToggle("AutoFarm", {Title = "Bật Hỗ Trợ Farm", Default = false})

AutoFarmToggle:OnChanged(function()
    _G.AutoFarm = AutoFarmToggle.Value
end)

spawn(function()
    while true do
        wait()
        if _G.AutoFarm then
            pcall(function()
                local vu = game:GetService("VirtualUser")
                vu:CaptureController()
                vu:Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                
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

Tabs.Server:AddButton({
    Title = "Server Hop (Trẩu Roblox)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/hopless.lua"))()
    end
})

Window:SelectTab(1)
