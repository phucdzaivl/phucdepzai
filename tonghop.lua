local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- [KHỞI TẠO NÚT BẤM NỔI]
local lar1 = Instance.new("ScreenGui")
local lar2 = Instance.new("ImageButton")
local lar3 = Instance.new("UICorner")
lar1.Parent = game.CoreGui
lar1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
lar2.Parent = lar1
lar2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
lar2.Position = UDim2.new(0.1, 0, 0.16, 0)
lar2.Size = UDim2.new(0, 50, 0, 50)
lar2.Draggable = true
lar2.Image = "rbxassetid://89841242357091"
lar3.CornerRadius = UDim.new(1, 0)
lar3.Parent = lar2
lar2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

-- [KHỞI TẠO WINDOW]
local Window = Fluent:CreateWindow({
    Title = "Phucdzai Hub",
    SubTitle = "Tổng Hợp Version 10 Tabs (Clean)",
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
    FixLag = Window:AddTab({ Title = "Fix Lag", Icon = "zap" })
}

Tabs.Main:AddButton({
    Title = "Copy Discord",
    Description = "Hack và anh em Xã Đoàn",
    Callback = function()
        setclipboard("https://discord.gg/At95G4vB")
        Fluent:Notify({ Title = "Hệ thống", Content = "Đã copy link Discord!" })
    end
})

Tabs.BloxFruits:AddButton({
    Title = "Xeter Hub V4",
    Callback = function() 
        getgenv().Version = "V4"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))() 
    end
})
Tabs.BloxFruits:AddButton({
    Title = "Blue X Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end
})
Tabs.BloxFruits:AddButton({
    Title = "Quantum Onyx",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))() end
})

-- 6. TAB FARM CHEST
Tabs.FarmChest:AddButton({
    Title = "Trong Nguyen Farm Chest",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/TN-Tp-Chest.lua"))() end
})

-- 7. TAB HOP SERVER
Tabs.ServerHop:AddButton({
    Title = "Trẩu Roblox Hop",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/hopless.lua"))() end
})

Tabs.ServerVip:AddButton({
    Title = "Anura Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/anuragaming1/Meow_gaming/refs/heads/main/Servervip.lua.txt"))() end
})


Tabs.Utility:AddButton({
    Title = "Fly GUI V3",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))() 
    end
})
Tabs.Utility:AddButton({
    Title = "Vision X",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xSync-gg/VisionX/refs/heads/main/Server_Finder.lua"))() 
    end
})

Tabs.FixLag:AddButton({
    Title = "Turbo Lite (Fix Lag)",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))() end
})

Tabs.Setting:AddParagraph({Title = "Cài đặt", Content = "Tùy chỉnh cấu hình Hub tại đây."})
Tabs.BringMob:AddParagraph({Title = "Thông báo", Content = "Vui lòng chọn script ở tab Blox Fruits để sử dụng tính năng này."})
Tabs.AutoClick:AddParagraph({Title = "Thông báo", Content = "Tính năng này đã được tích hợp sẵn trong các Hub tổng hợp."})

Window:SelectTab(1)
