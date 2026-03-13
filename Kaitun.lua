-- ts file was generated at discord.gg/25ms

local genv = getgenv()
local fenv = getfenv()

game:IsLoaded()

genv.Configs = {
    ['FPS Booster'] = false,
    Sword = {
        [1] = 'Dual-Headed Blade',
        [2] = 'Smoke Admiral',
        [3] = 'Wardens Sword',
        [4] = 'Cutlass',
        [5] = 'Katana',
        [6] = 'Dual Katana',
        [7] = 'Triple Katana',
        [8] = 'Iron Mace',
        [9] = 'Saber',
        [10] = 'Pole (1st Form)',
        [11] = 'Gravity Blade',
        [12] = 'Longsword',
        [13] = 'Rengoku',
        [14] = 'Midnight Blade',
        [15] = 'Soul Cane',
        [16] = 'Bisento',
        [17] = 'Yama',
        [18] = 'Tushita',
        [19] = 'Cursed Dual Katana',
    },
    Quest = {
        ['RGB Haki'] = true,
        ['Pull Lerver'] = true,
        ['Evo Race V1'] = true,
        ['Evo Race V2'] = true,
    },
    Gun = {
        [1] = 'Soul Guitar',
        [2] = 'Kabucha',
        [3] = 'Venom Bow',
        [4] = 'Musket',
        [5] = 'Flintlock',
        [6] = 'Refined Slingshot',
        [7] = 'Magma Blaster',
        [8] = 'Dual Flintlock',
        [9] = 'Cannon',
        [10] = 'Bizarre Revolver',
        [11] = 'Bazooka',
    },
}

wait(5)
game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)')
game.Players.LocalPlayer.PlayerGui['Main (minimal)']:FindFirstChild('ChooseTeam')
wait()

local _ = game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)').ChooseTeam.Visible

game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('SetTeam', 'Pirates')

local _ = game.Players.LocalPlayer.Team

game:IsLoaded()
wait(5)
game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)')
game.Players.LocalPlayer.PlayerGui['Main (minimal)']:FindFirstChild('ChooseTeam')
wait()

local _ = game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)').ChooseTeam.Visible

game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('SetTeam', 'Pirates')

local _ = game.Players.LocalPlayer.Team

game:IsLoaded()

local _LocalPlayer68 = game:GetService('Players').LocalPlayer
local _ = game.PlaceId

game:GetService('Workspace'):WaitForChild('Enemies')
game:GetService('TeleportService')

local _call77 = game:GetService('ReplicatedStorage')
local _call79 = _LocalPlayer68:WaitForChild('Data')

_LocalPlayer68:WaitForChild('Data'):WaitForChild('Fragments')
_LocalPlayer68:WaitForChild('Data'):WaitForChild('Beli')
require(_call77.Modules.Net)
game:GetService('Lighting')
game:service('VirtualInputManager')
game:service('VirtualUser')
game:GetService('CoreGui')
task.spawn(function()
    local _ = genv.Configs
    local _ = genv.Configs
end)
wait(2)
task.spawn(function()
    local _ = genv.Configs
end)

local _call111 = game:GetService('CoreGui')
local _call113 = game:GetService('TweenService')

_call111:FindFirstChild('Status_UI')
_call111.Status_UI:Destroy()

local _call120 = Instance.new('ScreenGui')

_call120.Name = 'Status_UI'
_call120.ResetOnSpawn = false
_call120.Parent = _call111

local _call122 = Instance.new('Frame')

_call122.Size = UDim2.new(0, 150, 0, 50)
_call122.Position = UDim2.new(1, -10, 0.5, 0)
_call122.AnchorPoint = Vector2.new(1, 0.5)
_call122.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_call122.BackgroundTransparency = 0.25
_call122.BorderSizePixel = 2
_call122.BorderColor3 = Color3.fromRGB(255, 0, 0)
_call122.Parent = _call120

local _call134 = Instance.new('UICorner')

_call134.CornerRadius = UDim.new(0, 6)
_call134.Parent = _call122

local _call138 = Instance.new('UIStroke')

_call138.Thickness = 2
_call138.Color = Color3.fromRGB(255, 0, 0)
_call138.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call138.Parent = _call122

local _call144 = Instance.new('TextLabel')

_call144.Size = UDim2.new(1, -10, 0.5, 0)
_call144.Position = UDim2.new(0.5, 0, 0, 2)
_call144.AnchorPoint = Vector2.new(0.5, 0)
_call144.BackgroundTransparency = 1
_call144.Text = 'Phucdzai Hub - Kaitun'
_call144.TextColor3 = Color3.fromRGB(255, 0, 0)
_call144.TextSize = 13
_call144.Font = Enum.Font.GothamBold
_call144.TextXAlignment = Enum.TextXAlignment.Center
_call144.TextYAlignment = Enum.TextYAlignment.Center
_call144.Parent = _call122

local _call160 = Instance.new('TextLabel')

_call160.Size = UDim2.new(1, -10, 0.4, 0)
_call160.Position = UDim2.new(0.5, 0, 0.5, 0)
_call160.AnchorPoint = Vector2.new(0.5, 0)
_call160.BackgroundTransparency = 1
_call160.Text = 'Status : N/A'
_call160.TextColor3 = Color3.fromRGB(255, 0, 0)
_call160.TextSize = 12
_call160.Font = Enum.Font.Gotham
_call160.TextXAlignment = Enum.TextXAlignment.Center
_call160.TextYAlignment = Enum.TextYAlignment.Center
_call160.Parent = _call122

local _call176 = Instance.new('Frame')

fenv.L_NEW_FRAME = _call176
_call176.Size = UDim2.new(0, 250, 0, 60)
_call176.Position = UDim2.new(0.5, 0, 0.13, 0)
_call176.AnchorPoint = Vector2.new(0.5, 0.5)
_call176.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_call176.BackgroundTransparency = 0.25
_call176.Parent = _call120

local _call186 = Instance.new('UICorner')

fenv.L_NEW_CORNER = _call186
_call186.CornerRadius = UDim.new(0, 6)
_call186.Parent = _call176

local _call190 = Instance.new('UIStroke')

fenv.L_NEW_STROKE = _call190
_call190.Thickness = 2
_call190.Color = Color3.fromRGB(255, 0, 0)
_call190.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call190.Parent = _call176

local _call196 = Instance.new('TextLabel')

fenv.L_NEW_TEXT = _call196
_call196.Size = UDim2.new(1, 0, 1, 0)
_call196.BackgroundTransparency = 1
_call196.Text = 'TikTok: @phuc_2k13'
_call196.TextColor3 = Color3.fromRGB(255, 0, 0)
_call196.TextSize = 14
_call196.Font = Enum.Font.GothamBold
_call196.Parent = _call176

task.spawn(function()
    task.wait()

    local _call215 = _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call225 = _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call231 = _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call237 = _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call243 = _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call249 = _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call255 = _call113:Create(_call190, TweenInfo.new(1.2), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call261 = _call113:Create(_call196, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })

    _call215:Play()
    _call231:Play()
    _call243:Play()
    _call255:Play()
    _call261:Play()
    _call215.Completed:Wait()
    _call225:Play()
    _call237:Play()
    _call249:Play()
    _call225.Completed:Wait()
    task.wait()

    local _call293 = _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call303 = _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call309 = _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call315 = _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call321 = _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call327 = _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call333 = _call113:Create(_call190, TweenInfo.new(1.2), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call339 = _call113:Create(_call196, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })

    _call293:Play()
    _call309:Play()
    _call321:Play()
    _call333:Play()
    _call339:Play()
    _call293.Completed:Wait()
    _call303:Play()
    _call315:Play()
    _call327:Play()
    _call303.Completed:Wait()
    task.wait()

    local _call371 = _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call381 = _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call387 = _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call393 = _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call399 = _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call405 = _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    local _call411 = _call113:Create(_call190, TweenInfo.new(1.2), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    local _call417 = _call113:Create(_call196, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })

    _call371:Play()
    _call387:Play()
    _call399:Play()
    _call411:Play()
    _call417:Play()
    _call371.Completed:Wait()
    _call381:Play()
    _call393:Play()
    _call405:Play()
    _call381.Completed:Wait()
    task.wait()
    _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    _call113:Create(_call138, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Color = Color3.fromRGB(255, 0, 0),
    })
    _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    _call113:Create(_call144, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    _call113:Create(_call160, TweenInfo.new(1.2), {
        TextColor3 = Color3.fromRGB(255, 0, 0),
    })
    TweenInfo.new(1.2)

    local _ = Color3.fromRGB

    error('internal 557: <25ms: infinitelooperror>')
end)
_LocalPlayer68:WaitForChild('Data'):WaitForChild('Level')

fenv.CheckLevel2 = function()
    local _ = game:GetService('Players').LocalPlayer.Data.Level.Value
    local _ = fenv.Old_World
    local _ = fenv.New_World
    local _ = fenv.Three_World
end
fenv.TPZ = function(_496)
    local _ = (_496.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

    error('line 2065: attempt to compare table < number')
end
fenv.TPBoat = function(_508, _508_2, _508_3, _508_4)
    fenv.Speed = _508_3

    local _call521 = game:GetService('TweenService'):Create(_508_2, TweenInfo.new(((_508.Position - _508_2.Position).Magnitude / _508_3), Enum.EasingStyle.Linear), {CFrame = _508})

    fenv.TweenP = _call521

    _call521:Play()
end

game:GetService('ReplicatedStorage')
game:GetService('Workspace')

local _ = game:GetService('Players').LocalPlayer

task.spawn(function()
    task.wait(0.5)
    error('internal 557: <25ms: infinitelooperror>')
end)

genv['Fast Attack'] = true

task.spawn(function() end)

for _542, _542_2 in pairs(_call77.Remotes.CommF_:InvokeServer('getInventory'))do
    local _ = _542_2.Type
end

local _Notifications545 = game:GetService('Players').LocalPlayer.PlayerGui.Notifications

_Notifications545.Enabled = false

_call77:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/FruitCustomizerRF'):InvokeServer({
    StorageName = 'Pure Red',
    Type = 'AuraSkin',
    Context = 'Equip',
})

fenv.Pure_Red_H = true

_call77:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/FruitCustomizerRF'):InvokeServer({
    StorageName = 'Snow White',
    Type = 'AuraSkin',
    Context = 'Equip',
})

fenv.Snow_White = true

_call77:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/FruitCustomizerRF'):InvokeServer({
    StorageName = 'Snow White',
    Type = 'AuraSkin',
    Context = 'Equip',
})

fenv.Winter_Sky = true

_call77:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/FruitCustomizerRF'):InvokeServer({
    StorageName = 'Rainbow Saviour',
    Type = 'AuraSkin',
    Context = 'Equip',
})

fenv.Rainbow_Saviour = true
_G.Ew = true
fenv.Ewx = true

task.spawn(function() end)
task.spawn(function() end)

genv.AutoFarm = true

_call77.Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)

fenv.CheckFindWaterKey = true

local _ = _call79:WaitForChild('Level').Value

error('line 3853: attempt to compare number <= table')
