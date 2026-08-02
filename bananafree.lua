repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer.Character

local Player = game.Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerGui = Player:WaitForChild("PlayerGui", 5)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")

getgenv().AutoFarm = false
getgenv().FarmMode = "Level Farm"
getgenv().SelectWeapon = "Melee"
getgenv().BringMob = true
getgenv().AutoHakiBuso = true
getgenv().FastAttackSpeed = 0.08
getgenv().AutoRandomFruit = false
getgenv().AutoRaceV3 = false
getgenv().AutoRaceV4 = false
getgenv().RandomFruitInterval = 30
getgenv().AutoBuyGeppo = false
getgenv().AutoBuyBuso = false
getgenv().AutoBuySoru = false
getgenv().AutoBuyObservation = false

local FARM_HOVER_CLEARANCE = 20
_G.FarmHeightValue = FARM_HOVER_CLEARANCE
getgenv().FarmHeight = FARM_HOVER_CLEARANCE
_G.ToggleKeybind = true

local lastMonster = nil
local FarmPos = nil
local MonFarm = nil
local StartBring = false
local activeTween = nil
local shouldTween = false
local mainLoopRunning = false
local auraTarget = nil

-- CONFIG SAVE/LOAD
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
        AutoBuyGeppo = getgenv().AutoBuyGeppo,
        AutoBuyBuso = getgenv().AutoBuyBuso,
        AutoBuySoru = getgenv().AutoBuySoru,
        AutoBuyObservation = getgenv().AutoBuyObservation
    }
    pcall(function()
        if writefile then writefile("BF_Config.json", game:GetService("HttpService"):JSONEncode(config)) end
    end)
end

local function LoadConfig()
    pcall(function()
        if readfile and isfile and isfile("BF_Config.json") then
            local config = game:GetService("HttpService"):JSONDecode(readfile("BF_Config.json"))
            for k, v in pairs(config) do
                if k == "FarmHeight" then
                    _G.FarmHeightValue = v
                    getgenv().FarmHeight = v
                elseif getgenv()[k] ~= nil then
                    getgenv()[k] = v
                end
            end
        end
    end)
end
LoadConfig()

-- GAME DETECTION
local World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
local World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
local World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089

local function getCommF()
    local remotes = ReplicatedStorage:FindFirstChild("Remotes")
    return remotes and remotes:FindFirstChild("CommF_")
end

local function invokeCommF(...)
    local remote = getCommF()
    if not remote then return false, "No CommF_" end
    local args = table.pack(...)
    return pcall(function()
        return remote:InvokeServer(table.unpack(args, 1, args.n))
    end)
end

-- Anti-AFK
local VirtualUser = game:GetService("VirtualUser")
Player.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

-- Load Fast Attack Module
pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Dev-AnhTuansitink/Module/refs/heads/main/EzFastAttack.lua'))()
end)

-- Speed hack for fast attack
pcall(function()
    local oldDelay = hookfunction(task.delay, function(t, f, ...)
        local success, info = pcall(debug.info, 2, "s")
        if success and info and type(info) == "string" and t > 0.1 then
            if string.find(info, "FastAttack") or string.find(info, "AutoFarm") then
                return oldDelay(0, f, ...)
            end
        end
        return oldDelay(t, f, ...)
    end)
end)

-- QUEST SYSTEM
local Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon

function CheckQuest()
    Mon = nil
    pcall(function()
        local data = Player:FindFirstChild("Data")
        if not data or not data:FindFirstChild("Level") then return end
        local MyLevel = data.Level.Value
        
        if World1 then
            if MyLevel >= 1 and MyLevel <= 9 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Bandit [Lv. 5]", 1, "BanditQuest1", "Bandit", CFrame.new(1059.37, 15.45, 1550.42), CFrame.new(1045.96, 27.0, 1560.82)
            elseif MyLevel >= 10 and MyLevel <= 14 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Monkey [Lv. 14]", 1, "JungleQuest", "Monkey", CFrame.new(-1598.09, 35.55, 153.38), CFrame.new(-1448.52, 67.85, 11.47)
            elseif MyLevel >= 15 and MyLevel <= 29 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Gorilla [Lv. 20]", 2, "JungleQuest", "Gorilla", CFrame.new(-1598.09, 35.55, 153.38), CFrame.new(-1129.88, 40.46, -525.42)
            elseif MyLevel >= 30 and MyLevel <= 39 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Pirate [Lv. 35]", 1, "BuggyQuest1", "Pirate", CFrame.new(-1141.07, 4.1, 3831.55), CFrame.new(-1103.51, 13.75, 3896.09)
            elseif MyLevel >= 40 and MyLevel <= 59 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Brute [Lv. 45]", 2, "BuggyQuest1", "Brute", CFrame.new(-1141.07, 4.1, 3831.55), CFrame.new(-1140.08, 14.81, 4322.92)
            elseif MyLevel >= 60 and MyLevel <= 74 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Desert Bandit [Lv. 60]", 1, "DesertQuest", "Desert Bandit", CFrame.new(894.49, 5.14, 4392.43), CFrame.new(924.8, 6.45, 4481.59)
            elseif MyLevel >= 75 and MyLevel <= 89 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Desert Officer [Lv. 70]", 2, "DesertQuest", "Desert Officer", CFrame.new(894.49, 5.14, 4392.43), CFrame.new(1608.28, 8.61, 4371.01)
            elseif MyLevel >= 90 and MyLevel <= 99 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Snow Bandit [Lv. 90]", 1, "SnowQuest", "Snow Bandit", CFrame.new(1389.74, 88.15, -1298.91), CFrame.new(1354.35, 87.27, -1393.95)
            elseif MyLevel >= 100 and MyLevel <= 119 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Snowman [Lv. 100]", 2, "SnowQuest", "Snowman", CFrame.new(1389.74, 88.15, -1298.91), CFrame.new(1201.64, 144.58, -1550.07)
            elseif MyLevel >= 120 and MyLevel <= 149 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Chief Petty Officer [Lv. 120]", 1, "MarineQuest2", "Chief Petty Officer", CFrame.new(-5039.59, 27.35, 4324.68), CFrame.new(-4881.23, 22.65, 4273.75)
            elseif MyLevel >= 150 and MyLevel <= 174 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Sky Bandit [Lv. 150]", 1, "SkyQuest", "Sky Bandit", CFrame.new(-4839.53, 716.37, -2619.44), CFrame.new(-4953.21, 295.74, -2899.23)
            elseif MyLevel >= 175 and MyLevel <= 189 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Dark Master [Lv. 175]", 2, "SkyQuest", "Dark Master", CFrame.new(-4839.53, 716.37, -2619.44), CFrame.new(-5259.84, 391.4, -2229.04)
            elseif MyLevel >= 190 and MyLevel <= 209 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Prisoner [Lv. 190]", 1, "PrisonerQuest", "Prisoner", CFrame.new(5308.93, 1.66, 475.12), CFrame.new(5098.97, -0.32, 474.24)
            elseif MyLevel >= 210 and MyLevel <= 249 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Dangerous Prisoner [Lv. 210]", 2, "PrisonerQuest", "Dangerous Prisoner", CFrame.new(5308.93, 1.66, 475.12), CFrame.new(5654.56, 15.63, 866.3)
            elseif MyLevel >= 250 and MyLevel <= 274 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Toga Warrior [Lv. 250]", 1, "ColosseumQuest", "Toga Warrior", CFrame.new(-1580.05, 6.35, -2986.48), CFrame.new(-1820.21, 51.68, -2740.67)
            elseif MyLevel >= 275 and MyLevel <= 299 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Gladiator [Lv. 275]", 2, "ColosseumQuest", "Gladiator", CFrame.new(-1580.05, 6.35, -2986.48), CFrame.new(-1292.84, 56.38, -3339.03)
            elseif MyLevel >= 300 and MyLevel <= 324 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Military Soldier [Lv. 300]", 1, "MagmaQuest", "Military Soldier", CFrame.new(-5313.37, 10.95, 8515.29), CFrame.new(-5411.16, 11.08, 8454.29)
            elseif MyLevel >= 325 and MyLevel <= 374 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Military Spy [Lv. 325]", 2, "MagmaQuest", "Military Spy", CFrame.new(-5313.37, 10.95, 8515.29), CFrame.new(-5802.87, 86.26, 8828.86)
            elseif MyLevel >= 375 and MyLevel <= 399 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Fishman Warrior [Lv. 375]", 1, "FishmanQuest", "Fishman Warrior", CFrame.new(61122.65, 18.5, 1569.4), CFrame.new(60878.3, 18.48, 1543.76)
            elseif MyLevel >= 400 and MyLevel <= 449 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Fishman Commando [Lv. 400]", 2, "FishmanQuest", "Fishman Commando", CFrame.new(61122.65, 18.5, 1569.4), CFrame.new(61922.63, 18.48, 1493.93)
            elseif MyLevel >= 450 and MyLevel <= 474 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "God's Guard [Lv. 450]", 1, "SkyExp1Quest", "God's Guard", CFrame.new(-4721.89, 843.87, -1949.97), CFrame.new(-4710.04, 845.28, -1927.31)
            elseif MyLevel >= 475 and MyLevel <= 524 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Shanda [Lv. 475]", 2, "SkyExp1Quest", "Shanda", CFrame.new(-7859.1, 5544.19, -381.48), CFrame.new(-7678.49, 5566.4, -497.22)
            elseif MyLevel >= 525 and MyLevel <= 549 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Royal Squad [Lv. 525]", 1, "SkyExp2Quest", "Royal Squad", CFrame.new(-7906.82, 5634.66, -1411.99), CFrame.new(-7624.25, 5658.13, -1467.35)
            elseif MyLevel >= 550 and MyLevel <= 624 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Royal Soldier [Lv. 550]", 2, "SkyExp2Quest", "Royal Soldier", CFrame.new(-7906.82, 5634.66, -1411.99), CFrame.new(-7836.75, 5645.66, -1790.62)
            elseif MyLevel >= 625 and MyLevel <= 649 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Galley Pirate [Lv. 625]", 1, "FountainQuest", "Galley Pirate", CFrame.new(5259.82, 37.35, 4050.03), CFrame.new(5551.02, 78.9, 3930.41)
            elseif MyLevel >= 650 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Galley Captain [Lv. 650]", 2, "FountainQuest", "Galley Captain", CFrame.new(5259.82, 37.35, 4050.03), CFrame.new(5441.95, 42.5, 4950.09)
            end
        elseif World2 then
            if MyLevel >= 700 and MyLevel <= 724 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Raider [Lv. 700]", 1, "Area1Quest", "Raider", CFrame.new(-429.54, 71.77, 1836.18), CFrame.new(-728.33, 52.78, 2345.77)
            elseif MyLevel >= 725 and MyLevel <= 774 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Mercenary [Lv. 725]", 2, "Area1Quest", "Mercenary", CFrame.new(-429.54, 71.77, 1836.18), CFrame.new(-1004.32, 80.16, 1424.62)
            elseif MyLevel >= 775 and MyLevel <= 799 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Swan Pirate [Lv. 775]", 1, "Area2Quest", "Swan Pirate", CFrame.new(638.44, 71.77, 918.28), CFrame.new(1068.66, 137.61, 1322.11)
            elseif MyLevel >= 800 and MyLevel <= 874 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Factory Staff [Lv. 800]", 2, "Area2Quest", "Factory Staff", CFrame.new(632.7, 73.11, 918.67), CFrame.new(73.08, 81.86, -27.47)
            elseif MyLevel >= 875 and MyLevel <= 899 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Marine Lieutenant [Lv. 875]", 1, "MarineQuest3", "Marine Lieutenant", CFrame.new(-2440.8, 71.71, -3216.07), CFrame.new(-2821.37, 75.9, -3070.09)
            elseif MyLevel >= 900 and MyLevel <= 949 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Marine Captain [Lv. 900]", 2, "MarineQuest3", "Marine Captain", CFrame.new(-2440.8, 71.71, -3216.07), CFrame.new(-1861.23, 80.18, -3254.7)
            elseif MyLevel >= 950 and MyLevel <= 974 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Zombie [Lv. 950]", 1, "ZombieQuest", "Zombie", CFrame.new(-5497.06, 47.59, -795.24), CFrame.new(-5657.78, 78.97, -928.69)
            elseif MyLevel >= 975 and MyLevel <= 999 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Vampire [Lv. 975]", 2, "ZombieQuest", "Vampire", CFrame.new(-5497.06, 47.59, -795.24), CFrame.new(-6037.67, 32.18, -1340.66)
            elseif MyLevel >= 1000 and MyLevel <= 1049 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Snow Trooper [Lv. 1000]", 1, "SnowMountainQuest", "Snow Trooper", CFrame.new(609.86, 400.12, -5372.26), CFrame.new(549.15, 427.39, -5563.7)
            elseif MyLevel >= 1050 and MyLevel <= 1099 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Winter Warrior [Lv. 1050]", 2, "SnowMountainQuest", "Winter Warrior", CFrame.new(609.86, 400.12, -5372.26), CFrame.new(1142.75, 475.64, -5199.42)
            elseif MyLevel >= 1100 and MyLevel <= 1124 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Lab Subordinate [Lv. 1100]", 1, "IceSideQuest", "Lab Subordinate", CFrame.new(-6064.07, 15.24, -4902.98), CFrame.new(-5707.47, 15.95, -4513.39)
            elseif MyLevel >= 1125 and MyLevel <= 1174 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Horned Warrior [Lv. 1125]", 2, "IceSideQuest", "Horned Warrior", CFrame.new(-6064.07, 15.24, -4902.98), CFrame.new(-6341.37, 15.95, -5723.16)
            elseif MyLevel >= 1175 and MyLevel <= 1199 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Magma Ninja [Lv. 1175]", 1, "FireSideQuest", "Magma Ninja", CFrame.new(-5428.03, 15.06, -5299.43), CFrame.new(-5449.67, 76.66, -5808.2)
            elseif MyLevel >= 1200 and MyLevel <= 1249 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Lava Pirate [Lv. 1200]", 2, "FireSideQuest", "Lava Pirate", CFrame.new(-5428.03, 15.06, -5299.43), CFrame.new(-5213.33, 49.74, -4701.45)
            elseif MyLevel >= 1250 and MyLevel <= 1274 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ship Deckhand [Lv. 1250]", 1, "ShipQuest1", "Ship Deckhand", CFrame.new(1037.8, 125.09, 32911.6), CFrame.new(1212.01, 150.79, 33059.25)
            elseif MyLevel >= 1275 and MyLevel <= 1299 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ship Engineer [Lv. 1275]", 2, "ShipQuest1", "Ship Engineer", CFrame.new(1037.8, 125.09, 32911.6), CFrame.new(919.48, 43.54, 32779.97)
            elseif MyLevel >= 1300 and MyLevel <= 1324 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ship Steward [Lv. 1300]", 1, "ShipQuest2", "Ship Steward", CFrame.new(968.81, 125.09, 33244.13), CFrame.new(919.44, 129.56, 33436.04)
            elseif MyLevel >= 1325 and MyLevel <= 1349 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ship Officer [Lv. 1325]", 2, "ShipQuest2", "Ship Officer", CFrame.new(968.81, 125.09, 33244.13), CFrame.new(1036.02, 181.44, 33315.73)
            elseif MyLevel >= 1350 and MyLevel <= 1374 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Arctic Warrior [Lv. 1350]", 1, "FrostQuest", "Arctic Warrior", CFrame.new(5667.66, 26.8, -6486.09), CFrame.new(5966.25, 62.97, -6179.38)
            elseif MyLevel >= 1375 and MyLevel <= 1424 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Snow Lurker [Lv. 1375]", 2, "FrostQuest", "Snow Lurker", CFrame.new(5667.66, 26.8, -6486.09), CFrame.new(5407.07, 69.19, -6880.88)
            elseif MyLevel >= 1425 and MyLevel <= 1449 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Sea Soldier [Lv. 1425]", 1, "ForgottenQuest", "Sea Soldier", CFrame.new(-3054.44, 235.54, -10142.82), CFrame.new(-3028.22, 64.67, -9775.43)
            elseif MyLevel >= 1450 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Water Fighter [Lv. 1450]", 2, "ForgottenQuest", "Water Fighter", CFrame.new(-3054, 240, -10146), CFrame.new(-3291, 252, -10501)
            end
        elseif World3 then
            if MyLevel >= 1500 and MyLevel <= 1524 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Pirate Millionaire [Lv. 1500]", 1, "PiratePortQuest", "Pirate Millionaire", CFrame.new(-290.07, 42.9, 5581.59), CFrame.new(-246.0, 47.31, 5584.1)
            elseif MyLevel >= 1525 and MyLevel <= 1574 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Pistol Billionaire [Lv. 1525]", 2, "PiratePortQuest", "Pistol Billionaire", CFrame.new(-290.07, 42.9, 5581.59), CFrame.new(-187.33, 86.24, 6013.51)
            elseif MyLevel >= 1575 and MyLevel <= 1599 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Dragon Crew Warrior [Lv. 1575]", 1, "DragonCrewQuest", "Dragon Crew Warrior", CFrame.new(6738.96, 127.82, -713.51), CFrame.new(6920.71, 56.16, -942.5)
            elseif MyLevel >= 1600 and MyLevel <= 1624 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Dragon Crew Archer [Lv. 1600]", 2, "DragonCrewQuest", "Dragon Crew Archer", CFrame.new(6738.96, 127.82, -713.51), CFrame.new(6817.91, 484.8, 513.41)
            elseif MyLevel >= 1625 and MyLevel <= 1649 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Hydra Enforcer [Lv. 1625]", 1, "VenomCrewQuest", "Hydra Enforcer", CFrame.new(5213.87, 1004.5, 758.69), CFrame.new(4584.69, 1002.64, 705.8)
            elseif MyLevel >= 1650 and MyLevel <= 1699 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Venomous Assailant [Lv. 1650]", 2, "VenomCrewQuest", "Venomous Assailant", CFrame.new(5213.87, 1004.5, 758.69), CFrame.new(4638.79, 1078.94, 881.8)
            elseif MyLevel >= 1700 and MyLevel <= 1724 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Marine Commodore [Lv. 1700]", 1, "MarineTreeIsland", "Marine Commodore", CFrame.new(2180.54, 27.82, -6741.55), CFrame.new(2286.01, 73.13, -7159.81)
            elseif MyLevel >= 1725 and MyLevel <= 1774 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Marine Rear Admiral [Lv. 1725]", 2, "MarineTreeIsland", "Marine Rear Admiral", CFrame.new(2179.99, 28.73, -6740.06), CFrame.new(3656.77, 160.52, -7001.6)
            elseif MyLevel >= 1775 and MyLevel <= 1799 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Fishman Raider [Lv. 1775]", 1, "DeepForestIsland3", "Fishman Raider", CFrame.new(-10581.66, 330.87, -8761.19), CFrame.new(-10407.53, 331.76, -8368.52)
            elseif MyLevel >= 1800 and MyLevel <= 1824 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Fishman Captain [Lv. 1800]", 2, "DeepForestIsland3", "Fishman Captain", CFrame.new(-10581.66, 330.87, -8761.19), CFrame.new(-10994.7, 352.38, -9002.11)
            elseif MyLevel >= 1825 and MyLevel <= 1849 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Forest Pirate [Lv. 1825]", 1, "DeepForestIsland", "Forest Pirate", CFrame.new(-13234.04, 331.49, -7625.4), CFrame.new(-13274.48, 332.38, -7769.58)
            elseif MyLevel >= 1850 and MyLevel <= 1899 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Mythological Pirate [Lv. 1850]", 2, "DeepForestIsland", "Mythological Pirate", CFrame.new(-13234.04, 331.49, -7625.4), CFrame.new(-13680.61, 501.08, -6991.19)
            elseif MyLevel >= 1900 and MyLevel <= 1924 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Jungle Pirate [Lv. 1900]", 1, "DeepForestIsland2", "Jungle Pirate", CFrame.new(-12680.38, 389.97, -9902.02), CFrame.new(-12256.16, 331.74, -10485.84)
            elseif MyLevel >= 1925 and MyLevel <= 1974 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Musketeer Pirate [Lv. 1925]", 2, "DeepForestIsland2", "Musketeer Pirate", CFrame.new(-12680.38, 389.97, -9902.02), CFrame.new(-13457.9, 391.55, -9859.18)
            elseif MyLevel >= 1975 and MyLevel <= 1999 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Reborn Skeleton [Lv. 1975]", 1, "HauntedQuest1", "Reborn Skeleton", CFrame.new(-9479.22, 141.22, 5566.09), CFrame.new(-8763.72, 165.72, 6159.86)
            elseif MyLevel >= 2000 and MyLevel <= 2024 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Living Zombie [Lv. 2000]", 2, "HauntedQuest1", "Living Zombie", CFrame.new(-9479.22, 141.22, 5566.09), CFrame.new(-10144.13, 138.63, 5838.09)
            elseif MyLevel >= 2025 and MyLevel <= 2049 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Demonic Soul [Lv. 2025]", 1, "HauntedQuest2", "Demonic Soul", CFrame.new(-9516.99, 172.02, 6078.47), CFrame.new(-9505.87, 172.1, 6158.99)
            elseif MyLevel >= 2050 and MyLevel <= 2074 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Posessed Mummy [Lv. 2050]", 2, "HauntedQuest2", "Posessed Mummy", CFrame.new(-9516.99, 172.02, 6078.47), CFrame.new(-9582.02, 6.25, 6205.48)
            elseif MyLevel >= 2075 and MyLevel <= 2099 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Peanut Scout [Lv. 2075]", 1, "NutsIslandQuest", "Peanut Scout", CFrame.new(-2104.39, 38.1, -10194.22), CFrame.new(-2143.24, 47.72, -10030.0)
            elseif MyLevel >= 2100 and MyLevel <= 2124 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Peanut President [Lv. 2100]", 2, "NutsIslandQuest", "Peanut President", CFrame.new(-2104.39, 38.1, -10194.22), CFrame.new(-1859.35, 38.1, -10422.43)
            elseif MyLevel >= 2125 and MyLevel <= 2149 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ice Cream Chef [Lv. 2125]", 1, "IceCreamIslandQuest", "Ice Cream Chef", CFrame.new(-820.65, 65.82, -10965.8), CFrame.new(-872.25, 65.82, -10919.96)
            elseif MyLevel >= 2150 and MyLevel <= 2199 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ice Cream Commander [Lv. 2150]", 2, "IceCreamIslandQuest", "Ice Cream Commander", CFrame.new(-820.65, 65.82, -10965.8), CFrame.new(-558.06, 112.05, -11290.77)
            elseif MyLevel >= 2200 and MyLevel <= 2224 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Cookie Crafter [Lv. 2200]", 1, "CakeQuest1", "Cookie Crafter", CFrame.new(-2021.32, 37.8, -12028.73), CFrame.new(-2374.14, 37.8, -12125.31)
            elseif MyLevel >= 2225 and MyLevel <= 2249 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Cake Guard [Lv. 2225]", 2, "CakeQuest1", "Cake Guard", CFrame.new(-2021.32, 37.8, -12028.73), CFrame.new(-1598.31, 43.77, -12244.58)
            elseif MyLevel >= 2250 and MyLevel <= 2274 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Baking Staff [Lv. 2250]", 1, "CakeQuest2", "Baking Staff", CFrame.new(-1927.92, 37.8, -12842.54), CFrame.new(-1887.81, 77.62, -12998.35)
            elseif MyLevel >= 2275 and MyLevel <= 2299 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Head Baker [Lv. 2275]", 2, "CakeQuest2", "Head Baker", CFrame.new(-1927.92, 37.8, -12842.54), CFrame.new(-2216.19, 82.88, -12869.29)
            elseif MyLevel >= 2300 and MyLevel <= 2324 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Cocoa Warrior [Lv. 2300]", 1, "ChocQuest1", "Cocoa Warrior", CFrame.new(233.23, 29.88, -12201.23), CFrame.new(-21.55, 80.57, -12352.39)
            elseif MyLevel >= 2325 and MyLevel <= 2349 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Chocolate Bar Battler [Lv. 2325]", 2, "ChocQuest1", "Chocolate Bar Battler", CFrame.new(233.23, 29.88, -12201.23), CFrame.new(582.59, 77.19, -12463.16)
            elseif MyLevel >= 2350 and MyLevel <= 2374 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Sweet Thief [Lv. 2350]", 1, "ChocQuest2", "Sweet Thief", CFrame.new(150.51, 30.69, -12774.5), CFrame.new(165.19, 76.06, -12600.84)
            elseif MyLevel >= 2375 and MyLevel <= 2399 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Candy Rebel [Lv. 2375]", 2, "ChocQuest2", "Candy Rebel", CFrame.new(150.51, 30.69, -12774.5), CFrame.new(134.87, 77.25, -12876.55)
            elseif MyLevel >= 2400 and MyLevel <= 2424 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Candy Pirate [Lv. 2400]", 1, "CandyQuest1", "Candy Pirate", CFrame.new(-1150.04, 20.38, -14446.33), CFrame.new(-1310.5, 26.02, -14562.4)
            elseif MyLevel >= 2425 and MyLevel <= 2449 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Snow Demon [Lv. 2425]", 2, "CandyQuest1", "Snow Demon", CFrame.new(-1150.04, 20.38, -14446.33), CFrame.new(-880.2, 71.25, -14538.61)
            elseif MyLevel >= 2450 and MyLevel <= 2474 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Isle Outlaw [Lv. 2450]", 1, "TikiQuest1", "Isle Outlaw", CFrame.new(-16547.75, 61.14, -173.41), CFrame.new(-16442.81, 116.14, -264.46)
            elseif MyLevel >= 2475 and MyLevel <= 2524 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Island Boy [Lv. 2475]", 2, "TikiQuest1", "Island Boy", CFrame.new(-16547.75, 61.14, -173.41), CFrame.new(-16901.26, 84.07, -192.89)
            elseif MyLevel >= 2525 and MyLevel <= 2550 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Isle Champion [Lv. 2525]", 2, "TikiQuest2", "Isle Champion", CFrame.new(-16539.08, 55.69, 1051.57), CFrame.new(-16641.68, 235.78, 1031.28)
            elseif MyLevel >= 2550 and MyLevel <= 2574 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Serpent Hunter [Lv. 2550]", 1, "TikiQuest3", "Serpent Hunter", CFrame.new(-16665.19, 104.6, 1579.69), CFrame.new(-16521.06, 106.09, 1488.78)
            elseif MyLevel >= 2575 and MyLevel <= 2599 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Skull Slayer [Lv. 2575]", 2, "TikiQuest3", "Skull Slayer", CFrame.new(-16665.19, 104.6, 1579.69), CFrame.new(-16887.73, 113.07, 1629.98)
            elseif MyLevel >= 2600 and MyLevel <= 2624 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Reef Bandit [Lv. 2600]", 1, "SubmergedQuest1", "Reef Bandits", CFrame.new(10778.88, -2087.72, 9265.18), CFrame.new(11019.13, -2146.07, 9342.39)
            elseif MyLevel >= 2625 and MyLevel <= 2649 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Coral Pirate [Lv. 2625]", 2, "SubmergedQuest1", "Coral Pirates", CFrame.new(10778.88, -2087.72, 9265.18), CFrame.new(10808.6, -2030.36, 9364.23)
            elseif MyLevel >= 2650 and MyLevel <= 2674 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Sea Chanter [Lv. 2650]", 1, "SubmergedQuest2", "Sea Chanters", CFrame.new(10880.69, -2086.2, 10032.62), CFrame.new(10671.27, -2057.59, 10047.26)
            elseif MyLevel >= 2675 and MyLevel <= 2699 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Ocean Prophet [Lv. 2675]", 2, "SubmergedQuest2", "Ocean Prophets", CFrame.new(10880.69, -2086.2, 10032.62), CFrame.new(11008.52, -2007.73, 10223.08)
            elseif MyLevel >= 2700 and MyLevel <= 2724 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "High Disciple [Lv. 2700]", 1, "SubmergedQuest3", "High Disciple", CFrame.new(9640.09, -1992.45, 9613.65), CFrame.new(9750.42, -1966.94, 9753.36)
            elseif MyLevel >= 2725 then Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon = "Grand Devotee [Lv. 2725]", 2, "SubmergedQuest3", "Grand Devotee", CFrame.new(9640.09, -1992.45, 9613.65), CFrame.new(9611.71, -1993.47, 9882.69)
            end
        end
    end)
end

-- MOVEMENT & TWEEN
function topos(target)
    local gg = typeof(target) == "Vector3" and CFrame.new(target)
        or typeof(target) == "CFrame" and target
        or (target and target.CFrame)
    if not gg then return end
    
    local char = Player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local rootPart = char.HumanoidRootPart
    
    if activeTween then
        pcall(function() activeTween:Cancel() end)
    end
    
    local distance = (gg.Position - rootPart.Position).Magnitude
    local duration = math.clamp(distance / 300, 0.1, 5)
    
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local tween = TweenService:Create(rootPart, tweenInfo, {CFrame = gg})
    
    activeTween = tween
    shouldTween = true
    
    tween:Play()
    tween.Completed:Connect(function()
        if activeTween == tween then
            activeTween = nil
        end
    end)
    
    return tween
end

function notween(cf)
    shouldTween = false
    if activeTween then
        pcall(function() activeTween:Cancel() end)
        activeTween = nil
    end
    local c = Player.Character
    if c and c:FindFirstChild("HumanoidRootPart") then
        c.HumanoidRootPart.CFrame = cf
    end
end

-- WEAPON SYSTEM
function EquipWeapon(text)
    if not text then return end
    local char = Player.Character
    if not char or not char:FindFirstChild("Humanoid") then return end
    
    local tool = Player.Backpack:FindFirstChild(text)
    if tool and tool:IsA("Tool") then
        char.Humanoid:EquipTool(tool)
    end
end

function SelectWeapon()
    if not getgenv().AutoFarm then return nil end
    local wt = getgenv().SelectWeapon or "Melee"
    for _, v in pairs(Player.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == wt then
            EquipWeapon(v.Name)
            return v
        end
    end
    -- Fallback to Melee
    if wt ~= "Melee" then
        for _, v in pairs(Player.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == "Melee" then
                EquipWeapon(v.Name)
                return v
            end
        end
    end
    return nil
end

-- ATTACK SYSTEM
local attackBodyPosition = nil
local attackBodyGyro = nil
local attackConnection = nil

function AttackMonster(monster)
    if not monster or not monster.Parent or not getgenv().AutoFarm then return end
    
    local mHum = monster:FindFirstChild("Humanoid")
    local mRoot = monster:FindFirstChild("HumanoidRootPart")
    if not mHum or mHum.Health <= 0 or not mRoot then return end
    
    local char = Player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    -- Clean up old body movers
    if attackBodyPosition then attackBodyPosition:Destroy() end
    if attackBodyGyro then attackBodyGyro:Destroy() end
    if attackConnection then attackConnection:Disconnect() end
    
    local farmH = _G.FarmHeightValue or 20
    
    attackBodyPosition = Instance.new("BodyPosition")
    attackBodyPosition.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    attackBodyPosition.D = 1000
    attackBodyPosition.P = 100000
    attackBodyPosition.Parent = hrp
    
    attackBodyGyro = Instance.new("BodyGyro")
    attackBodyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
    attackBodyGyro.D = 100
    attackBodyGyro.P = 10000
    attackBodyGyro.Parent = hrp
    
    local lastActivate = 0
    
    attackConnection = RunService.Heartbeat:Connect(function()
        if not monster or not monster.Parent or not getgenv().AutoFarm then
            if attackConnection then attackConnection:Disconnect() end
            if attackBodyPosition then attackBodyPosition:Destroy() end
            if attackBodyGyro then attackBodyGyro:Destroy() end
            return
        end
        
        local mr = monster:FindFirstChild("HumanoidRootPart")
        local mh = monster:FindFirstChild("Humanoid")
        if not mr or not mh or mh.Health <= 0 then
            if attackConnection then attackConnection:Disconnect() end
            if attackBodyPosition then attackBodyPosition:Destroy() end
            if attackBodyGyro then attackBodyGyro:Destroy() end
            return
        end
        
        local targetPos = mr.Position + Vector3.new(0, farmH, 0)
        attackBodyPosition.Position = targetPos
        attackBodyGyro.CFrame = CFrame.new(targetPos, mr.Position)
        
        FarmPos = mr.CFrame
        MonFarm = monster.Name
        
        -- Auto attack
        if tick() - lastActivate > (getgenv().FastAttackSpeed or 0.08) then
            lastActivate = tick()
            local tool = char:FindFirstChildOfClass("Tool")
            if tool then
                pcall(function() tool:Activate() end)
            end
        end
    end)
end

-- BRING ENEMY
function BringEnemy()
    if not getgenv().AutoFarm or not getgenv().BringMob then return end
    
    local char = Player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    pcall(function()
        sethiddenproperty(Player, "SimulationRadius", 1e9)
        Player.MaximumSimulationRadius = 1e9
        Player.SimulationRadius = 1e9
    end)
    
    local enemies = Workspace:FindFirstChild("Enemies")
    if not enemies then return end
    
    local bringPos = hrp.CFrame
    local targetName = Mon
    
    if getgenv().FarmMode == "Aura Farm" and MonFarm then
        targetName = MonFarm
        if FarmPos then bringPos = FarmPos end
    end
    
    for _, mob in ipairs(enemies:GetChildren()) do
        if targetName and mob.Name ~= targetName then continue end
        
        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 and (root.Position - bringPos.Position).Magnitude <= 500 then
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
            hum:ChangeState(Enum.HumanoidStateType.Physics)
        end
    end
end

-- MAIN FARM LOOP
local function startMainLoop()
    if mainLoopRunning then return end
    mainLoopRunning = true
    
    local bringCd = 0
    
    local function onDied()
        if mainLoopRunning and getgenv().AutoFarm then
            mainLoopRunning = false
            auraTarget = nil
            repeat task.wait(0.5) until Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
            startMainLoop()
        end
    end
    
    if Player.Character and Player.Character:FindFirstChild("Humanoid") then
        Player.Character.Humanoid.Died:Connect(onDied)
    end
    
    task.spawn(function()
        while mainLoopRunning do
            task.wait(0.1)
            
            if not getgenv().AutoFarm then
                if attackConnection then attackConnection:Disconnect() end
                if attackBodyPosition then attackBodyPosition:Destroy() end
                if attackBodyGyro then attackBodyGyro:Destroy() end
                task.wait(0.5)
                continue
            end
            
            if not Player.Character or not Player.Character:FindFirstChild("HumanoidRootPart") then
                task.wait(0.5)
                continue
            end
            
            pcall(function()
                -- Auto Buso Haki
                if getgenv().AutoHakiBuso and not Player.Character:FindFirstChild("HasBuso") then
                    invokeCommF("Buso")
                end
                
                -- Select weapon
                SelectWeapon()
                
                if getgenv().FarmMode == "Aura Farm" then
                    -- AURA FARM
                    if auraTarget and (not auraTarget.Parent or (auraTarget:FindFirstChild("Humanoid") and auraTarget.Humanoid.Health <= 0)) then
                        auraTarget = nil
                    end
                    
                    if not auraTarget then
                        local bestDist = math.huge
                        local enemies = Workspace:FindFirstChild("Enemies")
                        if enemies then
                            for _, v in ipairs(enemies:GetChildren()) do
                                if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                    local dist = (v.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                                    if dist < bestDist and dist <= 5000 then
                                        bestDist = dist
                                        auraTarget = v
                                    end
                                end
                            end
                        end
                    end
                    
                    if auraTarget then
                        AttackMonster(auraTarget)
                        if getgenv().BringMob and tick() - bringCd > 3 then
                            bringCd = tick()
                            BringEnemy()
                        end
                    end
                    
                else
                    -- LEVEL FARM
                    CheckQuest()
                    if not Mon then return end
                    
                    local mainGui = PlayerGui:FindFirstChild("Main")
                    if not mainGui then return end
                    
                    local quest = mainGui:FindFirstChild("Quest")
                    if not quest then return end
                    
                    if not quest.Visible then
                        -- Take quest
                        lastMonster = nil
                        topos(CFrameMon + Vector3.new(0, 5, 0))
                        task.wait(0.5)
                        invokeCommF("StartQuest", NameQuest, LevelQuest)
                    else
                        -- Check if quest matches
                        local container = quest:FindFirstChild("Container")
                        local questTitle = container and container:FindFirstChild("QuestTitle")
                        local title = questTitle and questTitle:FindFirstChild("Title")
                        
                        if title and title:IsA("TextLabel") then
                            if not string.find(title.Text, NameMon) then
                                -- Wrong quest, abandon
                                lastMonster = nil
                                invokeCommF("AbandonQuest")
                                task.wait(0.2)
                            else
                                -- Find and attack monster
                                local target = nil
                                local enemies = Workspace:FindFirstChild("Enemies")
                                if enemies then
                                    for _, v in ipairs(enemies:GetChildren()) do
                                        if v:IsA("Model") and v.Name == Mon and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                            target = v
                                            break
                                        end
                                    end
                                end
                                
                                if target then
                                    AttackMonster(target)
                                    lastMonster = target
                                else
                                    lastMonster = nil
                                    topos(CFrameMon + Vector3.new(0, getgenv().FarmHeight or 20, 0))
                                end
                                
                                if getgenv().BringMob and tick() - bringCd > 3 then
                                    bringCd = tick()
                                    BringEnemy()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
end
startMainLoop()

-- =============================================
-- AUTO FEATURES
-- =============================================

-- Auto Random Fruit
task.spawn(function()
    while task.wait(getgenv().RandomFruitInterval) do
        pcall(function()
            if getgenv().AutoRandomFruit and getCommF() then
                invokeCommF("Cousin", "Buy")
            end
        end)
    end
end)

-- Auto Race V3/V4
task.spawn(function()
    while task.wait(5) do
        pcall(function()
            if getgenv().AutoRaceV3 and getCommF() then
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.T, false, nil)
                task.wait(0.1)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.T, false, nil)
            end
            if getgenv().AutoRaceV4 and getCommF() then
                invokeCommF("ActivateRace", "V4")
            end
        end)
    end
end)

-- Auto Buy Haki
task.spawn(function()
    while task.wait(5) do
        pcall(function()
            local data = Player:FindFirstChild("Data")
            if not data then return end
            local beli = data:FindFirstChild("Beli") and data.Beli.Value or 0
            local char = Player.Character
            local backpack = Player:FindFirstChild("Backpack")
            if not char or not backpack then return end
            
            if getgenv().AutoBuyGeppo and beli >= 10000 and not char:FindFirstChild("Geppo") and not backpack:FindFirstChild("Geppo") then
                invokeCommF("BuyHaki", "Geppo")
            end
            if getgenv().AutoBuyBuso and beli >= 25000 and not char:FindFirstChild("HasBuso") and not backpack:FindFirstChild("HasBuso") then
                invokeCommF("BuyHaki", "Buso")
            end
            if getgenv().AutoBuySoru and beli >= 25000 and not char:FindFirstChild("Soru") and not backpack:FindFirstChild("Soru") then
                invokeCommF("BuyHaki", "Soru")
            end
            if getgenv().AutoBuyObservation and beli >= 750000 and not char:FindFirstChild("VisionRadius") and not backpack:FindFirstChild("VisionRadius") then
                invokeCommF("KenTalk", "Buy")
            end
        end)
    end
end)


task.spawn(function()
    repeat task.wait(0.5) until PlayerGui:FindFirstChild("Main")
    task.wait(2)
    
    local Library = nil
    
    -- Try loading UI library
    local libSuccess, libResult = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenThang2007/Roblox-UI-Libs/main/OrionLibrary.lua"))()
    end)
    
    if libSuccess and libResult then
        Library = libResult
    else
        -- Try Rayfield as fallback
        local raySuccess, rayResult = pcall(function()
            return loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()
        end)
        if raySuccess and rayResult then
            Library = rayResult
        end
    end
    
    if not Library then
        warn("No UI Library loaded!")
        return
    end
    
    -- CREATE WINDOW
    local Window
    local useOrion = false
    
    pcall(function()
        Window = Library:MakeWindow({
            Name = "Banana Cat Hub",
            HidePremium = false,
            SaveConfig = false,
            ConfigFolder = "BananaHub"
        })
        useOrion = true
    end)
    
    if not Window then
        pcall(function()
            Window = Library:CreateWindow({
                Name = "Banana Cat Hub",
                LoadingTitle = "Loading...",
                LoadingSubtitle = "by Phuc Ngo"
            })
        end)
    end
    
    if not Window then return end
    
    -- TABS
    local MainTab
    local ShopTab
    local ServerTab
    local SettingsTab
    
    if useOrion then
        MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})
        ShopTab = Window:MakeTab({Name = "Shop", Icon = "rbxassetid://4483345998", PremiumOnly = false})
        ServerTab = Window:MakeTab({Name = "Server", Icon = "rbxassetid://4483345998", PremiumOnly = false})
        SettingsTab = Window:MakeTab({Name = "Settings", Icon = "rbxassetid://4483345998", PremiumOnly = false})
    else
        MainTab = Window:CreateTab("Main")
        ShopTab = Window:CreateTab("Shop")
        ServerTab = Window:CreateTab("Server")
        SettingsTab = Window:CreateTab("Settings")
    end
    
    -- === MAIN TAB ===
    local function addToggle(tab, name, default, callback, flagName)
        if useOrion then
            return tab:AddToggle({
                Name = name,
                Default = default,
                Flag = flagName or name,
                Save = true,
                Callback = callback
            })
        else
            return tab:CreateToggle({
                Name = name,
                CurrentValue = default,
                Flag = flagName or name,
                Callback = callback
            })
        end
    end
    
    local function addDropdown(tab, name, options, default, callback, flagName)
        if useOrion then
            return tab:AddDropdown({
                Name = name,
                Default = default,
                Options = options,
                Flag = flagName or name,
                Save = true,
                Callback = callback
            })
        else
            return tab:CreateDropdown({
                Name = name,
                Options = options,
                CurrentOption = default,
                Flag = flagName or name,
                Callback = callback
            })
        end
    end
    
    local function addButton(tab, name, callback)
        if useOrion then
            return tab:AddButton({Name = name, Callback = callback})
        else
            return tab:CreateButton({Name = name, Callback = callback})
        end
    end
    
    local function addSection(tab, name)
        if useOrion then
            return tab:AddSection({Name = name})
        else
            return tab:CreateSection(name)
        end
    end
    
    -- Main Tab Content
    if useOrion then addSection(MainTab, "Farm Settings") else addSection(MainTab, "Farm Settings") end
    
    addDropdown(MainTab, "Farm Mode", {"Level Farm", "Aura Farm", "Farm Bones", "Farm Katakuri"}, "Level Farm", function(v)
        getgenv().FarmMode = v
        auraTarget = nil
        SaveConfig()
    end, "FarmModeSelect")
    
    addToggle(MainTab, "Auto Farm", false, function(v)
        getgenv().AutoFarm = v
        if v then
            getgenv().BringMob = true
        else
            if attackConnection then attackConnection:Disconnect() end
            if attackBodyPosition then attackBodyPosition:Destroy() end
            if attackBodyGyro then attackBodyGyro:Destroy() end
            shouldTween = false
            auraTarget = nil
            local h = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
            if h then
                h.Anchored = false
                h.AssemblyLinearVelocity = Vector3.zero
            end
        end
        SaveConfig()
    end, "AutoFarmToggle")
    
    addDropdown(MainTab, "Weapon", {"Melee", "Sword", "Gun", "Blox Fruit"}, "Melee", function(v)
        getgenv().SelectWeapon = v
        SaveConfig()
    end, "WeaponSelect")
    
    -- Shop Tab
    if useOrion then addSection(ShopTab, "Fighting Styles") else addSection(ShopTab, "Fighting Styles") end
    
    local shopData = {
        {"Black Leg", CFrame.new(1065, 15, 1565), {"BuyBlackLeg"}},
        {"Fishman Karate", CFrame.new(61150, 18, 1560), {"BuyFishmanKarate"}},
        {"Electro", CFrame.new(-4640, 855, -1940), {"BuyElectro"}},
        {"Dragon Breath", CFrame.new(-5300, 80, 3900), {"BlackbeardReward", "DragonClaw", "1"}, {"BlackbeardReward", "DragonClaw", "2"}},
        {"SuperHuman", CFrame.new(-680, 23, 1500), {"BuySuperhuman"}},
        {"Death Step", CFrame.new(-780, 75, 1400), {"BuyDeathStep"}},
        {"Sharkman Karate", CFrame.new(-3050, 245, -10140), {"BuySharkmanKarate"}},
        {"Electric Claw", CFrame.new(-10370, 335, -8800), {"BuyElectricClaw"}},
        {"Dragon Talon", CFrame.new(-5800, 80, 3800), {"BuyDragonTalon"}},
        {"God Human", CFrame.new(-600, 25, 1800), {"BuyGodhuman"}},
        {"Sanguine Art", CFrame.new(10880, -1980, 9610), {"BuySanguineArt"}},
    }
    
    for _, d in ipairs(shopData) do
        addButton(ShopTab, d[1], function()
            topos(d[2])
            task.wait(0.5)
            if d[3] then invokeCommF(unpack(d[3])) end
            if d[4] then invokeCommF(unpack(d[4])) end
        end)
    end
    
    -- Settings Tab
    addToggle(SettingsTab, "Bring Mob", true, function(v)
        getgenv().BringMob = v
        SaveConfig()
    end, "BringMobToggle")
    
    addToggle(SettingsTab, "Auto Buso Haki", true, function(v)
        getgenv().AutoHakiBuso = v
        SaveConfig()
    end, "AutoHakiToggle")
    
    addToggle(SettingsTab, "Auto Random Fruit", false, function(v)
        getgenv().AutoRandomFruit = v
        SaveConfig()
    end, "AutoRandomFruitToggle")
    
    addToggle(SettingsTab, "Auto Race V3 (T)", false, function(v)
        getgenv().AutoRaceV3 = v
        SaveConfig()
    end, "AutoRaceV3Toggle")
    
    addToggle(SettingsTab, "Auto Race V4", false, function(v)
        getgenv().AutoRaceV4 = v
        SaveConfig()
    end, "AutoRaceV4Toggle")
    
    addToggle(SettingsTab, "Auto Buy Geppo", false, function(v)
        getgenv().AutoBuyGeppo = v
        SaveConfig()
    end, "AutoBuyGeppoToggle")
    
    addToggle(SettingsTab, "Auto Buy Buso", false, function(v)
        getgenv().AutoBuyBuso = v
        SaveConfig()
    end, "AutoBuyBusoToggle")
    
    addToggle(SettingsTab, "Auto Buy Soru", false, function(v)
        getgenv().AutoBuySoru = v
        SaveConfig()
    end, "AutoBuySoruToggle")
    
    addToggle(SettingsTab, "Auto Buy Observation", false, function(v)
        getgenv().AutoBuyObservation = v
        SaveConfig()
    end, "AutoBuyObservationToggle")
    
    -- Server Tab
    addSection(ServerTab, "Info")
    if useOrion then
        ServerTab:AddLabel("Player: " .. Player.Name)
        ServerTab:AddLabel("Place: " .. game.PlaceId)
    end
    
    addButton(ServerTab, "Rejoin Server", function()
        SaveConfig()
        game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
    end)
    
    addButton(ServerTab, "Copy Game ID", function()
        if setclipboard then setclipboard(tostring(game.PlaceId)) end
    end)
    
    -- Notify
    pcall(function()
        if useOrion then
            Library:MakeNotification({Name = "Loaded!", Content = "Banana Cat Hub ready. Press V to toggle.", Image = "rbxassetid://4483345998", Time = 5})
        end
    end)
    
    print("Banana Cat Hub loaded successfully!")
end)
