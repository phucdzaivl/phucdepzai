repeat task.wait() until game:IsLoaded()

local start = tick()
repeat 
    task.wait(0.5) 
until game.Players.LocalPlayer.Character or tick() - start > 10 

if not game.Players.LocalPlayer.Character then
    return
end

local Player = game.Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerGui = Player:WaitForChild("PlayerGui", 5)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

getgenv().AutoFarm = false
getgenv().FarmMode = "Level Farm"
getgenv().SelectWeapon = "Melee"
getgenv().BringMob = true
getgenv().AutoHakiBuso = true
getgenv().FastAttackSpeed = 0.08
getgenv().WalkOnWater = true
getgenv().AutoBuyGeppo = false
getgenv().AutoBuyBuso = false
getgenv().AutoBuySoru = false
getgenv().AutoBuyObservation = false
getgenv().AutoRandomFruit = false
getgenv().AutoRaceV3 = false
getgenv().AutoRaceV4 = false
getgenv().RandomFruitInterval = 30

_G.SelectIsland = nil
_G.TeleportIsland = false
_G.SelectedPortal = nil

local shouldTween = false
local FARM_HOVER_CLEARANCE = 20
local mainLoopRunning = false
local activeTween = nil
local activeTweenTarget = nil
local originalCollision = setmetatable({}, {__mode = "k"})

local function setCharacterNoClip(enabled)
    local char = Player.Character
    if not char then return end

    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            if enabled then
                if originalCollision[part] == nil then
                    originalCollision[part] = part.CanCollide
                end
                part.CanCollide = false
            elseif originalCollision[part] ~= nil then
                part.CanCollide = originalCollision[part]
                originalCollision[part] = nil
            end
        end
    end
end

getgenv().OnFarm = false
getgenv().FarmHeight = FARM_HOVER_CLEARANCE
_G.FarmHeightValue = FARM_HOVER_CLEARANCE
_G.ToggleKeybind = true

local lastMonster = nil
local FarmPos = nil
local MonFarm = nil
local StartBring = false

-- ========================================
-- CONFIG SAVE / LOAD
-- ========================================

local function SaveConfig()
    local config = {
        AutoFarm = getgenv().AutoFarm,
        FarmMode = getgenv().FarmMode,
        BringMob = getgenv().BringMob,
        AutoHakiBuso = getgenv().AutoHakiBuso,
        SelectWeapon = getgenv().SelectWeapon,
        FarmHeight = _G.FarmHeightValue or 20,
        ToggleKeybind = _G.ToggleKeybind,
        AutoRandomFruit = getgenv().AutoRandomFruit,
        AutoRaceV3 = getgenv().AutoRaceV3,
        AutoRaceV4 = getgenv().AutoRaceV4,
        RandomFruitInterval = getgenv().RandomFruitInterval,
        WalkOnWater = getgenv().WalkOnWater,
        AutoBuyGeppo = getgenv().AutoBuyGeppo,
        AutoBuyBuso = getgenv().AutoBuyBuso,
        AutoBuySoru = getgenv().AutoBuySoru,
        AutoBuyObservation = getgenv().AutoBuyObservation
    }
    pcall(function()
        if writefile then
            writefile("BF_Config.json", game:GetService("HttpService"):JSONEncode(config))
        end
    end)
end

local function LoadConfig()
    pcall(function()
        if readfile and isfile and isfile("BF_Config.json") then
            local config = game:GetService("HttpService"):JSONDecode(readfile("BF_Config.json"))
            if config.AutoFarm ~= nil then getgenv().AutoFarm = config.AutoFarm end
            if config.FarmMode ~= nil then getgenv().FarmMode = config.FarmMode end
            if config.BringMob ~= nil then getgenv().BringMob = config.BringMob end
            if config.AutoHakiBuso ~= nil then getgenv().AutoHakiBuso = config.AutoHakiBuso end
            if config.SelectWeapon ~= nil then getgenv().SelectWeapon = config.SelectWeapon end
            if config.FarmHeight ~= nil then
                _G.FarmHeightValue = config.FarmHeight
                getgenv().FarmHeight = config.FarmHeight
                FARM_HOVER_CLEARANCE = config.FarmHeight
            end
            if config.ToggleKeybind ~= nil then _G.ToggleKeybind = config.ToggleKeybind end
            if config.AutoRandomFruit ~= nil then getgenv().AutoRandomFruit = config.AutoRandomFruit end
            if config.AutoRaceV3 ~= nil then getgenv().AutoRaceV3 = config.AutoRaceV3 end
            if config.AutoRaceV4 ~= nil then getgenv().AutoRaceV4 = config.AutoRaceV4 end
            if config.RandomFruitInterval ~= nil then getgenv().RandomFruitInterval = config.RandomFruitInterval end
            if config.WalkOnWater ~= nil then getgenv().WalkOnWater = config.WalkOnWater end
            if config.AutoBuyGeppo ~= nil then getgenv().AutoBuyGeppo = config.AutoBuyGeppo end
            if config.AutoBuyBuso ~= nil then getgenv().AutoBuyBuso = config.AutoBuyBuso end
            if config.AutoBuySoru ~= nil then getgenv().AutoBuySoru = config.AutoBuySoru end
            if config.AutoBuyObservation ~= nil then getgenv().AutoBuyObservation = config.AutoBuyObservation end
        end
    end)
end

LoadConfig()

if getgenv().FarmMode ~= "Level Farm" and getgenv().FarmMode ~= "Aura Farm" then
    getgenv().FarmMode = "Level Farm"
end

local function getCommF()
    local remotes = ReplicatedStorage:FindFirstChild("Remotes")
    return remotes and remotes:FindFirstChild("CommF_")
end

local function invokeCommF(...)
    local remote = getCommF()
    if not remote then
        return false, "CommF_ chưa tải"
    end

    local args = table.pack(...)
    local ok, result = pcall(function()
        return remote:InvokeServer(table.unpack(args, 1, args.n))
    end)
    return ok, result
end

local function isBloxFruitReady()
    return getCommF() ~= nil
end

local World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
local World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
local World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089

local VirtualUser = game:GetService("VirtualUser")

if Player.Idled then
    Player.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end

pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Dev-AnhTuansitink/Module/refs/heads/main/EzFastAttack.lua'))()
end)

pcall(function()
    local oldDelay
    oldDelay = hookfunction(task.delay, function(t, f, ...)
        local success, info = pcall(debug.info, 2, "s")
        if success and info and type(info) == "string" then
            if t > 0.1 and (string.find(info, "FastAttack") or string.find(info, "AutoFarm")) then
                return oldDelay(0, f, ...)
            end
        end
        return oldDelay(t, f, ...)
    end)
end)

local Mon = nil
local LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon

-- ========================================
-- HÀM CHECK QUEST
-- ========================================

function CheckQuest()
    Mon = nil
    pcall(function()
        if not Player:FindFirstChild("Data") or not Player.Data:FindFirstChild("Level") then
            return
        end

        local MyLevel = Player.Data.Level.Value

        local currentWorld = nil
        if World1 then
            currentWorld = 1
        elseif World2 then
            currentWorld = 2
        elseif World3 then
            currentWorld = 3
        end
        
        if not currentWorld then return end

        if currentWorld == 1 then
            if MyLevel >= 1 and MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231)
                CFrameMon = CFrame.new(1045.9626, 27.0025, 1560.8203)
            elseif MyLevel >= 10 and MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838)
                CFrameMon = CFrame.new(-1448.518, 67.853, 11.465)
            elseif MyLevel >= 15 and MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838)
                CFrameMon = CFrame.new(-1129.883, 40.463, -525.423)
            elseif MyLevel >= 30 and MyLevel <= 39 then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
                CFrameMon = CFrame.new(-1103.513, 13.752, 3896.091)
            elseif MyLevel >= 40 and MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
                CFrameMon = CFrame.new(-1140.083, 14.809, 4322.921)
            elseif MyLevel >= 60 and MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359)
                CFrameMon = CFrame.new(924.799, 6.448, 4481.585)
            elseif MyLevel >= 75 and MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359)
                CFrameMon = CFrame.new(1608.282, 8.614, 4371.007)
            elseif MyLevel >= 90 and MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796)
                CFrameMon = CFrame.new(1354.347, 87.272, -1393.946)
            elseif MyLevel >= 100 and MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796)
                CFrameMon = CFrame.new(1201.641, 144.579, -1550.067)
            elseif MyLevel >= 120 and MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018)
                CFrameMon = CFrame.new(-4881.230, 22.652, 4273.752)
            elseif MyLevel >= 150 and MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165)
                CFrameMon = CFrame.new(-4953.207, 295.744, -2899.229)
            elseif MyLevel >= 175 and MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165)
                CFrameMon = CFrame.new(-5259.844, 391.397, -2229.035)
            elseif MyLevel >= 190 and MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514)
                CFrameMon = CFrame.new(5098.973, -0.320, 474.237)
            elseif MyLevel >= 210 and MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514)
                CFrameMon = CFrame.new(5654.563, 15.633, 866.299)
            elseif MyLevel >= 250 and MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
                CFrameMon = CFrame.new(-1820.214, 51.683, -2740.665)
            elseif MyLevel >= 275 and MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
                CFrameMon = CFrame.new(-1292.838, 56.380, -3339.031)
            elseif MyLevel >= 300 and MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
                CFrameMon = CFrame.new(-5411.164, 11.081, 8454.292)
            elseif MyLevel >= 325 and MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
                CFrameMon = CFrame.new(-5802.868, 86.262, 8828.859)
            elseif MyLevel >= 375 and MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.300, 18.482, 1543.757)
            elseif MyLevel >= 400 and MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.632, 18.482, 1493.934)
            elseif MyLevel >= 450 and MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643)
                CFrameMon = CFrame.new(-4710.042, 845.276, -1927.307)
            elseif MyLevel >= 475 and MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196)
                CFrameMon = CFrame.new(-7678.489, 5566.403, -497.215)
            elseif MyLevel >= 525 and MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
                CFrameMon = CFrame.new(-7624.252, 5658.133, -1467.354)
            elseif MyLevel >= 550 and MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
                CFrameMon = CFrame.new(-7836.753, 5645.664, -1790.623)
            elseif MyLevel >= 625 and MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293)
                CFrameMon = CFrame.new(5551.021, 78.901, 3930.412)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293)
                CFrameMon = CFrame.new(5441.951, 42.502, 4950.093)
            end
        elseif currentWorld == 2 then
            if MyLevel >= 700 and MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188)
                CFrameMon = CFrame.new(-728.326, 52.779, 2345.770)
            elseif MyLevel >= 725 and MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188)
                CFrameMon = CFrame.new(-1004.324, 80.158, 1424.619)
            elseif MyLevel >= 775 and MyLevel <= 799 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898)
                CFrameMon = CFrame.new(1068.664, 137.614, 1322.106)
            elseif MyLevel >= 800 and MyLevel <= 874 then
                Mon = "Factory Staff"
                LevelQuest = 2
                NameQuest = "Area2Quest"
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321)
                CFrameMon = CFrame.new(73.078, 81.863, -27.470)
            elseif MyLevel >= 875 and MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
                CFrameMon = CFrame.new(-2821.372, 75.897, -3070.089)
            elseif MyLevel >= 900 and MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
                CFrameMon = CFrame.new(-1861.231, 80.176, -3254.697)
            elseif MyLevel >= 950 and MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061)
                CFrameMon = CFrame.new(-5657.776, 78.969, -928.687)
            elseif MyLevel >= 975 and MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061)
                CFrameMon = CFrame.new(-6037.667, 32.184, -1340.659)
            elseif MyLevel >= 1000 and MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928)
                CFrameMon = CFrame.new(549.147, 427.387, -5563.698)
            elseif MyLevel >= 1050 and MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928)
                CFrameMon = CFrame.new(1142.745, 475.639, -5199.416)
            elseif MyLevel >= 1100 and MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
                CFrameMon = CFrame.new(-5707.471, 15.951, -4513.392)
            elseif MyLevel >= 1125 and MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
                CFrameMon = CFrame.new(-6341.366, 15.951, -5723.162)
            elseif MyLevel >= 1175 and MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
                CFrameMon = CFrame.new(-5449.672, 76.658, -5808.200)
            elseif MyLevel >= 1200 and MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
                CFrameMon = CFrame.new(-5213.331, 49.737, -4701.451)
            elseif MyLevel >= 1250 and MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
                CFrameMon = CFrame.new(1212.011, 150.792, 33059.246)
            elseif MyLevel >= 1275 and MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
                CFrameMon = CFrame.new(919.478, 43.544, 32779.968)
            elseif MyLevel >= 1300 and MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(919.438, 129.555, 33436.035)
            elseif MyLevel >= 1325 and MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.017, 181.439, 33315.726)
            elseif MyLevel >= 1350 and MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984)
                CFrameMon = CFrame.new(5966.246, 62.970, -6179.382)
            elseif MyLevel >= 1375 and MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984)
                CFrameMon = CFrame.new(5407.073, 69.194, -6880.880)
            elseif MyLevel >= 1425 and MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193)
                CFrameMon = CFrame.new(-3028.223, 64.674, -9775.426)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054, 240, -10146)
                CFrameMon = CFrame.new(-3291, 252, -10501)
            end
        elseif currentWorld == 3 then
            if MyLevel >= 1500 and MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
                CFrameMon = CFrame.new(-245.996, 47.306, 5584.100)
            elseif MyLevel >= 1525 and MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
                CFrameMon = CFrame.new(-187.330, 86.239, 6013.513)
            elseif MyLevel >= 1575 and MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "DragonCrewQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
                CFrameMon = CFrame.new(6920.714, 56.155, -942.504)
            elseif MyLevel >= 1600 and MyLevel <= 1624 then
                Mon = "Dragon Crew Archer"
                LevelQuest = 2
                NameQuest = "DragonCrewQuest"
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
                CFrameMon = CFrame.new(6817.912, 484.804, 513.414)
            elseif MyLevel >= 1625 and MyLevel <= 1649 then
                Mon = "Hydra Enforcer"
                LevelQuest = 1
                NameQuest = "VenomCrewQuest"
                NameMon = "Hydra Enforcer"
                CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
                CFrameMon = CFrame.new(4584.692, 1002.643, 705.795)
            elseif MyLevel >= 1650 and MyLevel <= 1699 then
                Mon = "Venomous Assailant"
                LevelQuest = 2
                NameQuest = "VenomCrewQuest"
                NameMon = "Venomous Assailant"
                CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
                CFrameMon = CFrame.new(4638.785, 1078.940, 881.800)
            elseif MyLevel >= 1700 and MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
                CFrameMon = CFrame.new(2286.007, 73.133, -7159.809)
            elseif MyLevel >= 1725 and MyLevel <= 1774 then
                Mon = "Marine Rear Admiral"
                LevelQuest = 2
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Rear Admiral"
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773, 160.524, -7001.598)
            elseif MyLevel >= 1775 and MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
                CFrameMon = CFrame.new(-10407.526, 331.762, -8368.516)
            elseif MyLevel >= 1800 and MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
                CFrameMon = CFrame.new(-10994.701, 352.381, -9002.110)
            elseif MyLevel >= 1825 and MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
                CFrameMon = CFrame.new(-13274.478, 332.378, -7769.580)
            elseif MyLevel >= 1850 and MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
                CFrameMon = CFrame.new(-13680.607, 501.081, -6991.189)
            elseif MyLevel >= 1900 and MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
                CFrameMon = CFrame.new(-12256.160, 331.738, -10485.836)
            elseif MyLevel >= 1925 and MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
                CFrameMon = CFrame.new(-13457.904, 391.545, -9859.177)
            elseif MyLevel >= 1975 and MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277)
                CFrameMon = CFrame.new(-8763.723, 165.722, 6159.861)
            elseif MyLevel >= 2000 and MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277)
                CFrameMon = CFrame.new(-10144.131, 138.626, 5838.088)
            elseif MyLevel >= 2025 and MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533)
                CFrameMon = CFrame.new(-9505.872, 172.104, 6158.993)
            elseif MyLevel >= 2050 and MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533)
                CFrameMon = CFrame.new(-9582.022, 6.251, 6205.478)
            elseif MyLevel >= 2075 and MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875)
                CFrameMon = CFrame.new(-2143.241, 47.721, -10029.995)
            elseif MyLevel >= 2100 and MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875)
                CFrameMon = CFrame.new(-1859.354, 38.103, -10422.429)
            elseif MyLevel >= 2125 and MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438)
                CFrameMon = CFrame.new(-872.246, 65.819, -10919.957)
            elseif MyLevel >= 2150 and MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438)
                CFrameMon = CFrame.new(-558.061, 112.048, -11290.774)
            elseif MyLevel >= 2200 and MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295)
                CFrameMon = CFrame.new(-2374.136, 37.798, -12125.308)
            elseif MyLevel >= 2225 and MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295)
                CFrameMon = CFrame.new(-1598.307, 43.773, -12244.581)
            elseif MyLevel >= 2250 and MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391)
                CFrameMon = CFrame.new(-1887.809, 77.618, -12998.350)
            elseif MyLevel >= 2275 and MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391)
                CFrameMon = CFrame.new(-2216.188, 82.884, -12869.293)
            elseif MyLevel >= 2300 and MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.553, 80.574, -12352.387)
            elseif MyLevel >= 2325 and MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590, 77.188, -12463.162)
            elseif MyLevel >= 2350 and MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161011742, -12774.5029296875)
                CFrameMon = CFrame.new(165.188, 76.058, -12600.836)
            elseif MyLevel >= 2375 and MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161011742, -12774.5029296875)
                CFrameMon = CFrame.new(134.865, 77.247, -12876.547)
            elseif MyLevel >= 2400 and MyLevel <= 2424 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.500, 26.016, -14562.404)
            elseif MyLevel >= 2425 and MyLevel <= 2449 then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.200, 71.247, -14538.609)
            elseif MyLevel >= 2450 and MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814, 116.138, -264.463)
            elseif MyLevel >= 2475 and MyLevel <= 2524 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.261, 84.067, -192.889)
            elseif MyLevel >= 2525 and MyLevel <= 2549 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16641.679, 235.782, 1031.282)
            elseif MyLevel >= 2550 and MyLevel <= 2574 then
                Mon = "Serpent Hunter"
                LevelQuest = 1
                NameQuest = "TikiQuest3"
                NameMon = "Serpent Hunter"
                CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434)
                CFrameMon = CFrame.new(-16521.062, 106.092, 1488.784)
            elseif MyLevel >= 2575 and MyLevel <= 2599 then
                Mon = "Skull Slayer"
                LevelQuest = 2
                NameQuest = "TikiQuest3"
                NameMon = "Skull Slayer"
                CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434)
                CFrameMon = CFrame.new(-16887.730, 113.074, 1629.977)
            elseif MyLevel >= 2600 and MyLevel <= 2624 then
                Mon = "Reef Bandit"
                LevelQuest = 1
                NameQuest = "SubmergedQuest1"
                NameMon = "Reef Bandits"
                CFrameQuest = CFrame.new(10778.875, -2087.72437, 9265.18359)
                CFrameMon = CFrame.new(11019.131, -2146.068, 9342.391)
            elseif MyLevel >= 2625 and MyLevel <= 2649 then
                Mon = "Coral Pirate"
                LevelQuest = 2
                NameQuest = "SubmergedQuest1"
                NameMon = "Coral Pirates"
                CFrameQuest = CFrame.new(10778.875, -2087.72437, 9265.18359)
                CFrameMon = CFrame.new(10808.600, -2030.361, 9364.233)
            elseif MyLevel >= 2650 and MyLevel <= 2674 then
                Mon = "Sea Chanter"
                LevelQuest = 1
                NameQuest = "SubmergedQuest2"
                NameMon = "Sea Chanters"
                CFrameQuest = CFrame.new(10880.6855, -2086.20044, 10032.624)
                CFrameMon = CFrame.new(10671.271, -2057.591, 10047.258)
            elseif MyLevel >= 2675 and MyLevel <= 2699 then
                Mon = "Ocean Prophet"
                LevelQuest = 2
                NameQuest = "SubmergedQuest2"
                NameMon = "Ocean Prophets"
                CFrameQuest = CFrame.new(10880.6855, -2086.20044, 10032.624)
                CFrameMon = CFrame.new(11008.519, -2007.728, 10223.079)
            elseif MyLevel >= 2700 and MyLevel <= 2724 then
                Mon = "High Disciple"
                LevelQuest = 1
                NameQuest = "SubmergedQuest3"
                NameMon = "High Disciple"
                CFrameQuest = CFrame.new(9640.08789, -1992.44507, 9613.65234)
                CFrameMon = CFrame.new(9750.416, -1966.938, 9753.360)
            elseif MyLevel >= 2725 then
                Mon = "Grand Devotee"
                LevelQuest = 2
                NameQuest = "SubmergedQuest3"
                NameMon = "Grand Devotee"
                CFrameQuest = CFrame.new(9640.08789, -1992.44507, 9613.65234)
                CFrameMon = CFrame.new(9611.705, -1993.471, 9882.688)
            end
        end
    end)
end

-- ========================================
-- HÀM DI CHUYỂN VÀ TWEEN
-- ========================================

function topos(aL)
    return _tp(aL)
end

function _tp(target)
    local gg = typeof(target) == "Vector3" and CFrame.new(target)
        or typeof(target) == "CFrame" and target
        or target and target.CFrame
    if not gg then return nil end

    local char = Player.Character
    local rootPart = char and char:FindFirstChild("HumanoidRootPart")
    if not rootPart then return nil end

    if activeTween and activeTween.PlaybackState == Enum.PlaybackState.Playing and activeTweenTarget and (activeTweenTarget.Position - gg.Position).Magnitude < 1 then
        return activeTween
    end

    if activeTween then
        pcall(function() activeTween:Cancel() end)
    end

    setCharacterNoClip(true)

    rootPart.Anchored = true
    local distance = (gg.Position - rootPart.Position).Magnitude
    local duration = math.max(distance / 300, 0.05)
    local thisTween = TweenService:Create(rootPart, TweenInfo.new(duration, Enum.EasingStyle.Linear), {CFrame = gg})

    activeTween = thisTween
    activeTweenTarget = gg
    shouldTween = true
    getgenv().OnFarm = true
    thisTween:Play()

    task.spawn(function()
        while activeTween == thisTween and thisTween.PlaybackState == Enum.PlaybackState.Playing do
            if not shouldTween then
                pcall(function() thisTween:Cancel() end)
                break
            end
            task.wait(0.05)
        end

        if activeTween == thisTween then
            activeTween = nil
            activeTweenTarget = nil
            if rootPart.Parent then
                rootPart.Anchored = false
            end
            getgenv().OnFarm = false
        end
    end)

    return thisTween
end

local function stopTweenMovement()
    shouldTween = false
    if activeTween then
        pcall(function() activeTween:Cancel() end)
        activeTween = nil
        activeTweenTarget = nil
    end

    local root = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    if root then
        root.Anchored = false
        root.AssemblyLinearVelocity = Vector3.zero
    end
    getgenv().OnFarm = false
end

function notween(cf)
    stopTweenMovement()
    local c = Player.Character
    if c and c:FindFirstChild("HumanoidRootPart") then
        c.HumanoidRootPart.CFrame = cf
    end
end

function EquipWeapon(text)
    if not text then return nil end

    local char = Player.Character
    local humanoid = char and char:FindFirstChildOfClass("Humanoid")
    if not char or not humanoid then return nil end

    local equipped = char:FindFirstChild(text)
    if equipped and equipped:IsA("Tool") then
        return equipped
    end

    local tool = Player.Backpack:FindFirstChild(text)
    if tool and tool:IsA("Tool") then
        humanoid:EquipTool(tool)
        return tool
    end

    return nil
end

function SelectWeapon()
    if not getgenv().AutoFarm then return nil end

    local weaponType = getgenv().SelectWeapon or "Melee"
    local char = Player.Character
    if not char then return nil end

    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == weaponType then
            return tool
        end
    end

    for _, tool in ipairs(Player.Backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == weaponType then
            return EquipWeapon(tool.Name)
        end
    end

    return nil
end

local attackConnection = nil
local attackTarget = nil
local attackBodyPosition = nil
local attackBodyGyro = nil
local lastToolActivate = 0

local function stopAttackMovement()
    if attackConnection then
        pcall(function() attackConnection:Disconnect() end)
        attackConnection = nil
    end
    if attackBodyPosition then
        pcall(function() attackBodyPosition:Destroy() end)
        attackBodyPosition = nil
    end
    if attackBodyGyro then
        pcall(function() attackBodyGyro:Destroy() end)
        attackBodyGyro = nil
    end
    attackTarget = nil
end

local function cleanMobName(name)
    name = tostring(name or "")
    name = name:gsub("%s*%[Lv%.?%s*%d+%]%s*$", "")
    return name
end

local function mobNameMatches(actualName, wantedName)
    actualName = cleanMobName(actualName)
    wantedName = cleanMobName(wantedName)
    return actualName == wantedName
        or string.find(actualName, wantedName, 1, true) ~= nil
        or string.find(wantedName, actualName, 1, true) ~= nil
end

local function getAliveEnemyClosestTo(position, wantedName)
    local enemies = Workspace:FindFirstChild("Enemies")
    if not enemies then return nil end

    local best, bestDistance = nil, math.huge
    for _, enemy in ipairs(enemies:GetChildren()) do
        local hum = enemy:FindFirstChildOfClass("Humanoid")
        local root = enemy:FindFirstChild("HumanoidRootPart")
        if enemy:IsA("Model") and hum and root and hum.Health > 0 then
            if not wantedName or mobNameMatches(enemy.Name, wantedName) then
                local distance = (root.Position - position).Magnitude
                if distance < bestDistance then
                    best = enemy
                    bestDistance = distance
                end
            end
        end
    end
    return best, bestDistance
end

local function activateSelectedTool()
    local tool = SelectWeapon()
    if not tool then return end

    local delayTime = tonumber(getgenv().FastAttackSpeed) or 0.08
    delayTime = math.clamp(delayTime, 0.05, 1)
    if tick() - lastToolActivate >= delayTime then
        lastToolActivate = tick()
        pcall(function() tool:Activate() end)
    end
end

function AttackMonster(monster)
    if not monster or not monster.Parent or not getgenv().AutoFarm then return end

    local mHum = monster:FindFirstChildOfClass("Humanoid")
    local mRoot = monster:FindFirstChild("HumanoidRootPart")
    local char = Player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not mHum or mHum.Health <= 0 or not mRoot or not hrp then return end

    local farmH = tonumber(_G.FarmHeightValue or getgenv().FarmHeight or FARM_HOVER_CLEARANCE) or 20
    local desired = mRoot.CFrame + Vector3.new(0, farmH, 0)
    local distance = (hrp.Position - desired.Position).Magnitude

    if distance > 180 then
        isAuraMoving = true
        stopAttackMovement()
        local tween = topos(desired)
        if tween then
            tween.Completed:Connect(function()
                isAuraMoving = false
            end)
        else
            isAuraMoving = false
        end
        return
    end

    if attackTarget == monster and attackConnection then
        return
    end

    stopAttackMovement()
    stopTweenMovement()
    setCharacterNoClip(true)
    hrp.Anchored = false
    attackTarget = monster

    attackBodyPosition = Instance.new("BodyPosition")
    attackBodyPosition.Name = "FarmBodyPosition"
    attackBodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    attackBodyPosition.D = 1200
    attackBodyPosition.P = 120000
    attackBodyPosition.Position = desired.Position
    attackBodyPosition.Parent = hrp

    attackBodyGyro = Instance.new("BodyGyro")
    attackBodyGyro.Name = "FarmBodyGyro"
    attackBodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    attackBodyGyro.D = 150
    attackBodyGyro.P = 15000
    attackBodyGyro.CFrame = CFrame.new(hrp.Position, mRoot.Position)
    attackBodyGyro.Parent = hrp

    local offset = 0
    attackConnection = RunService.Heartbeat:Connect(function()
        local currentChar = Player.Character
        local currentHrp = currentChar and currentChar:FindFirstChild("HumanoidRootPart")
        local currentHum = monster and monster:FindFirstChildOfClass("Humanoid")
        local currentRoot = monster and monster:FindFirstChild("HumanoidRootPart")

        if not getgenv().AutoFarm
            or not monster
            or not monster.Parent
            or not currentHrp
            or not currentHum
            or currentHum.Health <= 0
            or not currentRoot
        then
            stopAttackMovement()
            return
        end

        if currentHrp ~= hrp then
            stopAttackMovement()
            return
        end

        offset = offset + 0.22
        local bob = math.sin(offset) * 1.5
        local height = tonumber(_G.FarmHeightValue or getgenv().FarmHeight or FARM_HOVER_CLEARANCE) or 20
        local hoverPosition = currentRoot.Position + Vector3.new(0, height + bob, 0)

        if attackBodyPosition and attackBodyPosition.Parent then
            attackBodyPosition.Position = hoverPosition
        end
        if attackBodyGyro and attackBodyGyro.Parent then
            attackBodyGyro.CFrame = CFrame.new(hoverPosition, currentRoot.Position)
        end

        FarmPos = currentRoot.CFrame
        MonFarm = monster.Name
        activateSelectedTool()
    end)
end

function BringEnemy()
    if not getgenv().AutoFarm or not getgenv().BringMob then return end

    local plr = Player
    local char = plr.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    pcall(function() sethiddenproperty(plr, "SimulationRadius", 1e9) end)
    pcall(function()
        plr.MaximumSimulationRadius = 1e9
        plr.SimulationRadius = 1e9
    end)

    local enemies = Workspace:FindFirstChild("Enemies")
    if not enemies then return end

    local bringPos = hrp.CFrame
    local targetMonName = nil

    if getgenv().FarmMode == "Aura Farm" and FarmPos and MonFarm then
        targetMonName = MonFarm
        bringPos = FarmPos
    elseif Mon then
        targetMonName = Mon  
    else
        targetMonName = nil
    end

    local count = 0
    local maxBring = 10

    for _, mob in ipairs(enemies:GetChildren()) do
        if count >= maxBring then break end
        if not targetMonName or mob.Name == targetMonName then
            local hum = mob:FindFirstChild("Humanoid")
            local root = mob:FindFirstChild("HumanoidRootPart")
            if hum and root and hum.Health > 0 and (root.Position - bringPos.Position).Magnitude <= 500 then
                count = count + 1
                root.CFrame = bringPos + Vector3.new(math.random(-8, 8), 0, math.random(-8, 8))
                root.CanCollide = false
                if mob:FindFirstChild("Head") then mob.Head.CanCollide = false end
                root.Size = Vector3.new(60, 60, 60)
                hum.JumpPower = 0
                hum.WalkSpeed = 0
                if hum:FindFirstChild("Animator") then hum.Animator:Destroy() end
                if not root:FindFirstChild("Lock") then
                    local bv = Instance.new("BodyVelocity")
                    bv.Parent = root
                    bv.Name = "Lock"
                    bv.MaxForce = Vector3.new(100000, 100000, 100000)
                    bv.Velocity = Vector3.new(0, 0, 0)
                end
                pcall(function()
                    sethiddenproperty(plr, "SimulationRadius", math.huge)
                end)
                hum:ChangeState(Enum.HumanoidStateType.Physics)
            end
        end
    end
end

-- ========================================
-- AURA FARM
-- ========================================

local auraTarget = nil
local auraFarmActive = false
local auraFarmConnection = nil
local isAuraMoving = false

local function stopAuraFarm()
    auraFarmActive = false
    if auraFarmConnection then
        pcall(function() auraFarmConnection:Disconnect() end)
        auraFarmConnection = nil
    end
    auraTarget = nil
    StartBring = false
    isAuraMoving = false
    stopAttackMovement()
end

local function startAuraFarmLoop()
    if auraFarmActive then return end
    auraFarmActive = true
    
    auraFarmConnection = RunService.Heartbeat:Connect(function()
        if not getgenv().AutoFarm or getgenv().FarmMode ~= "Aura Farm" then
            stopAuraFarm()
            return
        end
        
        local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        
        if not auraTarget or not auraTarget.Parent then
            local target, dist = getAliveEnemyClosestTo(hrp.Position, nil)
            if target and dist < 5000 then
                auraTarget = target
                isAuraMoving = false
            else
                auraTarget = nil
                StartBring = false
                return
            end
        end
        
        local targetHum = auraTarget:FindFirstChildOfClass("Humanoid")
        local targetRoot = auraTarget:FindFirstChild("HumanoidRootPart")
        if not targetHum or targetHum.Health <= 0 or not targetRoot then
            auraTarget = nil
            StartBring = false
            isAuraMoving = false
            return
        end
        
        FarmPos = targetRoot.CFrame
        MonFarm = auraTarget.Name
        StartBring = true
        
        if not isAuraMoving then
            AttackMonster(auraTarget)
        end
        
        if getgenv().BringMob then
            BringEnemy()
        end
    end)
end

local questActionCooldown = 0
local bringCooldown = 0

local function getQuestInfo()
    local mainGui = Player:FindFirstChild("PlayerGui") and Player.PlayerGui:FindFirstChild("Main")
    if not mainGui then return nil, false, "" end

    local quest = mainGui:FindFirstChild("Quest")
    if not quest then return nil, false, "" end

    local titleText = ""

    for _, obj in ipairs(quest:GetDescendants()) do
        if obj:IsA("TextLabel") then
            local text = obj.Text or ""
            if string.find(text, "Defeat") or string.find(text, "Kill") or string.find(text, "Collect") then
                titleText = text
                break
            end
        end
    end

    if titleText == "" then
        local titleObject = quest:FindFirstChild("Title", true)
        if titleObject and titleObject:IsA("TextLabel") then
            titleText = titleObject.Text
        else
            local container = quest:FindFirstChild("Container")
            if container then
                local questTitleObj = container:FindFirstChild("QuestTitle")
                if questTitleObj then
                    if questTitleObj:IsA("TextLabel") then
                        titleText = questTitleObj.Text
                    else
                        local titleLabel = questTitleObj:FindFirstChild("Title")
                        if titleLabel and titleLabel:IsA("TextLabel") then
                            titleText = titleLabel.Text
                        end
                    end
                end
            end
        end
    end

    return quest, quest.Visible == true, titleText
end

local function runLevelFarm()
    CheckQuest()
    if not Mon or not CFrameQuest or not CFrameMon or not NameQuest or not LevelQuest then
        return
    end

    local char = Player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local quest, questVisible, questTitle = getQuestInfo()
    if not quest then
        return
    end

    if not questVisible then
        lastMonster = nil
        stopAttackMovement()

        local questPosition = CFrameQuest + Vector3.new(0, 3, 0)
        if (hrp.Position - questPosition.Position).Magnitude > 15 then
            topos(questPosition)
            return
        end

        stopTweenMovement()
        if tick() - questActionCooldown >= 1 then
            questActionCooldown = tick()
            invokeCommF("StartQuest", NameQuest, LevelQuest)
        end
        return
    end

    local questMatches = false
    if questTitle ~= "" then
        local function cleanQuestText(text)
            text = text:gsub("^Defeat%s*%d+%s*", "")  
            text = text:gsub("%[Lv%.?%s*%d+%]%s*", "") 
            text = text:gsub("%s+", " ")   
            text = text:gsub("^%s*(.-)%s*$", "%1")
            return text
        end

        local cleanTitle = cleanQuestText(questTitle)
        local cleanMon = cleanQuestText(NameMon)

        if cleanTitle == cleanMon then
            questMatches = true
        elseif string.find(cleanTitle, cleanMon, 1, true) then
            questMatches = true
        elseif string.find(cleanMon, cleanTitle, 1, true) then
            questMatches = true
        else
            local nameParts = {}
            for part in string.gmatch(cleanMon, "%S+") do
                table.insert(nameParts, part)
            end
            for _, part in ipairs(nameParts) do
                if #part > 2 and string.find(cleanTitle, part, 1, true) then
                    questMatches = true
                    break
                end
            end
        end
    end

    if questTitle ~= "" and not questMatches then
        lastMonster = nil
        stopAttackMovement()
        if tick() - questActionCooldown >= 1 then
            questActionCooldown = tick()
            invokeCommF("AbandonQuest")
        end
        return
    end

    local monster = getAliveEnemyClosestTo(hrp.Position, Mon)
    if monster then
        lastMonster = monster
        AttackMonster(monster)
        if getgenv().BringMob and tick() - bringCooldown >= 1 then
            bringCooldown = tick()
            BringEnemy()
        end
        return
    end

    lastMonster = nil
    stopAttackMovement()
    topos(CFrameMon + Vector3.new(0, tonumber(getgenv().FarmHeight) or 20, 0))
end

local function startMainLoop()
    if mainLoopRunning then return end
    mainLoopRunning = true

    local function onDied()
        if mainLoopRunning and getgenv().AutoFarm then
            mainLoopRunning = false
            auraTarget = nil
            if auraFarmActive then stopAuraFarm() end
            repeat task.wait(0.5) until Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
            startMainLoop()
        end
    end
    if Player.Character and Player.Character:FindFirstChild("Humanoid") then
        Player.Character.Humanoid.Died:Connect(onDied)
    end

    task.spawn(function()
        local lastLoopError, lastLoopErrorAt = nil, 0
        while mainLoopRunning do
            task.wait(0.1)

            if getgenv().AutoFarm then
                local char = Player.Character
                local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not char or not humanoid or humanoid.Health <= 0 or not hrp then
                    stopAttackMovement()
                    stopTweenMovement()
                    if getgenv().FarmMode == "Aura Farm" then
                        stopAuraFarm()
                    end
                else
                    local ok, err = pcall(function()
                        if getgenv().AutoHakiBuso and not char:FindFirstChild("HasBuso") then
                            invokeCommF("Buso")
                        end

                        SelectWeapon()
                        
                        if getgenv().FarmMode == "Aura Farm" then
                            if not auraFarmActive then
                                startAuraFarmLoop()
                            end
                        else
                            if auraFarmActive then
                                stopAuraFarm()
                            end
                            runLevelFarm()
                        end
                    end)

                    if not ok and (err ~= lastLoopError or tick() - lastLoopErrorAt >= 3) then
                        lastLoopError = err
                        lastLoopErrorAt = tick()
                        warn("[AutoFarm] " .. tostring(err))
                    end
                end
            else
                lastMonster = nil
                auraTarget = nil
                StartBring = false
                FarmPos = nil
                MonFarm = nil
                stopAttackMovement()
                stopTweenMovement()
                setCharacterNoClip(false)
                if auraFarmActive then
                    stopAuraFarm()
                end
            end
        end
    end)
end

startMainLoop()

-- ========================================
-- AUTO RANDOM FRUIT
-- ========================================

task.spawn(function()
    while task.wait(getgenv().RandomFruitInterval) do
        pcall(function()
            if getgenv().AutoRandomFruit and isBloxFruitReady() then
                invokeCommF("Cousin", "Buy")
            end
        end)
    end
end)

-- ========================================
-- AUTO RACE V3 / V4
-- ========================================

task.spawn(function()
    while task.wait(5) do
        pcall(function()
            if getgenv().AutoRaceV3 and isBloxFruitReady() then
                if Player.Character and Player.Character:FindFirstChild("RaceAura") then
                    local a = Player.Character.RaceAura
                    if not (a:FindFirstChild("V3") or a.Name == "V3") then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, nil)
                        task.wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.T, false, nil)
                    end
                else
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, nil)
                    task.wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.T, false, nil)
                end
            end
            if getgenv().AutoRaceV4 and isBloxFruitReady() then
                pcall(function()
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Y, false, game)
                    task.wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Y, false, game)
                end)
            end
        end)
    end
end)

-- ========================================
-- AUTO BUY HAKI
-- ========================================

task.spawn(function()
    while task.wait(5) do
        pcall(function()
            local player = Player
            local data = player:FindFirstChild("Data")
            if not data then return end
            
            local char = player.Character
            local backpack = player:FindFirstChild("Backpack")
            if not char or not backpack then return end

            local beli = data:FindFirstChild("Beli") and data.Beli.Value or 0
            
            if getgenv().AutoBuyGeppo and beli >= 10000 then
                if not char:FindFirstChild("Geppo") and not backpack:FindFirstChild("Geppo") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                end
            end
            
            if getgenv().AutoBuyBuso and beli >= 25000 then
                if not char:FindFirstChild("HasBuso") and not backpack:FindFirstChild("HasBuso") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                end
            end
            
            if getgenv().AutoBuySoru and beli >= 25000 then
                if not char:FindFirstChild("Soru") and not backpack:FindFirstChild("Soru") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
                end
            end
            
            if getgenv().AutoBuyObservation and beli >= 750000 then
                if not char:FindFirstChild("VisionRadius") and not backpack:FindFirstChild("VisionRadius") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                end
            end
        end)
    end
end)

-- ========================================
-- UI BANANA CŨ – ĐÃ SỬA LỖI + PHÍM V
-- ========================================
local Library = loadstring(game:HttpGet("https://pastefy.app/kyYdSx0A/raw"))()

local W = Library.CreateWindow({
    Title = "Banana Cat Hub",
    Subtitle = "Made By Phuc Ngo",
    Image = "rbxassetid://5009915795"
})

-- Xử lý phím V để bật/tắt menu
local UIS = game:GetService("UserInputService")
local menuVisible = true
UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.V then
        menuVisible = not menuVisible
        if menuVisible then
            W:Show()
        else
            W:Hide()
        end
    end
end)

local Shop = W:AddTab("Shop")
local Svr = W:AddTab("Server")
local Main = W:AddTab("Main")
local Teleport = W:AddTab("Teleport")
local Set = W:AddTab("Config")

-- Shop (dùng AddGroupbox)
local SG = Shop:AddGroupbox("Fighting Styles")
local shopData = {
    {"Black Leg", CFrame.new(1065, 15, 1565), {"BuyBlackLeg"}},
    {"Fishman Karate", CFrame.new(61150, 18, 1560), {"BuyFishmanKarate"}},
    {"Electro", CFrame.new(-4640, 855, -1940), {"BuyElectro"}},
    {"Dragon Breath", CFrame.new(-5300, 80, 3900), {"BlackbeardReward", "DragonClaw", "1"}, {"BlackbeardReward", "DragonClaw", "2"}},
    {"SuperHuman", CFrame.new(-680, 23, 1500), {"BuySuperhuman"}},
    {"Death Step", CFrame.new(-780, 75, 1400), {"BuyDeathStep"}},
    {"Sharkman Karate", CFrame.new(-3050, 245, -10140), {"BuySharkmanKarate", true}, {"BuySharkmanKarate"}},
    {"Electric Claw", CFrame.new(-10370, 335, -8800), {"BuyElectricClaw"}},
    {"Dragon Talon", CFrame.new(-5800, 80, 3800), {"BuyDragonTalon"}},
    {"God Human", CFrame.new(-600, 25, 1800), {"BuyGodhuman"}},
    {"Sanguine Art", CFrame.new(10880, -1980, 9610), {"BuySanguineArt", true}, {"BuySanguineArt"}}
}

for _, d in ipairs(shopData) do
    SG:AddButton({
        Name = d[1],
        Callback = function()
            topos(d[2])
            task.wait(0.5)
            if d[3] then pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(d[3])) end) end
            if d[4] then pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(d[4])) end) end
        end
    })
end

local AutoHakiGroup = Shop:AddGroupbox("Auto Buy Haki")
AutoHakiGroup:AddToggle("AutoBuyGeppo", {
    Title = "Auto Buy Geppo ($10,000)",
    Default = getgenv().AutoBuyGeppo or false,
    Callback = function(v)
        getgenv().AutoBuyGeppo = v
        SaveConfig()
    end
})
AutoHakiGroup:AddToggle("AutoBuyBuso", {
    Title = "Auto Buy Buso Haki ($25,000)",
    Default = getgenv().AutoBuyBuso or false,
    Callback = function(v)
        getgenv().AutoBuyBuso = v
        SaveConfig()
    end
})
AutoHakiGroup:AddToggle("AutoBuySoru", {
    Title = "Auto Buy Soru ($25,000)",
    Default = getgenv().AutoBuySoru or false,
    Callback = function(v)
        getgenv().AutoBuySoru = v
        SaveConfig()
    end
})
AutoHakiGroup:AddToggle("AutoBuyObservation", {
    Title = "Auto Buy Observation Haki ($750,000)",
    Default = getgenv().AutoBuyObservation or false,
    Callback = function(v)
        getgenv().AutoBuyObservation = v
        SaveConfig()
    end
})

-- Server
local IG = Svr:AddGroupbox("Player Info")
IG:AddLabel("Player: " .. Player.Name)
local gn = "Unknown"
pcall(function() gn = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name or "Unknown" end)
IG:AddLabel("Game: " .. gn)

local SG2 = Svr:AddGroupbox("Server Tools")
SG2:AddButton({Name = "Copy Game ID", Callback = function() if setclipboard then setclipboard(tostring(game.PlaceId)) end end})
SG2:AddButton({Name = "Rejoin", Callback = function() SaveConfig(); game:GetService("TeleportService"):Teleport(game.PlaceId, Player) end})

-- Main
local FG = Main:AddGroupbox("Main Farms")
FG:AddDropdown("FarmModeSelect", {
    Title = "Mode",
    Options = {"Level Farm", "Aura Farm"},
    Default = getgenv().FarmMode or "Level Farm",
    Callback = function(v)
        getgenv().FarmMode = v
        auraTarget = nil
        SaveConfig()
    end
})
FG:AddToggle("AutoFarmToggle", {
    Title = "Auto Farm",
    Default = getgenv().AutoFarm or false,
    Callback = function(v)
        getgenv().AutoFarm = v
        if v then getgenv().BringMob = true
        else
            stopAttackMovement()
            stopTweenMovement()
            setCharacterNoClip(false)
            getgenv().OnFarm = false
            auraTarget = nil
            StartBring = false
            FarmPos = nil
            MonFarm = nil
            local h = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
            if h then h.Anchored = false; h.Velocity = Vector3.zero; h.AssemblyLinearVelocity = Vector3.zero end
        end
        SaveConfig()
    end
})

-- Teleport
Teleport:AddSection({Title = "Teleport Island"})

local islandList = {}
if World1 then
    islandList = {
        "WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", "Desert", "Snow Island",
        "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison",
        "Magma Village", "Under Water Island", "Fountain City", "Shank Room", "Mob Island"
    }
elseif World2 then
    islandList = {
        "The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room", "Green Zone",
        "Factory", "Colossuim", "Zombie Island", "Two Snow Mountain", "Punk Hazard", "Cursed Ship",
        "Ice Castle", "Forgotten Island", "Ussop Island", "Mini Sky Island"
    }
elseif World3 then
    islandList = {
        "Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island",
        "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", "Cake Island",
        "Cocoa Island", "Candy Island", "Tiki Outpost", "Dragon Dojo"
    }
else
    islandList = {"Spawn"}
end

Teleport:AddDropdown("IslandSelect", {
    Title = "Select Island",
    Options = islandList,
    Default = islandList[1] or "",
    Callback = function(v)
        _G.SelectIsland = v
    end
})

Teleport:AddToggle("AutoTweenIsland", {
    Title = "Auto Tween To Island",
    Default = false,
    Callback = function(v)
        _G.TeleportIsland = v
        if not v then stopTweenMovement() end
    end
})

Teleport:AddSection({Title = "Teleport Sea"})
Teleport:AddButton({Name = "Sea 1", Callback = function() pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelMain") end) end})
Teleport:AddButton({Name = "Sea 2", Callback = function() pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa") end) end})
Teleport:AddButton({Name = "Sea 3", Callback = function() pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelZou") end) end})

-- Portal Teleport
Teleport:AddSection({Title = "Portal Teleport"})

local portalList = {}
if World1 then
    portalList = {"Sky", "UnderWater"}
elseif World2 then
    portalList = {"SwanRoom", "Cursed Ship"}
elseif World3 then
    portalList = {"Castle On The Sea", "Mansion Cafe", "Hydra Teleport", "Canvendish Room", "Temple of Time"}
end

Teleport:AddDropdown("PortalSelect", {
    Title = "Select Portal",
    Options = portalList,
    Default = portalList[1] or "",
    Callback = function(v)
        _G.SelectedPortal = v
    end
})

Teleport:AddButton({
    Name = "Teleport to Portal",
    Callback = function()
        local p = _G.SelectedPortal
        if not p then return end
        local cf = nil
        if p == "Sky" then cf = Vector3.new(-7894, 5547, -380)
        elseif p == "UnderWater" then cf = Vector3.new(61163, 11, 1819)
        elseif p == "SwanRoom" then cf = Vector3.new(2285, 15, 905)
        elseif p == "Cursed Ship" then cf = Vector3.new(923, 126, 32852)
        elseif p == "Castle On The Sea" then cf = Vector3.new(-5097.93164, 316.447021, -3142.66602)
        elseif p == "Mansion Cafe" then cf = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
        elseif p == "Hydra Teleport" then cf = Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625)
        elseif p == "Canvendish Room" then cf = Vector3.new(5314.5463867188, 22.562219619751, -127.06755065918)
        elseif p == "Temple of Time" then cf = Vector3.new(28310.0234, 14895.1123, 109.456741)
        end
        if cf then
            pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", cf) end)
            topos(CFrame.new(cf))
        end
    end
})

-- Config
local SG3 = Set:AddGroupbox("UI Settings")
SG3:AddDropdown("WeaponSelect", {
    Title = "Weapon",
    Options = {"Melee", "Sword", "Gun", "Blox Fruit"},
    Default = getgenv().SelectWeapon or "Melee",
    Callback = function(v)
        getgenv().SelectWeapon = v
        SaveConfig()
    end
})
SG3:AddButton({
    Name = "Stop Tween",
    Callback = function()
        stopAttackMovement()
        stopTweenMovement()
        setCharacterNoClip(false)
        getgenv().AutoFarm = false
        local h = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
        if h then h.Anchored = false; h.Velocity = Vector3.zero end
    end
})
SG3:AddToggle("BringMobToggle", {
    Title = "Bring Mob",
    Default = getgenv().BringMob or false,
    Callback = function(v)
        getgenv().BringMob = v
        SaveConfig()
    end
})
SG3:AddToggle("AutoHakiToggle", {
    Title = "Auto Buso Haki",
    Default = getgenv().AutoHakiBuso ~= false,
    Callback = function(v)
        getgenv().AutoHakiBuso = v
        SaveConfig()
    end
})
SG3:AddToggle("AutoRaceV3", {
    Title = "Auto Race V3",
    Default = getgenv().AutoRaceV3 or false,
    Callback = function(v)
        getgenv().AutoRaceV3 = v
        SaveConfig()
    end
})
SG3:AddToggle("AutoRaceV4", {
    Title = "Auto Race V4",
    Default = getgenv().AutoRaceV4 or false,
    Callback = function(v)
        getgenv().AutoRaceV4 = v
        SaveConfig()
    end
})
SG3:AddToggle("ToggleKeybind", {
    Title = "Toggle GUI V",
    Default = _G.ToggleKeybind ~= false,
    Callback = function(v)
        _G.ToggleKeybind = v
        SaveConfig()
    end
})
SG3:AddToggle("WalkOnWater", {
    Title = "Walk on Water",
    Default = getgenv().WalkOnWater or false,
    Callback = function(v)
        getgenv().WalkOnWater = v
        pcall(function()
            local water = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("WaterBase-Plane")
            if water then
                if v then water.Size = Vector3.new(1000, 112, 1000)
                else water.Size = Vector3.new(1000, 80, 1000) end
            end
        end)
        SaveConfig()
    end
})
SG3:AddButton({Name = "Save Config", Callback = function() SaveConfig() end})
SG3:AddButton({Name = "Destroy GUI", Callback = function() if Library.DestroyUI then Library:DestroyUI() end end})

-- Thông báo
pcall(function()
    Library:Notify({
        Title = "Loaded!",
        Description = "Press V to toggle GUI",
        Duration = 5
    })
end)
