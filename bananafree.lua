-- ==================== KHAI BÁO ĐẦU ====================
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer.Character

local Player = game.Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local vim = VirtualInputManager
local camera = Workspace.CurrentCamera
local PlayerGui = Player:WaitForChild("PlayerGui", 5)

-- ==================== safeWait PHẢI Ở ĐÂY ====================
local function safeWait(t)
    if type(task) ~= "nil" and type(task.wait) == "function" then
        return task.wait(t)
    else
        return wait(t)
    end
end

-- ==================== BIẾN TOÀN CỤC ====================
local C = Instance.new("Part", Workspace)
C.Size = Vector3.new(1, 1, 1)
C.Name = "TweenPart"
C.Anchored = true
C.CanCollide = false
C.CanTouch = false
C.Transparency = 1
getgenv().AutoFarm = false
getgenv().SelectWeapon = "Melee"
getgenv().BringMob = true
getgenv().AutoHakiBuso = true
getgenv().FastAttackSpeed = 0.067
getgenv().TweenSpeedFar = 370
getgenv().TweenSpeedNear = 370
shouldTween = false
getgenv().OnFarm = true

-- ==================== DETECT GAME ====================
local isBloxFruit = false
pcall(function()
    if ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_") then
        isBloxFruit = true
    end
end)

local World1 = game.PlaceId == 2753915549
local World2 = game.PlaceId == 4442272183
local World3 = game.PlaceId == 7449423635

-- ==================== FAST ATTACK (TURBOLITE V2 STYLE) ====================
local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")

local function GetBladeHits()
    local hits = {}
    local c = Player.Character
    if not c then return hits end
    local hrp = c:FindFirstChild("HumanoidRootPart")
    if not hrp then return hits end
    local pos = hrp.Position
    for _, p in pairs({Workspace.Enemies, Workspace.Characters}) do
        for _, v in pairs(p:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") then
                if v.Humanoid.Health > 0 and v ~= c then
                    local dist = (v.HumanoidRootPart.Position - pos).Magnitude
                    if dist < 65 then
                        table.insert(hits, v)
                    end
                end
            end
        end
    end
    return hits
end

local function FastAttackAll()
    local c = Player.Character
    if not c then return end
    local tool = c:FindFirstChildOfClass("Tool")
    if not tool then return end
    local hits = GetBladeHits()
    if #hits == 0 then return end
    local args = {[1] = nil, [2] = {}}
    for i, v in ipairs(hits) do
        if not args[1] then args[1] = v.Head end
        args[2][i] = {v, v.HumanoidRootPart}
    end
    RegisterAttack:FireServer(0)
    RegisterHit:FireServer(unpack(args))
end

task.spawn(function()
    while safeWait(getgenv().FastAttackSpeed) do
        if getgenv().AutoFarm then
            pcall(FastAttackAll)
        end
    end
end)

-- ==================== CHECK QUEST ====================
local Mon = nil
local LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon

function CheckQuest()
    if not isBloxFruit then return end
    pcall(function()
        if not Player:FindFirstChild("Data") or not Player.Data:FindFirstChild("Level") then return end
        local MyLevel = Player.Data.Level.Value

        if World1 then
            if MyLevel >= 1 and MyLevel <= 9 then
                Mon = "Bandit"; LevelQuest = 1; NameQuest = "BanditQuest1"; NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231)
                CFrameMon = CFrame.new(1045.9626, 27.0025, 1560.8203)
            elseif MyLevel >= 10 and MyLevel <= 14 then
                Mon = "Monkey"; LevelQuest = 1; NameQuest = "JungleQuest"; NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838)
                CFrameMon = CFrame.new(-1448.518, 67.853, 11.465)
            elseif MyLevel >= 15 and MyLevel <= 29 then
                Mon = "Gorilla"; LevelQuest = 2; NameQuest = "JungleQuest"; NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838)
                CFrameMon = CFrame.new(-1129.883, 40.463, -525.423)
            elseif MyLevel >= 30 and MyLevel <= 39 then
                Mon = "Pirate"; LevelQuest = 1; NameQuest = "BuggyQuest1"; NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
                CFrameMon = CFrame.new(-1103.513, 13.752, 3896.091)
            elseif MyLevel >= 40 and MyLevel <= 59 then
                Mon = "Brute"; LevelQuest = 2; NameQuest = "BuggyQuest1"; NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
                CFrameMon = CFrame.new(-1140.083, 14.809, 4322.921)
            elseif MyLevel >= 60 and MyLevel <= 74 then
                Mon = "Desert Bandit"; LevelQuest = 1; NameQuest = "DesertQuest"; NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359)
                CFrameMon = CFrame.new(924.799, 6.448, 4481.585)
            elseif MyLevel >= 75 and MyLevel <= 89 then
                Mon = "Desert Officer"; LevelQuest = 2; NameQuest = "DesertQuest"; NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359)
                CFrameMon = CFrame.new(1608.282, 8.614, 4371.007)
            elseif MyLevel >= 90 and MyLevel <= 99 then
                Mon = "Snow Bandit"; LevelQuest = 1; NameQuest = "SnowQuest"; NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796)
                CFrameMon = CFrame.new(1354.347, 87.272, -1393.946)
            elseif MyLevel >= 100 and MyLevel <= 119 then
                Mon = "Snowman"; LevelQuest = 2; NameQuest = "SnowQuest"; NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796)
                CFrameMon = CFrame.new(1201.641, 144.579, -1550.067)
            elseif MyLevel >= 120 and MyLevel <= 149 then
                Mon = "Chief Petty Officer"; LevelQuest = 1; NameQuest = "MarineQuest2"; NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018)
                CFrameMon = CFrame.new(-4881.230, 22.652, 4273.752)
            elseif MyLevel >= 150 and MyLevel <= 174 then
                Mon = "Sky Bandit"; LevelQuest = 1; NameQuest = "SkyQuest"; NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165)
                CFrameMon = CFrame.new(-4953.207, 295.744, -2899.229)
            elseif MyLevel >= 175 and MyLevel <= 189 then
                Mon = "Dark Master"; LevelQuest = 2; NameQuest = "SkyQuest"; NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165)
                CFrameMon = CFrame.new(-5259.844, 391.397, -2229.035)
            elseif MyLevel >= 190 and MyLevel <= 209 then
                Mon = "Prisoner"; LevelQuest = 1; NameQuest = "PrisonerQuest"; NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514)
                CFrameMon = CFrame.new(5098.973, -0.320, 474.237)
            elseif MyLevel >= 210 and MyLevel <= 249 then
                Mon = "Dangerous Prisoner"; LevelQuest = 2; NameQuest = "PrisonerQuest"; NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514)
                CFrameMon = CFrame.new(5654.563, 15.633, 866.299)
            elseif MyLevel >= 250 and MyLevel <= 274 then
                Mon = "Toga Warrior"; LevelQuest = 1; NameQuest = "ColosseumQuest"; NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
                CFrameMon = CFrame.new(-1820.214, 51.683, -2740.665)
            elseif MyLevel >= 275 and MyLevel <= 299 then
                Mon = "Gladiator"; LevelQuest = 2; NameQuest = "ColosseumQuest"; NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
                CFrameMon = CFrame.new(-1292.838, 56.380, -3339.031)
            elseif MyLevel >= 300 and MyLevel <= 324 then
                Mon = "Military Soldier"; LevelQuest = 1; NameQuest = "MagmaQuest"; NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
                CFrameMon = CFrame.new(-5411.164, 11.081, 8454.292)
            elseif MyLevel >= 325 and MyLevel <= 374 then
                Mon = "Military Spy"; LevelQuest = 2; NameQuest = "MagmaQuest"; NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
                CFrameMon = CFrame.new(-5802.868, 86.262, 8828.859)
            elseif MyLevel >= 375 and MyLevel <= 399 then
                Mon = "Fishman Warrior"; LevelQuest = 1; NameQuest = "FishmanQuest"; NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.300, 18.482, 1543.757)
                pcall(function()
                    if isBloxFruit then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    end
                end)
            elseif MyLevel >= 400 and MyLevel <= 449 then
                Mon = "Fishman Commando"; LevelQuest = 2; NameQuest = "FishmanQuest"; NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.632, 18.482, 1493.934)
                pcall(function()
                    if isBloxFruit then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    end
                end)
            elseif MyLevel >= 450 and MyLevel <= 474 then
                Mon = "God's Guard"; LevelQuest = 1; NameQuest = "SkyExp1Quest"; NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643)
                CFrameMon = CFrame.new(-4710.042, 845.276, -1927.307)
                pcall(function()
                    if isBloxFruit then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
                    end
                end)
            elseif MyLevel >= 475 and MyLevel <= 524 then
                Mon = "Shanda"; LevelQuest = 2; NameQuest = "SkyExp1Quest"; NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196)
                CFrameMon = CFrame.new(-7678.489, 5566.403, -497.215)
                pcall(function()
                    if isBloxFruit then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    end
                end)
            elseif MyLevel >= 525 and MyLevel <= 549 then
                Mon = "Royal Squad"; LevelQuest = 1; NameQuest = "SkyExp2Quest"; NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
                CFrameMon = CFrame.new(-7624.252, 5658.133, -1467.354)
            elseif MyLevel >= 550 and MyLevel <= 624 then
                Mon = "Royal Soldier"; LevelQuest = 2; NameQuest = "SkyExp2Quest"; NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
                CFrameMon = CFrame.new(-7836.753, 5645.664, -1790.623)
            elseif MyLevel >= 625 and MyLevel <= 649 then
                Mon = "Galley Pirate"; LevelQuest = 1; NameQuest = "FountainQuest"; NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293)
                CFrameMon = CFrame.new(5551.021, 78.901, 3930.412)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"; LevelQuest = 2; NameQuest = "FountainQuest"; NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293)
                CFrameMon = CFrame.new(5441.951, 42.502, 4950.093)
            end
        elseif World2 then
            if MyLevel >= 700 and MyLevel <= 724 then Mon = "Raider"; LevelQuest = 1; NameQuest = "Area1Quest"; NameMon = "Raider"; CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188); CFrameMon = CFrame.new(-728.326, 52.779, 2345.770)
            elseif MyLevel >= 725 and MyLevel <= 774 then Mon = "Mercenary"; LevelQuest = 2; NameQuest = "Area1Quest"; NameMon = "Mercenary"; CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188); CFrameMon = CFrame.new(-1004.324, 80.158, 1424.619)
            elseif MyLevel >= 775 and MyLevel <= 799 then Mon = "Swan Pirate"; LevelQuest = 1; NameQuest = "Area2Quest"; NameMon = "Swan Pirate"; CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898); CFrameMon = CFrame.new(1068.664, 137.614, 1322.106)
            elseif MyLevel >= 800 and MyLevel <= 874 then Mon = "Factory Staff"; LevelQuest = 2; NameQuest = "Area2Quest"; NameMon = "Factory Staff"; CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321); CFrameMon = CFrame.new(73.078, 81.863, -27.470)
            elseif MyLevel >= 875 and MyLevel <= 899 then Mon = "Marine Lieutenant"; LevelQuest = 1; NameQuest = "MarineQuest3"; NameMon = "Marine Lieutenant"; CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812); CFrameMon = CFrame.new(-2821.372, 75.897, -3070.089)
            elseif MyLevel >= 900 and MyLevel <= 949 then Mon = "Marine Captain"; LevelQuest = 2; NameQuest = "MarineQuest3"; NameMon = "Marine Captain"; CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812); CFrameMon = CFrame.new(-1861.231, 80.176, -3254.697)
            elseif MyLevel >= 950 and MyLevel <= 974 then Mon = "Zombie"; LevelQuest = 1; NameQuest = "ZombieQuest"; NameMon = "Zombie"; CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061); CFrameMon = CFrame.new(-5657.776, 78.969, -928.687)
            elseif MyLevel >= 975 and MyLevel <= 999 then Mon = "Vampire"; LevelQuest = 2; NameQuest = "ZombieQuest"; NameMon = "Vampire"; CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061); CFrameMon = CFrame.new(-6037.667, 32.184, -1340.659)
            elseif MyLevel >= 1000 and MyLevel <= 1049 then Mon = "Snow Trooper"; LevelQuest = 1; NameQuest = "SnowMountainQuest"; NameMon = "Snow Trooper"; CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928); CFrameMon = CFrame.new(549.147, 427.387, -5563.698)
            elseif MyLevel >= 1050 and MyLevel <= 1099 then Mon = "Winter Warrior"; LevelQuest = 2; NameQuest = "SnowMountainQuest"; NameMon = "Winter Warrior"; CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928); CFrameMon = CFrame.new(1142.745, 475.639, -5199.416)
            elseif MyLevel >= 1100 and MyLevel <= 1124 then Mon = "Lab Subordinate"; LevelQuest = 1; NameQuest = "IceSideQuest"; NameMon = "Lab Subordinate"; CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852); CFrameMon = CFrame.new(-5707.471, 15.951, -4513.392)
            elseif MyLevel >= 1125 and MyLevel <= 1174 then Mon = "Horned Warrior"; LevelQuest = 2; NameQuest = "IceSideQuest"; NameMon = "Horned Warrior"; CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852); CFrameMon = CFrame.new(-6341.366, 15.951, -5723.162)
            elseif MyLevel >= 1175 and MyLevel <= 1199 then Mon = "Magma Ninja"; LevelQuest = 1; NameQuest = "FireSideQuest"; NameMon = "Magma Ninja"; CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457); CFrameMon = CFrame.new(-5449.672, 76.658, -5808.200)
            elseif MyLevel >= 1200 and MyLevel <= 1249 then Mon = "Lava Pirate"; LevelQuest = 2; NameQuest = "FireSideQuest"; NameMon = "Lava Pirate"; CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457); CFrameMon = CFrame.new(-5213.331, 49.737, -4701.451)
            elseif MyLevel >= 1250 and MyLevel <= 1274 then Mon = "Ship Deckhand"; LevelQuest = 1; NameQuest = "ShipQuest1"; NameMon = "Ship Deckhand"; CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016); CFrameMon = CFrame.new(1212.011, 150.792, 33059.246)
            elseif MyLevel >= 1275 and MyLevel <= 1299 then Mon = "Ship Engineer"; LevelQuest = 2; NameQuest = "ShipQuest1"; NameMon = "Ship Engineer"; CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016); CFrameMon = CFrame.new(919.478, 43.544, 32779.968)
            elseif MyLevel >= 1300 and MyLevel <= 1324 then Mon = "Ship Steward"; LevelQuest = 1; NameQuest = "ShipQuest2"; NameMon = "Ship Steward"; CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125); CFrameMon = CFrame.new(919.438, 129.555, 33436.035)
            elseif MyLevel >= 1325 and MyLevel <= 1349 then Mon = "Ship Officer"; LevelQuest = 2; NameQuest = "ShipQuest2"; NameMon = "Ship Officer"; CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125); CFrameMon = CFrame.new(1036.017, 181.439, 33315.726)
            elseif MyLevel >= 1350 and MyLevel <= 1374 then Mon = "Arctic Warrior"; LevelQuest = 1; NameQuest = "FrostQuest"; NameMon = "Arctic Warrior"; CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984); CFrameMon = CFrame.new(5966.246, 62.970, -6179.382)
            elseif MyLevel >= 1375 and MyLevel <= 1424 then Mon = "Snow Lurker"; LevelQuest = 2; NameQuest = "FrostQuest"; NameMon = "Snow Lurker"; CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984); CFrameMon = CFrame.new(5407.073, 69.194, -6880.880)
            elseif MyLevel >= 1425 and MyLevel <= 1449 then Mon = "Sea Soldier"; LevelQuest = 1; NameQuest = "ForgottenQuest"; NameMon = "Sea Soldier"; CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193); CFrameMon = CFrame.new(-3028.223, 64.674, -9775.426)
            elseif MyLevel >= 1450 then Mon = "Water Fighter"; LevelQuest = 2; NameQuest = "ForgottenQuest"; NameMon = "Water Fighter"; CFrameQuest = CFrame.new(-3054, 240, -10146); CFrameMon = CFrame.new(-3291, 252, -10501)
            end
        elseif World3 then
            if MyLevel >= 1500 and MyLevel <= 1524 then Mon = "Pirate Millionaire"; LevelQuest = 1; NameQuest = "PiratePortQuest"; NameMon = "Pirate Millionaire"; CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984); CFrameMon = CFrame.new(-245.996, 47.306, 5584.100)
            elseif MyLevel >= 1525 and MyLevel <= 1574 then Mon = "Pistol Billionaire"; LevelQuest = 2; NameQuest = "PiratePortQuest"; NameMon = "Pistol Billionaire"; CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984); CFrameMon = CFrame.new(-187.330, 86.239, 6013.513)
            elseif MyLevel >= 1575 and MyLevel <= 1599 then Mon = "Dragon Crew Warrior"; LevelQuest = 1; NameQuest = "DragonCrewQuest"; NameMon = "Dragon Crew Warrior"; CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375); CFrameMon = CFrame.new(6920.714, 56.155, -942.504)
            elseif MyLevel >= 1600 and MyLevel <= 1624 then Mon = "Dragon Crew Archer"; LevelQuest = 2; NameQuest = "DragonCrewQuest"; NameMon = "Dragon Crew Archer"; CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375); CFrameMon = CFrame.new(6817.912, 484.804, 513.414)
            elseif MyLevel >= 1625 and MyLevel <= 1649 then Mon = "Hydra Enforcer"; LevelQuest = 1; NameQuest = "VenomCrewQuest"; NameMon = "Hydra Enforcer"; CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125); CFrameMon = CFrame.new(4584.692, 1002.643, 705.795)
            elseif MyLevel >= 1650 and MyLevel <= 1699 then Mon = "Venomous Assailant"; LevelQuest = 2; NameQuest = "VenomCrewQuest"; NameMon = "Venomous Assailant"; CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125); CFrameMon = CFrame.new(4638.785, 1078.940, 881.800)
            elseif MyLevel >= 1700 and MyLevel <= 1724 then Mon = "Marine Commodore"; LevelQuest = 1; NameQuest = "MarineTreeIsland"; NameMon = "Marine Commodore"; CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498); CFrameMon = CFrame.new(2286.007, 73.133, -7159.809)
            elseif MyLevel >= 1725 and MyLevel <= 1774 then Mon = "Marine Rear Admiral"; LevelQuest = 2; NameQuest = "MarineTreeIsland"; NameMon = "Marine Rear Admiral"; CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813); CFrameMon = CFrame.new(3656.773, 160.524, -7001.598)
            elseif MyLevel >= 1775 and MyLevel <= 1799 then Mon = "Fishman Raider"; LevelQuest = 1; NameQuest = "DeepForestIsland3"; NameMon = "Fishman Raider"; CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652); CFrameMon = CFrame.new(-10407.526, 331.762, -8368.516)
            elseif MyLevel >= 1800 and MyLevel <= 1824 then Mon = "Fishman Captain"; LevelQuest = 2; NameQuest = "DeepForestIsland3"; NameMon = "Fishman Captain"; CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652); CFrameMon = CFrame.new(-10994.701, 352.381, -9002.110)
            elseif MyLevel >= 1825 and MyLevel <= 1849 then Mon = "Forest Pirate"; LevelQuest = 1; NameQuest = "DeepForestIsland"; NameMon = "Forest Pirate"; CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137); CFrameMon = CFrame.new(-13274.478, 332.378, -7769.580)
            elseif MyLevel >= 1850 and MyLevel <= 1899 then Mon = "Mythological Pirate"; LevelQuest = 2; NameQuest = "DeepForestIsland"; NameMon = "Mythological Pirate"; CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137); CFrameMon = CFrame.new(-13680.607, 501.081, -6991.189)
            elseif MyLevel >= 1900 and MyLevel <= 1924 then Mon = "Jungle Pirate"; LevelQuest = 1; NameQuest = "DeepForestIsland2"; NameMon = "Jungle Pirate"; CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953); CFrameMon = CFrame.new(-12256.160, 331.738, -10485.836)
            elseif MyLevel >= 1925 and MyLevel <= 1974 then Mon = "Musketeer Pirate"; LevelQuest = 2; NameQuest = "DeepForestIsland2"; NameMon = "Musketeer Pirate"; CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953); CFrameMon = CFrame.new(-13457.904, 391.545, -9859.177)
            elseif MyLevel >= 1975 and MyLevel <= 1999 then Mon = "Reborn Skeleton"; LevelQuest = 1; NameQuest = "HauntedQuest1"; NameMon = "Reborn Skeleton"; CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277); CFrameMon = CFrame.new(-8763.723, 165.722, 6159.861)
            elseif MyLevel >= 2000 and MyLevel <= 2024 then Mon = "Living Zombie"; LevelQuest = 2; NameQuest = "HauntedQuest1"; NameMon = "Living Zombie"; CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277); CFrameMon = CFrame.new(-10144.131, 138.626, 5838.088)
            elseif MyLevel >= 2025 and MyLevel <= 2049 then Mon = "Demonic Soul"; LevelQuest = 1; NameQuest = "HauntedQuest2"; NameMon = "Demonic Soul"; CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533); CFrameMon = CFrame.new(-9505.872, 172.104, 6158.993)
            elseif MyLevel >= 2050 and MyLevel <= 2074 then Mon = "Posessed Mummy"; LevelQuest = 2; NameQuest = "HauntedQuest2"; NameMon = "Posessed Mummy"; CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533); CFrameMon = CFrame.new(-9582.022, 6.251, 6205.478)
            elseif MyLevel >= 2075 and MyLevel <= 2099 then Mon = "Peanut Scout"; LevelQuest = 1; NameQuest = "NutsIslandQuest"; NameMon = "Peanut Scout"; CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875); CFrameMon = CFrame.new(-2143.241, 47.721, -10029.995)
            elseif MyLevel >= 2100 and MyLevel <= 2124 then Mon = "Peanut President"; LevelQuest = 2; NameQuest = "NutsIslandQuest"; NameMon = "Peanut President"; CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875); CFrameMon = CFrame.new(-1859.354, 38.103, -10422.429)
            elseif MyLevel >= 2125 and MyLevel <= 2149 then Mon = "Ice Cream Chef"; LevelQuest = 1; NameQuest = "IceCreamIslandQuest"; NameMon = "Ice Cream Chef"; CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438); CFrameMon = CFrame.new(-872.246, 65.819, -10919.957)
            elseif MyLevel >= 2150 and MyLevel <= 2199 then Mon = "Ice Cream Commander"; LevelQuest = 2; NameQuest = "IceCreamIslandQuest"; NameMon = "Ice Cream Commander"; CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438); CFrameMon = CFrame.new(-558.061, 112.048, -11290.774)
            elseif MyLevel >= 2200 and MyLevel <= 2224 then Mon = "Cookie Crafter"; LevelQuest = 1; NameQuest = "CakeQuest1"; NameMon = "Cookie Crafter"; CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295); CFrameMon = CFrame.new(-2374.136, 37.798, -12125.308)
            elseif MyLevel >= 2225 and MyLevel <= 2249 then Mon = "Cake Guard"; LevelQuest = 2; NameQuest = "CakeQuest1"; NameMon = "Cake Guard"; CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295); CFrameMon = CFrame.new(-1598.307, 43.773, -12244.581)
            elseif MyLevel >= 2250 and MyLevel <= 2274 then Mon = "Baking Staff"; LevelQuest = 1; NameQuest = "CakeQuest2"; NameMon = "Baking Staff"; CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391); CFrameMon = CFrame.new(-1887.809, 77.618, -12998.350)
            elseif MyLevel >= 2275 and MyLevel <= 2299 then Mon = "Head Baker"; LevelQuest = 2; NameQuest = "CakeQuest2"; NameMon = "Head Baker"; CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391); CFrameMon = CFrame.new(-2216.188, 82.884, -12869.293)
            elseif MyLevel >= 2300 and MyLevel <= 2324 then Mon = "Cocoa Warrior"; LevelQuest = 1; NameQuest = "ChocQuest1"; NameMon = "Cocoa Warrior"; CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375); CFrameMon = CFrame.new(-21.553, 80.574, -12352.387)
            elseif MyLevel >= 2325 and MyLevel <= 2349 then Mon = "Chocolate Bar Battler"; LevelQuest = 2; NameQuest = "ChocQuest1"; NameMon = "Chocolate Bar Battler"; CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375); CFrameMon = CFrame.new(582.590, 77.188, -12463.162)
            elseif MyLevel >= 2350 and MyLevel <= 2374 then Mon = "Sweet Thief"; LevelQuest = 1; NameQuest = "ChocQuest2"; NameMon = "Sweet Thief"; CFrameQuest = CFrame.new(150.5066375732422, 30.693693161011742, -12774.5029296875); CFrameMon = CFrame.new(165.188, 76.058, -12600.836)
            elseif MyLevel >= 2375 and MyLevel <= 2399 then Mon = "Candy Rebel"; LevelQuest = 2; NameQuest = "ChocQuest2"; NameMon = "Candy Rebel"; CFrameQuest = CFrame.new(150.5066375732422, 30.693693161011742, -12774.5029296875); CFrameMon = CFrame.new(134.865, 77.247, -12876.547)
            elseif MyLevel >= 2400 and MyLevel <= 2424 then Mon = "Candy Pirate"; LevelQuest = 1; NameQuest = "CandyQuest1"; NameMon = "Candy Pirate"; CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375); CFrameMon = CFrame.new(-1310.500, 26.016, -14562.404)
            elseif MyLevel >= 2425 and MyLevel <= 2449 then Mon = "Snow Demon"; LevelQuest = 2; NameQuest = "CandyQuest1"; NameMon = "Snow Demon"; CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375); CFrameMon = CFrame.new(-880.200, 71.247, -14538.609)
            elseif MyLevel >= 2450 and MyLevel <= 2474 then Mon = "Isle Outlaw"; LevelQuest = 1; NameQuest = "TikiQuest1"; NameMon = "Isle Outlaw"; CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812); CFrameMon = CFrame.new(-16442.814, 116.138, -264.463)
            elseif MyLevel >= 2475 and MyLevel <= 2524 then Mon = "Island Boy"; LevelQuest = 2; NameQuest = "TikiQuest1"; NameMon = "Island Boy"; CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812); CFrameMon = CFrame.new(-16901.261, 84.067, -192.889)
            elseif MyLevel >= 2525 and MyLevel <= 2550 then Mon = "Isle Champion"; LevelQuest = 2; NameQuest = "TikiQuest2"; NameMon = "Isle Champion"; CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625); CFrameMon = CFrame.new(-16641.679, 235.782, 1031.282)
            elseif MyLevel >= 2550 and MyLevel <= 2574 then Mon = "Serpent Hunter"; LevelQuest = 1; NameQuest = "TikiQuest3"; NameMon = "Serpent Hunter"; CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434); CFrameMon = CFrame.new(-16521.062, 106.092, 1488.784)
            elseif MyLevel >= 2575 and MyLevel <= 2599 then Mon = "Skull Slayer"; LevelQuest = 2; NameQuest = "TikiQuest3"; NameMon = "Skull Slayer"; CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434); CFrameMon = CFrame.new(-16887.730, 113.074, 1629.977)
            elseif MyLevel >= 2600 and MyLevel <= 2624 then Mon = "Reef Bandit"; LevelQuest = 1; NameQuest = "SubmergedQuest1"; NameMon = "Reef Bandits"; CFrameQuest = CFrame.new(10778.875, -2087.72437, 9265.18359); CFrameMon = CFrame.new(11019.131, -2146.068, 9342.391)
            elseif MyLevel >= 2625 and MyLevel <= 2649 then Mon = "Coral Pirate"; LevelQuest = 2; NameQuest = "SubmergedQuest1"; NameMon = "Coral Pirates"; CFrameQuest = CFrame.new(10778.875, -2087.72437, 9265.18359); CFrameMon = CFrame.new(10808.600, -2030.361, 9364.233)
            elseif MyLevel >= 2650 and MyLevel <= 2674 then Mon = "Sea Chanter"; LevelQuest = 1; NameQuest = "SubmergedQuest2"; NameMon = "Sea Chanters"; CFrameQuest = CFrame.new(10880.6855, -2086.20044, 10032.624); CFrameMon = CFrame.new(10671.271, -2057.591, 10047.258)
            elseif MyLevel >= 2675 and MyLevel <= 2699 then Mon = "Ocean Prophet"; LevelQuest = 2; NameQuest = "SubmergedQuest2"; NameMon = "Ocean Prophets"; CFrameQuest = CFrame.new(10880.6855, -2086.20044, 10032.624); CFrameMon = CFrame.new(11008.519, -2007.728, 10223.079)
            elseif MyLevel >= 2700 and MyLevel <= 2724 then Mon = "High Disciple"; LevelQuest = 1; NameQuest = "SubmergedQuest3"; NameMon = "High Disciple"; CFrameQuest = CFrame.new(9640.08789, -1992.44507, 9613.65234); CFrameMon = CFrame.new(9750.416, -1966.938, 9753.360)
            elseif MyLevel >= 2725 then Mon = "Grand Devotee"; LevelQuest = 2; NameQuest = "SubmergedQuest3"; NameMon = "Grand Devotee"; CFrameQuest = CFrame.new(9640.08789, -1992.44507, 9613.65234); CFrameMon = CFrame.new(9611.705, -1993.471, 9882.688)
            end
        end
    end)
end

-- ==================== HÀM HỖ TRỢ ====================
function topos(aL)
    _tp(aL)
end
function _tp(targetCFrame)
    local char = Player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart

    shouldTween = true
    getgenv().OnFarm = false

    if hrp.Anchored then
        hrp.Anchored = false
        task.wait()
    end

    local dist = (targetCFrame.Position - hrp.Position).Magnitude
    local speed = dist <= 15 and getgenv().TweenSpeedNear or getgenv().TweenSpeedFar
    local info = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(C, info, {CFrame = targetCFrame})

    if char.Humanoid.Sit == true then
        C.CFrame = CFrame.new(C.Position.X, targetCFrame.Y, C.Position.Z)
    end

    tween:Play()

    task.spawn(function()
        while tween.PlaybackState == Enum.PlaybackState.Playing do
            if not shouldTween then
                tween:Cancel()
                break
            end
            task.wait(0.1)
        end
        getgenv().OnFarm = true
    end)
end

function notween(targetCFrame)
    local char = Player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = targetCFrame
    end
end

function EquipWeapon(text)
    if not text then return end
    local tool = Player.Backpack:FindFirstChild(text)
    if tool and Player.Character and Player.Character:FindFirstChild("Humanoid") then
        Player.Character.Humanoid:EquipTool(tool)
    end
end

function SelectWeapon()
    for _, v in pairs(Player.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if getgenv().SelectWeapon == "Melee" and v.ToolTip == "Melee" then
                EquipWeapon(v.Name); return v
            elseif getgenv().SelectWeapon == "Sword" and v.ToolTip == "Sword" then
                EquipWeapon(v.Name); return v
            elseif getgenv().SelectWeapon == "Blox Fruit" and v.ToolTip == "Blox Fruit" then
                EquipWeapon(v.Name); return v
            end
        end
    end
    for _, v in pairs(Player.Backpack:GetChildren()) do
        if v:IsA("Tool") then EquipWeapon(v.Name); return v end
    end
    return nil
end

function ClickM1()
    if not Mon then return end
    pcall(function()
        local target = nil
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                if v.Humanoid.Health > 0 and v.Name == Mon and v ~= Player.Character then
                    target = v
                    break
                end
            end
        end
        if target then
            local rootPos = target.HumanoidRootPart.Position
            local screenPos, onScreen = camera:WorldToViewportPoint(rootPos)
            if onScreen then
                vim:SendMouseButtonEvent(screenPos.X, screenPos.Y, 0, true, game, 1)
                safeWait(0.03)
                vim:SendMouseButtonEvent(screenPos.X, screenPos.Y, 0, false, game, 1)
            else
                local centerX, centerY = camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2
                vim:SendMouseButtonEvent(centerX, centerY, 0, true, game, 1)
                safeWait(0.03)
                vim:SendMouseButtonEvent(centerX, centerY, 0, false, game, 1)
            end
        end
    end)
end

function AttackMonster(monster)
    if not monster or not monster.Parent then return end
    local root = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    local monsterRoot = monster:FindFirstChild("HumanoidRootPart")
    if not root or not monsterRoot then return end
    pcall(function()
        local attackPosition = monsterRoot.CFrame * CFrame.new(0, 20, 0)
        root.CFrame = attackPosition
        root.Velocity = Vector3.new(0, 0, 0)
        root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        root.CFrame = CFrame.new(root.Position, monsterRoot.Position)
        local weapon = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
        if weapon then
            weapon:Activate()
            safeWait(0.03)
            weapon:Deactivate()
        end
        ClickM1()
    end)
end

function BringEnemy(monster)
    if not getgenv().BringMob then return end
    if not monster or not monster.Parent then return end
    local root = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end
    pcall(function()
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                if v.Humanoid.Health > 0 and v ~= Player.Character and v ~= monster then
                    local dist = (v.HumanoidRootPart.Position - monster.HumanoidRootPart.Position).Magnitude
                    if dist <= 1500 then
                        v.HumanoidRootPart.Velocity = (root.Position - v.HumanoidRootPart.Position).Unit * 250
                        v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position, root.Position)
                    end
                end
            end
        end
    end)
end

function KeepInAir()
    while getgenv().AutoFarm do
        pcall(function()
            local root = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
            if root then
                root.Velocity = Vector3.new(0, 0, 0)
                root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
        end)
        safeWait()
    end
end

-- ==================== FARM CHÍNH ====================
spawn(function()
    while safeWait() do
        if getgenv().AutoFarm then
            pcall(function()
                if isBloxFruit and getgenv().AutoHakiBuso then
                    if Player.Character and not Player.Character:FindFirstChild("HasBuso") then
                        pcall(function()
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
                        end)
                    end
                end

                CheckQuest()
                if not Mon or not isBloxFruit then return end

                local mainGui = Player.PlayerGui:FindFirstChild("Main")
                if not mainGui then return end
                local questUI = mainGui:FindFirstChild("Quest")
                if not questUI then return end

                if not questUI.Visible then
                    topos(CFrameQuest)
                    safeWait(0.5)
                    if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                        if (CFrameQuest.Position - Player.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            pcall(function()
                                ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                            end)
                            safeWait(0.5)
                        end
                    end
                else
                    local container = questUI:FindFirstChild("Container")
                    if container then
                        local questTitle = container:FindFirstChild("QuestTitle")
                        if questTitle then
                            local title = questTitle:FindFirstChild("Title")
                            if title and title:IsA("TextLabel") then
                                if not string.find(title.Text, NameMon) then
                                    pcall(function()
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end)
                                    safeWait(0.5)
                                else
                                    local monster = nil
                                    for _, v in pairs(Workspace:GetDescendants()) do
                                        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            if v.Humanoid.Health > 0 and v.Name == Mon and v ~= Player.Character then
                                                monster = v
                                                break
                                            end
                                        end
                                    end
                                    if monster then
                                        spawn(KeepInAir)
                                        SelectWeapon()
                                        BringEnemy(monster)
                                        AttackMonster(monster)
                                    else
                                        topos(CFrameMon)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
        safeWait(0.1)
    end
end)

-- ==================== UI BANANA ====================
local Library = loadstring(game:HttpGet("https://pastefy.app/kyYdSx0A/raw"))()
if not Library then
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/UI_Libraries/UiLib.lua"))()
end

if Library then
    local Window = Library:CreateWindow({
        Title = "Phucdzai Hub Ultimate",
        Subtitle = "- Auto Farm + Fast Attack",
        Image = "rbxassetid://5009915795"
    })

    local MainTab = Window:AddTab("Main")
    local InfoGroup = MainTab:AddLeftGroupbox("Player Info")
    InfoGroup:AddLabel("Player: " .. Player.Name)
    local gameName = "Unknown"
    pcall(function()
        gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    end)
    InfoGroup:AddLabel("Game: " .. gameName)

    local ToolsGroup = MainTab:AddLeftGroupbox("Basic Tools")
    ToolsGroup:AddButton({
        Title = "Copy Game ID",
        Callback = function()
            if setclipboard then setclipboard(tostring(game.PlaceId)) end
        end
    })
    ToolsGroup:AddButton({
        Title = "Copy Job ID",
        Callback = function()
            if setclipboard then setclipboard(tostring(game.JobId)) end
        end
    })
    ToolsGroup:AddButton({
        Title = "Rejoin Server",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
        end
    })
    ToolsGroup:AddButton({
        Title = "Hop Server",
        Callback = function()
            local AllIDs = {}
            local foundAnything = ""
            local actualHour = os.date("!*t").hour
            local function TPReturner()
                local Site
                if foundAnything == "" then
                    Site = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
                else
                    Site = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything))
                end
                local ID = ""
                if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                    foundAnything = Site.nextPageCursor
                end
                local num = 0
                for i, v in pairs(Site.data) do
                    local Possible = true
                    ID = tostring(v.id)
                    if tonumber(v.maxPlayers) > tonumber(v.playing) then
                        for _, Existing in pairs(AllIDs) do
                            if num ~= 0 then
                                if ID == tostring(Existing) then
                                    Possible = false
                                end
                            else
                                if tonumber(actualHour) ~= tonumber(Existing) then
                                    pcall(function()
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end)
                                end
                            end
                            num = num + 1
                        end
                        if Possible then
                            table.insert(AllIDs, ID)
                            safeWait(.1)
                            pcall(function()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, ID, Player)
                            end)
                            safeWait(1)
                            break
                        end
                    end
                end
            end
            local function Teleport()
                while true do
                    pcall(function()
                        TPReturner()
                        if foundAnything ~= "" then TPReturner() end
                    end)
                    safeWait(2)
                end
            end
            Teleport()
        end
    })

    local FarmGroup = MainTab:AddLeftGroupbox("Auto Farm Controls")
    FarmGroup:AddToggle("AutoFarmToggle", {
        Title = "Auto Farm",
        Default = false,
        Callback = function(Value)
            getgenv().AutoFarm = Value
        end
    })
    FarmGroup:AddToggle("BringMobToggle", {
        Title = "Bring Mob",
        Default = true,
        Callback = function(Value)
            getgenv().BringMob = Value
        end
    })
    FarmGroup:AddToggle("AutoHakiToggle", {
        Title = "Auto Buso Haki",
        Default = true,
        Callback = function(Value)
            getgenv().AutoHakiBuso = Value
        end
    })
    FarmGroup:AddDropdown("WeaponSelect", {
        Title = "Select Weapon",
        Values = {"Melee", "Sword", "Blox Fruit"},
        Default = 1,
        Callback = function(Value)
            getgenv().SelectWeapon = Value
        end
    })
    FarmGroup:AddSlider("FastSpeed", {
        Title = "Fast Attack Speed (seconds)",
        Min = 0.01,
        Max = 1.0,
        Default = 0.067,
        Callback = function(Value)
            getgenv().FastAttackSpeed = Value
        end
    })

    local SettingsTab = Window:AddTab("Settings")
    local SettingsGroup = SettingsTab:AddLeftGroupbox("UI Settings")
    SettingsGroup:AddToggle("ToggleKeybind", {
        Title = "Toggle GUI with 'V' Key",
        Default = true,
        Callback = function(Value)
            _G.ToggleKeybind = Value
        end
    })
    SettingsGroup:AddButton({
        Title = "Destroy GUI",
        Callback = function()
            Window:Destroy()
        end
    })

    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.V then
            if _G.ToggleKeybind ~= false then
                local gui = Player.PlayerGui:FindFirstChild("MainGUI")
                if gui then gui.Enabled = not gui.Enabled end
            end
        end
    end)

    Library:Notify({
        Title = "Phucdzai Hub Ultimate",
        Description = "GUI loaded successfully!\nPress V to toggle.",
        Duration = 5
    })
end

print("✅ Phucdzai HUB - FULL CODE")
print("🔥 Auto Farm + Fast Attack + UI Banana + Fix All Errors")
print("⚡ Nhấn V để toggle UI Banana")
