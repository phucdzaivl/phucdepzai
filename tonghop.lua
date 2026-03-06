local lar1 = Instance.new("ScreenGui")
local lar2 = Instance.new("ImageButton")
local lar3 = Instance.new("UICorner")
lar1.Parent = game.CoreGui
lar1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
lar2.Parent = lar1
lar2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
lar2.BorderSizePixel = 0
lar2.Position = UDim2.new(0.106158, 0, 0.162179, 0)
lar2.Size = UDim2.new(0, 40, 0, 40)
lar2.Draggable = true
lar2.Image = "http://www.roblox.com/asset/?id=89841242357091"
lar3.CornerRadius = UDim.new(1, 10)
lar3.Parent = lar2
local lar4 = lar2.MouseButton1Down:Connect(function()
    local lar5 = game:GetService("VirtualInputManager")
    local lar6 = lar5:SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)
local larrysixseven = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
wait()
local lar7 = game:IsLoaded()
local lar8 = object:CreateWindow({
    TabWidth = 157,
    Size = UDim2.fromOffset(650, 400),
    MinimizeKey = Enum.KeyCode.End,
    SubTitle = "Tổng Hợp",
    Title = "Phucdzai hub",
    Acrylic = true,
    Theme = "Dark"
})
local lar9 = lar8:AddTab({
    Title = "Thông Tin"
})
local lar10 = lar8:AddTab({
    Title = "Setting"
})
local lar11 = lar8:AddTab({
    Title = "Script Blox Fruits"
})
local lar12 = lar8:AddTab({
    Title = "Hop Sever"
})
local lar13 = lar8:AddTab({
    Title = "Hop Sever 1 người"
})
local lar14 = lar8:AddTab({
    Title = "Farm Chest"
})
local lar15 = lar8:AddTab({
    Title = "linh tinh"
})
local lar15 = lar9:AddButton({
    Title = "Discord",
    Callback = function(bI)
        setclipboard("https://discord.gg/zsEbw3BM")
    end,
    Description = "Hack và anh em xã đoàn"
})
local lar16 = lar9:AddButton({
    Title = "Tiktok",
    Callback = function(bI)
        setclipboard("https://www.tiktok.com/@phuc_2k13?lang=en")
    end,
    Description = "HPhúc."
})
local lar10 = lar8:AddTab({
    Title = "Bring mod"
spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 500 then
                        v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
                    end
                end
            end)
        end
    end
end)
})
local lar10 = lar8:AddTab({
    Title = "Auto Click"
spawn(function()
    while wait() do
        if _G.AutoFarm then
            local VirtualUser = game:GetService("VirtualUser")
            VirtualUser:CaptureController()
            VirtualUser:Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end
    end
end)
})
local lar17 = lar10:AddButton({
    Title = "Blue x hub",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end,
    Description = ""
})
local lar18 = lar10:AddButton({
    Title = "Quantum Onyx Hub",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end,
    Description = ""
})
local lar19 = lar10:AddButton({
    Title = "Xeter hub V4",
    Callback = function(bI)
        getgenv().Version = "V4"
        getgenv().Team = "Marines"
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end,
    Description = ""
})
local lar20 = lar11:AddButton({
    Title = "Vision X",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/xSync-gg/VisionX/refs/heads/main/Server_Finder.lua"))()
    end,
    Description = ""
})
local lar22 = lar13:AddButton({
    Title = "Trong Nguyen hub farm chest",
    Callback = function(bI)
        wait()
        local lar21 = game:IsLoaded()
        getgenv().Team = "Marines"
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/TN-Tp-Chest.lua"))()
    end,
    Description = ""
})
local lar23 = lar12:AddButton({
    Title = "Trẩu roblox",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/hopless.lua"))()
    end,
    Description = ""
})
local lar24 = lar12:AddButton({
    Title = "Anura hub",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/anuragaming1/Meow_gaming/refs/heads/main/Servervip.lua.txt"))()
    end,
    Description = ""
})
local lar25 = lar14:AddButton({
    Title = "Turbo lite Fix Lag",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end,
    Description = ""
})
local lar26 = lar14:AddButton({
    Title = "Fly GUI V3",
    Callback = function(bI)
        local larrysixseven = loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end,
    Description = ""
})
