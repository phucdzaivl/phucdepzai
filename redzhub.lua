-- ts file was generated at discord.gg/25ms

local v1 = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua'))()

local u2 = v1:CreateWindow({
    Title = 'Annie Hub',
    SubTitle = 'By Mars',
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 330),
    Acrylic = true,
    Theme = 'Light',
    MinimizeKey = Enum.KeyCode.RightControl,
})
local v3 = {
    Main = u2:AddTab({
        Title = 'Main',
        Icon = 'home',
    }),
    Setting = u2:AddTab({
        Title = 'Setting',
        Icon = 'settings-2',
    }),
    Stats = u2:AddTab({
        Title = 'Stats',
        Icon = 'plus-circle',
    }),
    Player = u2:AddTab({
        Title = 'Player',
        Icon = 'baby',
    }),
    Teleport = u2:AddTab({
        Title = 'Teleport',
        Icon = 'palmtree',
    }),
    Fruit = u2:AddTab({
        Title = 'Devil Fruit',
        Icon = 'cherry',
    }),
    Raid = u2:AddTab({
        Title = 'Dungeon',
        Icon = 'swords',
    }),
    Race = u2:AddTab({
        Title = 'Race V4',
        Icon = 'chevrons-right',
    }),
    Shop = u2:AddTab({
        Title = 'Shop',
        Icon = 'shopping-cart',
    }),
    Misc = u2:AddTab({
        Title = 'Misc',
        Icon = 'arrow-down-circle',
    }),
}

u2:SelectTab(1)

local _Options = v1.Options

repeat
    wait()
until game.Players
repeat
    wait()
until game.Players.LocalPlayer
repeat
    wait()
until game.ReplicatedStorage
repeat
    wait()
until game.ReplicatedStorage:FindFirstChild('Remotes')
repeat
    wait()
until game.Players.LocalPlayer:FindFirstChild('PlayerGui')
repeat
    wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main')
repeat
    wait()
until game:GetService('Players')
repeat
    wait()
until game:GetService('Players').LocalPlayer.Character:FindFirstChild('Energy')

wait(0.1)

if not game:IsLoaded() then
    repeat
        game.Loaded:Wait()
    until game:IsLoaded()
end
if game:GetService('Players').LocalPlayer.PlayerGui.Main:FindFirstChild('ChooseTeam') then
    while true do
        wait()

        if game:GetService('Players').LocalPlayer.PlayerGui:WaitForChild('Main').ChooseTeam.Visible == true then
            if _G.Team ~= 'Pirate' then
                if _G.Team ~= 'Marine' then
                    local v5, v6, v7 = pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated))

                    while true do
                        local v8

                        v7, v8 = v5(v6, v7)

                        if v7 == nil then
                            break
                        end

                        v8.Function()
                    end
                else
                    local v9, v10, v11 = pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated))

                    while true do
                        local v12

                        v11, v12 = v9(v10, v11)

                        if v11 == nil then
                            break
                        end

                        v12.Function()
                    end
                end
            else
                local v13, v14, v15 = pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated))

                while true do
                    local v16

                    v15, v16 = v13(v14, v15)

                    if v15 == nil then
                        break
                    end

                    v16.Function()
                end
            end
        end
        if game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() then
        end
    end
else
    First_Sea = false
    Second_Sea = false
    Third_Sea = false

    local _PlaceId = game.PlaceId

    if _PlaceId == 2753915549 then
        First_Sea = true
    elseif _PlaceId == 4442272183 then
        Second_Sea = true
    elseif _PlaceId == 7449423635 then
        Third_Sea = true
    end

    function CheckLevel()
        local _Value = game:GetService('Players').LocalPlayer.Data.Level.Value

        if First_Sea then
            if _Value == 1 or (_Value <= 9 or (SelectMonster == 'Bandit' or SelectArea == 'Jungle')) then
                Ms = 'Bandit'
                NameQuest = 'BanditQuest1'
                QuestLv = 1
                NameMon = 'Bandit'
                CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
                CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
            elseif _Value == 10 or (_Value <= 14 or (SelectMonster == 'Monkey' or SelectArea == 'Jungle')) then
                Ms = 'Monkey'
                NameQuest = 'JungleQuest'
                QuestLv = 1
                NameMon = 'Monkey'
                CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
            elseif _Value == 15 or (_Value <= 29 or (SelectMonster == 'Gorilla' or SelectArea == 'Jungle')) then
                Ms = 'Gorilla'
                NameQuest = 'JungleQuest'
                QuestLv = 2
                NameMon = 'Gorilla'
                CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
            elseif _Value == 30 or (_Value <= 39 or (SelectMonster == 'Pirate' or SelectArea == 'Buggy')) then
                Ms = 'Pirate'
                NameQuest = 'BuggyQuest1'
                QuestLv = 1
                NameMon = 'Pirate'
                CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
            elseif _Value == 40 or (_Value <= 59 or (SelectMonster == 'Brute' or SelectArea == 'Buggy')) then
                Ms = 'Brute'
                NameQuest = 'BuggyQuest1'
                QuestLv = 2
                NameMon = 'Brute'
                CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
            elseif _Value == 60 or (_Value <= 74 or (SelectMonster == 'Desert Bandit' or SelectArea == 'Desert')) then
                Ms = 'Desert Bandit'
                NameQuest = 'DesertQuest'
                QuestLv = 1
                NameMon = 'Desert Bandit'
                CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
                CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
            elseif _Value == 75 or (_Value <= 89 or (SelectMonster == 'Desert Officer' or SelectArea == 'Desert')) then
                Ms = 'Desert Officer'
                NameQuest = 'DesertQuest'
                QuestLv = 2
                NameMon = 'Desert Officer'
                CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
                CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
            elseif _Value == 90 or (_Value <= 99 or (SelectMonster == 'Snow Bandit' or SelectArea == 'Snow')) then
                Ms = 'Snow Bandit'
                NameQuest = 'SnowQuest'
                QuestLv = 1
                NameMon = 'Snow Bandit'
                CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
            elseif _Value == 100 or (_Value <= 119 or (SelectMonster == 'Snowman' or SelectArea == 'Snow')) then
                Ms = 'Snowman'
                NameQuest = 'SnowQuest'
                QuestLv = 2
                NameMon = 'Snowman'
                CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
            elseif _Value == 120 or (_Value <= 149 or (SelectMonster == 'Chief Petty Officer' or SelectArea == 'Marine')) then
                Ms = 'Chief Petty Officer'
                NameQuest = 'MarineQuest2'
                QuestLv = 1
                NameMon = 'Chief Petty Officer'
                CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
                CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
            elseif _Value == 150 or (_Value <= 174 or (SelectMonster == 'Sky Bandit' or SelectArea == 'Sky')) then
                Ms = 'Sky Bandit'
                NameQuest = 'SkyQuest'
                QuestLv = 1
                NameMon = 'Sky Bandit'
                CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
                CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
            elseif _Value == 175 or (_Value <= 189 or (SelectMonster == 'Dark Master' or SelectArea == 'Sky')) then
                Ms = 'Dark Master'
                NameQuest = 'SkyQuest'
                QuestLv = 2
                NameMon = 'Dark Master'
                CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
                CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
            elseif _Value == 190 or (_Value <= 209 or (SelectMonster == 'Prisoner' or SelectArea == 'Prison')) then
                Ms = 'Prisoner'
                NameQuest = 'PrisonerQuest'
                QuestLv = 1
                NameMon = 'Prisoner'
                CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
                CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
            elseif _Value == 210 or (_Value <= 249 or (SelectMonster == 'Dangerous Prisoner' or SelectArea == 'Prison')) then
                Ms = 'Dangerous Prisoner'
                NameQuest = 'PrisonerQuest'
                QuestLv = 2
                NameMon = 'Dangerous Prisoner'
                CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
                CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
            elseif _Value == 250 or (_Value <= 274 or (SelectMonster == 'Toga Warrior' or SelectArea == 'Colosseum')) then
                Ms = 'Toga Warrior'
                NameQuest = 'ColosseumQuest'
                QuestLv = 1
                NameMon = 'Toga Warrior'
                CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
                CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
            elseif _Value == 275 or (_Value <= 299 or (SelectMonster == 'Gladiator' or SelectArea == 'Colosseum')) then
                Ms = 'Gladiator'
                NameQuest = 'ColosseumQuest'
                QuestLv = 2
                NameMon = 'Gladiator'
                CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
                CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
            elseif _Value == 300 or (_Value <= 324 or (SelectMonster == 'Military Soldier' or SelectArea == 'Magma')) then
                Ms = 'Military Soldier'
                NameQuest = 'MagmaQuest'
                QuestLv = 1
                NameMon = 'Military Soldier'
                CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
                CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
            elseif _Value == 325 or (_Value <= 374 or (SelectMonster == 'Military Spy' or SelectArea == 'Magma')) then
                Ms = 'Military Spy'
                NameQuest = 'MagmaQuest'
                QuestLv = 2
                NameMon = 'Military Spy'
                CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
                CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
            elseif _Value == 375 or (_Value <= 399 or (SelectMonster == 'Fishman Warrior' or SelectArea == 'Fishman')) then
                Ms = 'Fishman Warrior'
                NameQuest = 'FishmanQuest'
                QuestLv = 1
                NameMon = 'Fishman Warrior'
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif _Value == 400 or (_Value <= 449 or (SelectMonster == 'Fishman Commando' or SelectArea == 'Fishman')) then
                Ms = 'Fishman Commando'
                NameQuest = 'FishmanQuest'
                QuestLv = 2
                NameMon = 'Fishman Commando'
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif _Value == 450 or (_Value <= 474 or (SelectMonster == "God's Guard" or SelectArea == 'Sky Island')) then
                Ms = "God's Guard"
                NameQuest = 'SkyExp1Quest'
                QuestLv = 1
                NameMon = "God's Guard"
                CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
                CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif _Value == 475 or (_Value <= 524 or (SelectMonster == 'Shanda' or SelectArea == 'Sky Island')) then
                Ms = 'Shanda'
                NameQuest = 'SkyExp1Quest'
                QuestLv = 2
                NameMon = 'Shanda'
                CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
                CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif _Value == 525 or (_Value <= 549 or (SelectMonster == 'Royal Squad' or SelectArea == 'Sky Island')) then
                Ms = 'Royal Squad'
                NameQuest = 'SkyExp2Quest'
                QuestLv = 1
                NameMon = 'Royal Squad'
                CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
            elseif _Value == 550 or (_Value <= 624 or (SelectMonster == 'Royal Soldier' or SelectArea == 'Sky Island')) then
                Ms = 'Royal Soldier'
                NameQuest = 'SkyExp2Quest'
                QuestLv = 2
                NameMon = 'Royal Soldier'
                CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
            elseif _Value == 625 or (_Value <= 649 or (SelectMonster == 'Galley Pirate' or SelectArea == 'Fountain')) then
                Ms = 'Galley Pirate'
                NameQuest = 'FountainQuest'
                QuestLv = 1
                NameMon = 'Galley Pirate'
                CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
            elseif _Value >= 650 or (SelectMonster == 'Galley Captain' or SelectArea == 'Fountain') then
                Ms = 'Galley Captain'
                NameQuest = 'FountainQuest'
                QuestLv = 2
                NameMon = 'Galley Captain'
                CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
            end
        end
        if Second_Sea then
            if _Value == 700 or (_Value <= 724 or (SelectMonster == 'Raider' or SelectArea == 'Area 1')) then
                Ms = 'Raider'
                NameQuest = 'Area1Quest'
                QuestLv = 1
                NameMon = 'Raider'
                CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
                CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
            elseif _Value == 725 or (_Value <= 774 or (SelectMonster == 'Mercenary' or SelectArea == 'Area 1')) then
                Ms = 'Mercenary'
                NameQuest = 'Area1Quest'
                QuestLv = 2
                NameMon = 'Mercenary'
                CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
                CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
            elseif _Value == 775 or (_Value <= 799 or (SelectMonster == 'Swan Pirate' or SelectArea == 'Area 2')) then
                Ms = 'Swan Pirate'
                NameQuest = 'Area2Quest'
                QuestLv = 1
                NameMon = 'Swan Pirate'
                CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
                CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
            elseif _Value == 800 or (_Value <= 874 or (SelectMonster == 'Factory Staff' or SelectArea == 'Area 2')) then
                Ms = 'Factory Staff'
                NameQuest = 'Area2Quest'
                QuestLv = 2
                NameMon = 'Factory Staff'
                CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
                CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
            elseif _Value == 875 or (_Value <= 899 or (SelectMonster == 'Marine Lieutenan' or SelectArea == 'Marine')) then
                Ms = 'Marine Lieutenant'
                NameQuest = 'MarineQuest3'
                QuestLv = 1
                NameMon = 'Marine Lieutenant'
                CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
                CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
            elseif _Value == 900 or (_Value <= 949 or (SelectMonster == 'Marine Captain' or SelectArea == 'Marine')) then
                Ms = 'Marine Captain'
                NameQuest = 'MarineQuest3'
                QuestLv = 2
                NameMon = 'Marine Captain'
                CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
                CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
            elseif _Value == 950 or (_Value <= 974 or (SelectMonster == 'Zombie' or SelectArea == 'Zombie')) then
                Ms = 'Zombie'
                NameQuest = 'ZombieQuest'
                QuestLv = 1
                NameMon = 'Zombie'
                CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
                CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
            elseif _Value == 975 or (_Value <= 999 or (SelectMonster == 'Vampire' or SelectArea == 'Zombie')) then
                Ms = 'Vampire'
                NameQuest = 'ZombieQuest'
                QuestLv = 2
                NameMon = 'Vampire'
                CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
                CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
            elseif _Value == 1000 or (_Value <= 1049 or (SelectMonster == 'Snow Trooper' or SelectArea == 'Snow Mountain')) then
                Ms = 'Snow Trooper'
                NameQuest = 'SnowMountainQuest'
                QuestLv = 1
                NameMon = 'Snow Trooper'
                CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
                CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
            elseif _Value == 1050 or (_Value <= 1099 or (SelectMonster == 'Winter Warrior' or SelectArea == 'Snow Mountain')) then
                Ms = 'Winter Warrior'
                NameQuest = 'SnowMountainQuest'
                QuestLv = 2
                NameMon = 'Winter Warrior'
                CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
                CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
            elseif _Value == 1100 or (_Value <= 1124 or (SelectMonster == 'Lab Subordinate' or SelectArea == 'Ice Fire')) then
                Ms = 'Lab Subordinate'
                NameQuest = 'IceSideQuest'
                QuestLv = 1
                NameMon = 'Lab Subordinate'
                CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
                CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
            elseif _Value == 1125 or (_Value <= 1174 or (SelectMonster == 'Horned Warrior' or SelectArea == 'Ice Fire')) then
                Ms = 'Horned Warrior'
                NameQuest = 'IceSideQuest'
                QuestLv = 2
                NameMon = 'Horned Warrior'
                CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
                CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
            elseif _Value == 1175 or (_Value <= 1199 or (SelectMonster == 'Magma Ninja' or SelectArea == 'Ice Fire')) then
                Ms = 'Magma Ninja'
                NameQuest = 'FireSideQuest'
                QuestLv = 1
                NameMon = 'Magma Ninja'
                CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
            elseif _Value == 1200 or (_Value <= 1249 or (SelectMonster == 'Lava Pirate' or SelectArea == 'Ice Fire')) then
                Ms = 'Lava Pirate'
                NameQuest = 'FireSideQuest'
                QuestLv = 2
                NameMon = 'Lava Pirate'
                CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
            elseif _Value == 1250 or (_Value <= 1274 or (SelectMonster == 'Ship Deckhand' or SelectArea == 'Ship')) then
                Ms = 'Ship Deckhand'
                NameQuest = 'ShipQuest1'
                QuestLv = 1
                NameMon = 'Ship Deckhand'
                CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
                CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif _Value == 1275 or (_Value <= 1299 or (SelectMonster == 'Ship Engineer' or SelectArea == 'Ship')) then
                Ms = 'Ship Engineer'
                NameQuest = 'ShipQuest1'
                QuestLv = 2
                NameMon = 'Ship Engineer'
                CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
                CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif _Value == 1300 or (_Value <= 1324 or (SelectMonster == 'Ship Steward' or SelectArea == 'Ship')) then
                Ms = 'Ship Steward'
                NameQuest = 'ShipQuest2'
                QuestLv = 1
                NameMon = 'Ship Steward'
                CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
                CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif _Value == 1325 or (_Value <= 1349 or (SelectMonster == 'Ship Officer' or SelectArea == 'Ship')) then
                Ms = 'Ship Officer'
                NameQuest = 'ShipQuest2'
                QuestLv = 2
                NameMon = 'Ship Officer'
                CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
                CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif _Value == 1350 or (_Value <= 1374 or (SelectMonster == 'Arctic Warrior' or SelectArea == 'Frost')) then
                Ms = 'Arctic Warrior'
                NameQuest = 'FrostQuest'
                QuestLv = 1
                NameMon = 'Arctic Warrior'
                CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
                CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)

                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            elseif _Value == 1375 or (_Value <= 1424 or (SelectMonster == 'Snow Lurker' or SelectArea == 'Frost')) then
                Ms = 'Snow Lurker'
                NameQuest = 'FrostQuest'
                QuestLv = 2
                NameMon = 'Snow Lurker'
                CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
                CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
            elseif _Value == 1425 or (_Value <= 1449 or (SelectMonster == 'Sea Soldier' or SelectArea == 'Forgotten')) then
                Ms = 'Sea Soldier'
                NameQuest = 'ForgottenQuest'
                QuestLv = 1
                NameMon = 'Sea Soldier'
                CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
                CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
            elseif _Value >= 1450 or (SelectMonster == 'Water Fighter' or SelectArea == 'Forgotten') then
                Ms = 'Water Fighter'
                NameQuest = 'ForgottenQuest'
                QuestLv = 2
                NameMon = 'Water Fighter'
                CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
                CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
            end
        end
        if Third_Sea then
            if _Value == 1500 or (_Value <= 1524 or (SelectMonster == 'Pirate Millionaire' or SelectArea == 'Pirate Port')) then
                Ms = 'Pirate Millionaire'
                NameQuest = 'PiratePortQuest'
                QuestLv = 1
                NameMon = 'Pirate Millionaire'
                CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
                CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
            elseif _Value == 1525 or (_Value <= 1574 or (SelectMonster == 'Pistol Billionaire' or SelectArea == 'Pirate Port')) then
                Ms = 'Pistol Billionaire'
                NameQuest = 'PiratePortQuest'
                QuestLv = 2
                NameMon = 'Pistol Billionaire'
                CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
                CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
            elseif _Value == 1575 or (_Value <= 1599 or (SelectMonster == 'Dragon Crew Warrior' or SelectArea == 'Amazon')) then
                Ms = 'Dragon Crew Warrior'
                NameQuest = 'AmazonQuest'
                QuestLv = 1
                NameMon = 'Dragon Crew Warrior'
                CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
            elseif _Value == 1600 or (_Value <= 1624 or (SelectMonster == 'Dragon Crew Archer' or SelectArea == 'Amazon')) then
                Ms = 'Dragon Crew Archer'
                NameQuest = 'AmazonQuest'
                QuestLv = 2
                NameMon = 'Dragon Crew Archer'
                CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
            elseif _Value == 1625 or (_Value <= 1649 or (SelectMonster == 'Female Islander' or SelectArea == 'Amazon')) then
                Ms = 'Female Islander'
                NameQuest = 'AmazonQuest2'
                QuestLv = 1
                NameMon = 'Female Islander'
                CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
            elseif _Value == 1650 or (_Value <= 1699 or (SelectMonster == 'Giant Islander' or SelectArea == 'Amazon')) then
                Ms = 'Giant Islander'
                NameQuest = 'AmazonQuest2'
                QuestLv = 2
                NameMon = 'Giant Islander'
                CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
            elseif _Value == 1700 or (_Value <= 1724 or (SelectMonster == 'Marine Commodore' or SelectArea == 'Marine Tree')) then
                Ms = 'Marine Commodore'
                NameQuest = 'MarineTreeIsland'
                QuestLv = 1
                NameMon = 'Marine Commodore'
                CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
            elseif _Value == 1725 or (_Value <= 1774 or (SelectMonster == 'Marine Rear Admiral' or SelectArea == 'Marine Tree')) then
                Ms = 'Marine Rear Admiral'
                NameQuest = 'MarineTreeIsland'
                QuestLv = 2
                NameMon = 'Marine Rear Admiral'
                CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
            elseif _Value == 1775 or (_Value <= 1799 or (SelectMonster == 'Fishman Raider' or SelectArea == 'Deep Forest')) then
                Ms = 'Fishman Raider'
                NameQuest = 'DeepForestIsland3'
                QuestLv = 1
                NameMon = 'Fishman Raider'
                CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
                CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
            elseif _Value == 1800 or (_Value <= 1824 or (SelectMonster == 'Fishman Captain' or SelectArea == 'Deep Forest')) then
                Ms = 'Fishman Captain'
                NameQuest = 'DeepForestIsland3'
                QuestLv = 2
                NameMon = 'Fishman Captain'
                CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
                CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
            elseif _Value == 1825 or (_Value <= 1849 or (SelectMonster == 'Forest Pirate' or SelectArea == 'Deep Forest')) then
                Ms = 'Forest Pirate'
                NameQuest = 'DeepForestIsland'
                QuestLv = 1
                NameMon = 'Forest Pirate'
                CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
                CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
            elseif _Value == 1850 or (_Value <= 1899 or (SelectMonster == 'Mythological Pirate' or SelectArea == 'Deep Forest')) then
                Ms = 'Mythological Pirate'
                NameQuest = 'DeepForestIsland'
                QuestLv = 2
                NameMon = 'Mythological Pirate'
                CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
                CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
            elseif _Value == 1900 or (_Value <= 1924 or (SelectMonster == 'Jungle Pirate' or SelectArea == 'Deep Forest')) then
                Ms = 'Jungle Pirate'
                NameQuest = 'DeepForestIsland2'
                QuestLv = 1
                NameMon = 'Jungle Pirate'
                CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
            elseif _Value == 1925 or (_Value <= 1974 or (SelectMonster == 'Musketeer Pirate' or SelectArea == 'Deep Forest')) then
                Ms = 'Musketeer Pirate'
                NameQuest = 'DeepForestIsland2'
                QuestLv = 2
                NameMon = 'Musketeer Pirate'
                CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
            elseif _Value == 1975 or (_Value <= 1999 or (SelectMonster == 'Reborn Skeleton' or SelectArea == 'Haunted Castle')) then
                Ms = 'Reborn Skeleton'
                NameQuest = 'HauntedQuest1'
                QuestLv = 1
                NameMon = 'Reborn Skeleton'
                CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-8, -0.999978542, 2.04920472e-8, 1, 4.51620679e-8, 0.999978542, -2.01955679e-8, -0.00655503059)
                CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -0.000013950732, -0.208259016, -1.08073925e-6, 1, -0.0000720630269, 0.208259016, 0.0000707080399, 0.978073597)
            elseif _Value == 2000 or (_Value <= 2024 or (SelectMonster == 'Living Zombie' or SelectArea == 'Haunted Castle')) then
                Ms = 'Living Zombie'
                NameQuest = 'HauntedQuest1'
                QuestLv = 2
                NameMon = 'Living Zombie'
                CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-8, -0.999978542, 2.04920472e-8, 1, 4.51620679e-8, 0.999978542, -2.01955679e-8, -0.00655503059)
                CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714099999998e-8, 0.0324240364, -2.58006327e-8, 1, -6.06848474e-8, -0.0324240364, 5.98163865e-8, 0.999474227)
            elseif _Value == 2025 or (_Value <= 2049 or (SelectMonster == 'Demonic Soul' or SelectArea == 'Haunted Castle')) then
                Ms = 'Demonic Soul'
                NameQuest = 'HauntedQuest2'
                QuestLv = 1
                NameMon = 'Demonic Soul'
                CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            elseif _Value == 2050 or (_Value <= 2074 or (SelectMonster == 'Posessed Mummy' or SelectArea == 'Haunted Castle')) then
                Ms = 'Posessed Mummy'
                NameQuest = 'HauntedQuest2'
                QuestLv = 2
                NameMon = 'Posessed Mummy'
                CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
            elseif _Value == 2075 or (_Value <= 2099 or (SelectMonster == 'Peanut Scout' or SelectArea == 'Nut Island')) then
                Ms = 'Peanut Scout'
                NameQuest = 'NutsIslandQuest'
                QuestLv = 1
                NameMon = 'Peanut Scout'
                CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            elseif _Value == 2100 or (_Value <= 2124 or (SelectMonster == 'Peanut President' or SelectArea == 'Nut Island')) then
                Ms = 'Peanut President'
                NameQuest = 'NutsIslandQuest'
                QuestLv = 2
                NameMon = 'Peanut President'
                CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            elseif _Value == 2125 or (_Value <= 2149 or (SelectMonster == 'Ice Cream Chef' or SelectArea == 'Ice Cream Island')) then
                Ms = 'Ice Cream Chef'
                NameQuest = 'IceCreamIslandQuest'
                QuestLv = 1
                NameMon = 'Ice Cream Chef'
                CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, 0, -0.997525156, 0, 1.00000012, 0, 0.997525275, 0, -0.0703101456)
            elseif _Value == 2150 or (_Value <= 2199 or (SelectMonster == 'Ice Cream Commander' or SelectArea == 'Ice Cream Island')) then
                Ms = 'Ice Cream Commander'
                NameQuest = 'IceCreamIslandQuest'
                QuestLv = 2
                NameMon = 'Ice Cream Commander'
                CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, 0, -0.997525156, 0, 1.00000012, 0, 0.997525275, 0, -0.0703101456)
            elseif _Value == 2200 or (_Value <= 2224 or (SelectMonster == 'Cookie Crafter' or SelectArea == 'Cake Island')) then
                Ms = 'Cookie Crafter'
                NameQuest = 'CakeQuest1'
                QuestLv = 1
                NameMon = 'Cookie Crafter'
                CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
                CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
            elseif _Value == 2225 or (_Value <= 2249 or (SelectMonster == 'Cake Guard' or SelectArea == 'Cake Island')) then
                Ms = 'Cake Guard'
                NameQuest = 'CakeQuest1'
                QuestLv = 2
                NameMon = 'Cake Guard'
                CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
                CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
            elseif _Value == 2250 or (_Value <= 2274 or (SelectMonster == 'Baking Staff' or SelectArea == 'Cake Island')) then
                Ms = 'Baking Staff'
                NameQuest = 'CakeQuest2'
                QuestLv = 1
                NameMon = 'Baking Staff'
                CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
            elseif _Value == 2275 or (_Value <= 2299 or (SelectMonster == 'Head Baker' or SelectArea == 'Cake Island')) then
                Ms = 'Head Baker'
                NameQuest = 'CakeQuest2'
                QuestLv = 2
                NameMon = 'Head Baker'
                CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
            elseif _Value == 2300 or (_Value <= 2324 or (SelectMonster == 'Cocoa Warrior' or SelectArea == 'Choco Island')) then
                Ms = 'Cocoa Warrior'
                NameQuest = 'ChocQuest1'
                QuestLv = 1
                NameMon = 'Cocoa Warrior'
                CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
            elseif _Value == 2325 or (_Value <= 2349 or (SelectMonster == 'Chocolate Bar Battler' or SelectArea == 'Choco Island')) then
                Ms = 'Chocolate Bar Battler'
                NameQuest = 'ChocQuest1'
                QuestLv = 2
                NameMon = 'Chocolate Bar Battler'
                CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
            elseif _Value == 2350 or (_Value <= 2374 or (SelectMonster == 'Sweet Thief' or SelectArea == 'Choco Island')) then
                Ms = 'Sweet Thief'
                NameQuest = 'ChocQuest2'
                QuestLv = 1
                NameMon = 'Sweet Thief'
                CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
                CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, 0, -0.984811902, 0, 1, 0, 0.984811902, 0, 0.173624337)
            elseif _Value == 2375 or (_Value <= 2400 or (SelectMonster == 'Candy Rebel' or SelectArea == 'Choco Island')) then
                Ms = 'Candy Rebel'
                NameQuest = 'ChocQuest2'
                QuestLv = 2
                NameMon = 'Candy Rebel'
                CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
                CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
            elseif _Value == 2400 or (_Value <= 2424 or (SelectMonster == 'Candy Pirate' or SelectArea == 'Candy Island')) then
                Ms = 'Candy Pirate'
                NameQuest = 'CandyQuest1'
                QuestLv = 1
                NameMon = 'Candy Pirate'
                CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
                CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, 0, -0.984811902, 0, 1, 0, 0.984811902, 0, 0.173624337)
            elseif _Value == 2425 or (_Value <= 2449 or (SelectMonster == 'Snow Demon' or SelectArea == 'Candy Island')) then
                Ms = 'Snow Demon'
                NameQuest = 'CandyQuest1'
                QuestLv = 2
                NameMon = 'Snow Demon'
                CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
                CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif _Value == 2450 or (_Value <= 2474 or (SelectMonster == 'Isle Outlaw' or SelectArea == 'Tiki Outpost')) then
                Ms = 'Isle Outlaw'
                NameQuest = 'TikiQuest1'
                QuestLv = 1
                NameMon = 'Isle Outlaw'
                CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632813)
                CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
            elseif _Value == 2475 or (_Value <= 2524 or (SelectMonster == 'Island Boy' or SelectArea == 'Tiki Outpost')) then
                Ms = 'Island Boy'
                NameQuest = 'TikiQuest1'
                QuestLv = 2
                NameMon = 'Island Boy'
                CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632813)
                CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
            elseif _Value >= 2525 or (SelectMonster == 'Isle Champion' or SelectArea == 'Tiki Outpost') then
                Ms = 'Isle Champion'
                NameQuest = 'TikiQuest2'
                QuestLv = 2
                NameMon = 'Isle Champion'
                CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
                CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
            end
        end
    end

    if First_Sea then
        tableMon = {
            'Bandit',
            'Monkey',
            'Gorilla',
            'Pirate',
            'Brute',
            'Desert Bandit',
            'Desert Officer',
            'Snow Bandit',
            'Snowman',
            'Chief Petty Officer',
            'Sky Bandit',
            'Dark Master',
            'Prisoner',
            'Dangerous Prisoner',
            'Toga Warrior',
            'Gladiator',
            'Military Soldier',
            'Military Spy',
            'Fishman Warrior',
            'Fishman Commando',
            "God's Guard",
            'Shanda',
            'Royal Squad',
            'Royal Soldier',
            'Galley Pirate',
            'Galley Captain',
        }
    elseif Second_Sea then
        tableMon = {
            'Raider',
            'Mercenary',
            'Swan Pirate',
            'Factory Staff',
            'Marine Lieutenant',
            'Marine Captain',
            'Zombie',
            'Vampire',
            'Snow Trooper',
            'Winter Warrior',
            'Lab Subordinate',
            'Horned Warrior',
            'Magma Ninja',
            'Lava Pirate',
            'Ship Deckhand',
            'Ship Engineer',
            'Ship Steward',
            'Ship Officer',
            'Arctic Warrior',
            'Snow Lurker',
            'Sea Soldier',
            'Water Fighter',
        }
    elseif Third_Sea then
        tableMon = {
            'Pirate Millionaire',
            'Dragon Crew Warrior',
            'Dragon Crew Archer',
            'Female Islander',
            'Giant Islander',
            'Marine Commodore',
            'Marine Rear Admiral',
            'Fishman Raider',
            'Fishman Captain',
            'Forest Pirate',
            'Mythological Pirate',
            'Jungle Pirate',
            'Musketeer Pirate',
            'Reborn Skeleton',
            'Living Zombie',
            'Demonic Soul',
            'Posessed Mummy',
            'Peanut Scout',
            'Peanut President',
            'Ice Cream Chef',
            'Ice Cream Commander',
            'Cookie Crafter',
            'Cake Guard',
            'Baking Staff',
            'Head Baker',
            'Cocoa Warrior',
            'Chocolate Bar Battler',
            'Sweet Thief',
            'Candy Rebel',
            'Candy Pirate',
            'Snow Demon',
            'Isle Outlaw',
            'Island Boy',
            'Isle Champion',
        }
    end
    if First_Sea then
        AreaList = {
            'Jungle',
            'Buggy',
            'Desert',
            'Snow',
            'Marine',
            'Sky',
            'Prison',
            'Colosseum',
            'Magma',
            'Fishman',
            'Sky Island',
            'Fountain',
        }
    elseif Second_Sea then
        AreaList = {
            'Area 1',
            'Area 2',
            'Zombie',
            'Marine',
            'Snow Mountain',
            'Ice fire',
            'Ship',
            'Frost',
            'Forgotten',
        }
    elseif Third_Sea then
        AreaList = {
            'Pirate Port',
            'Amazon',
            'Marine Tree',
            'Deep Forest',
            'Haunted Castle',
            'Nut Island',
            'Ice Cream Island',
            'Cake Island',
            'Choco Island',
            'Candy Island',
            'Tiki Outpost',
        }
    end

    function CheckBossQuest()
        if First_Sea then
            if SelectBoss ~= 'The Gorilla King' then
                if SelectBoss ~= 'Bobby' then
                    if SelectBoss ~= 'The Saw' then
                        if SelectBoss ~= 'Yeti' then
                            if SelectBoss ~= 'Mob Leader' then
                                if SelectBoss ~= 'Vice Admiral' then
                                    if SelectBoss ~= 'Saber Expert' then
                                        if SelectBoss ~= 'Warden' then
                                            if SelectBoss ~= 'Chief Warden' then
                                                if SelectBoss ~= 'Swan' then
                                                    if SelectBoss ~= 'Magma Admiral' then
                                                        if SelectBoss ~= 'Fishman Lord' then
                                                            if SelectBoss ~= 'Wysper' then
                                                                if SelectBoss ~= 'Thunder God' then
                                                                    if SelectBoss ~= 'Cyborg' then
                                                                        if SelectBoss ~= 'Ice Admiral' then
                                                                            if SelectBoss == 'Greybeard' then
                                                                                BossMon = 'Greybeard'
                                                                                NameBoss = 'Greybeard'
                                                                                CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
                                                                            end
                                                                        else
                                                                            BossMon = 'Ice Admiral'
                                                                            NameBoss = 'Ice Admiral'
                                                                            CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
                                                                        end
                                                                    else
                                                                        BossMon = 'Cyborg'
                                                                        NameBoss = 'Cyborg'
                                                                        NameQuestBoss = 'FountainQuest'
                                                                        QuestLvBoss = 3
                                                                        RewardBoss = 'Reward:\n$20,000\n7,500,000 Exp.'
                                                                        CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                                                                        CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
                                                                    end
                                                                else
                                                                    BossMon = 'Thunder God'
                                                                    NameBoss = 'Thunder God'
                                                                    NameQuestBoss = 'SkyExp2Quest'
                                                                    QuestLvBoss = 3
                                                                    RewardBoss = 'Reward:\n$20,000\n5,800,000 Exp.'
                                                                    CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                                                                    CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
                                                                end
                                                            else
                                                                BossMon = 'Wysper'
                                                                NameBoss = 'Wysper'
                                                                NameQuestBoss = 'SkyExp1Quest'
                                                                QuestLvBoss = 3
                                                                RewardBoss = 'Reward:\n$15,000\n4,800,000 Exp.'
                                                                CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
                                                                CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
                                                            end
                                                        else
                                                            BossMon = 'Fishman Lord'
                                                            NameBoss = 'Fishman Lord'
                                                            NameQuestBoss = 'FishmanQuest'
                                                            QuestLvBoss = 3
                                                            RewardBoss = 'Reward:\n$15,000\n4,000,000 Exp.'
                                                            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
                                                        end
                                                    else
                                                        BossMon = 'Magma Admiral'
                                                        NameBoss = 'Magma Admiral'
                                                        NameQuestBoss = 'MagmaQuest'
                                                        QuestLvBoss = 3
                                                        RewardBoss = 'Reward:\n$15,000\n2,800,000 Exp.'
                                                        CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
                                                        CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
                                                    end
                                                else
                                                    BossMon = 'Swan'
                                                    NameBoss = 'Swan'
                                                    NameQuestBoss = 'ImpelQuest'
                                                    QuestLvBoss = 3
                                                    RewardBoss = 'Reward:\n$15,000\n1,600,000 Exp.'
                                                    CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
                                                    CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                                end
                                            else
                                                BossMon = 'Chief Warden'
                                                NameBoss = 'Chief Warden'
                                                NameQuestBoss = 'ImpelQuest'
                                                QuestLvBoss = 2
                                                RewardBoss = 'Reward:\n$10,000\n1,000,000 Exp.'
                                                CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -0.0000280422337, -0.939682961, 0.00181045406, 0.342041939)
                                                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                            end
                                        else
                                            BossMon = 'Warden'
                                            NameBoss = 'Warden'
                                            NameQuestBoss = 'ImpelQuest'
                                            QuestLvBoss = 1
                                            RewardBoss = 'Reward:\n$6,000\n850,000 Exp.'
                                            CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.4994640100000005e-6, 0.975376427, -0.0000195412576, 1, 9.031620720000001e-6, -0.975376427, -0.0000210519756, 0.220546961)
                                            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                        end
                                    else
                                        NameBoss = 'Saber Expert'
                                        BossMon = 'Saber Expert'
                                        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
                                    end
                                else
                                    BossMon = 'Vice Admiral'
                                    NameBoss = 'Vice Admiral'
                                    NameQuestBoss = 'MarineQuest2'
                                    QuestLvBoss = 2
                                    RewardBoss = 'Reward:\n$10,000\n180,000 Exp.'
                                    CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
                                    CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
                                end
                            else
                                BossMon = 'Mob Leader'
                                NameBoss = 'Mob Leader'
                                CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
                            end
                        else
                            BossMon = 'Yeti'
                            NameBoss = 'Yeti'
                            NameQuestBoss = 'SnowQuest'
                            QuestLvBoss = 3
                            RewardBoss = 'Reward:\n$10,000\n180,000 Exp.'
                            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
                        end
                    else
                        BossMon = 'The Saw'
                        NameBoss = 'The Saw'
                        CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
                    end
                else
                    BossMon = 'Bobby'
                    NameBoss = 'Bobby'
                    NameQuestBoss = 'BuggyQuest1'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$8,000\n35,000 Exp.'
                    CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                    CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
                end
            else
                BossMon = 'The Gorilla King'
                NameBoss = 'The Gorrila King'
                NameQuestBoss = 'JungleQuest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$2,000\n7,000 Exp.'
                CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
            end
        end
        if Second_Sea then
            if SelectBoss ~= 'Diamond' then
                if SelectBoss ~= 'Jeremy' then
                    if SelectBoss ~= 'Fajita' then
                        if SelectBoss ~= 'Don Swan' then
                            if SelectBoss ~= 'Smoke Admiral' then
                                if SelectBoss ~= 'Awakened Ice Admiral' then
                                    if SelectBoss ~= 'Tide Keeper' then
                                        if SelectBoss ~= 'Darkbeard' then
                                            if SelectBoss ~= 'Cursed Captain' then
                                                if SelectBoss == 'Order' then
                                                    BossMon = 'Order'
                                                    NameBoss = 'Order'
                                                    CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
                                                end
                                            else
                                                BossMon = 'Cursed Captain'
                                                NameBoss = 'Cursed Captain'
                                                CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
                                            end
                                        else
                                            BossMon = 'Darkbeard'
                                            NameBoss = 'Darkbeard'
                                            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
                                        end
                                    else
                                        BossMon = 'Tide Keeper'
                                        NameBoss = 'Tide Keeper'
                                        NameQuestBoss = 'ForgottenQuest'
                                        QuestLvBoss = 3
                                        RewardBoss = 'Reward:\n$12,500\n38,000,000 Exp.'
                                        CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
                                        CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
                                    end
                                else
                                    BossMon = 'Awakened Ice Admiral'
                                    NameBoss = 'Awakened Ice Admiral'
                                    NameQuestBoss = 'FrostQuest'
                                    QuestLvBoss = 3
                                    RewardBoss = 'Reward:\n$20,000\n36,000,000 Exp.'
                                    CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
                                    CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
                                end
                            else
                                BossMon = 'Smoke Admiral'
                                NameBoss = 'Smoke Admiral'
                                NameQuestBoss = 'IceSideQuest'
                                QuestLvBoss = 3
                                RewardBoss = 'Reward:\n$20,000\n25,000,000 Exp.'
                                CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                                CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
                            end
                        else
                            BossMon = 'Don Swan'
                            NameBoss = 'Don Swan'
                            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
                        end
                    else
                        BossMon = 'Fajita'
                        NameBoss = 'Fajita'
                        NameQuestBoss = 'MarineQuest3'
                        QuestLvBoss = 3
                        RewardBoss = 'Reward:\n$25,000\n15,000,000 Exp.'
                        CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
                        CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
                    end
                else
                    BossMon = 'Jeremy'
                    NameBoss = 'Jeremy'
                    NameQuestBoss = 'Area2Quest'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$25,000\n11,500,000 Exp.'
                    CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
                    CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
                end
            else
                BossMon = 'Diamond'
                NameBoss = 'Diamond'
                NameQuestBoss = 'Area1Quest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$25,000\n9,000,000 Exp.'
                CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
                CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
            end
        end
        if Third_Sea then
            if SelectBoss ~= 'Stone' then
                if SelectBoss ~= 'Island Empress' then
                    if SelectBoss ~= 'Kilo Admiral' then
                        if SelectBoss ~= 'Captain Elephant' then
                            if SelectBoss ~= 'Beautiful Pirate' then
                                if SelectBoss ~= 'Cake Queen' then
                                    if SelectBoss ~= 'Longma' then
                                        if SelectBoss ~= 'Soul Reaper' then
                                            if SelectBoss == 'rip_indra True Form' then
                                                BossMon = 'rip_indra True Form'
                                                NameBoss = 'rip_indra True Form'
                                                CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
                                            end
                                        else
                                            BossMon = 'Soul Reaper'
                                            NameBoss = 'Soul Reaper'
                                            CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
                                        end
                                    else
                                        BossMon = 'Longma'
                                        NameBoss = 'Longma'
                                        CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
                                    end
                                else
                                    BossMon = 'Cake Queen'
                                    NameBoss = 'Cake Queen'
                                    NameQuestBoss = 'IceCreamIslandQuest'
                                    QuestLvBoss = 3
                                    RewardBoss = 'Reward:\n$30,000\n112,500,000 Exp.'
                                    CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
                                    CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
                                end
                            else
                                BossMon = 'Beautiful Pirate'
                                NameBoss = 'Beautiful Pirate'
                                NameQuestBoss = 'DeepForestIsland2'
                                QuestLvBoss = 3
                                RewardBoss = 'Reward:\n$50,000\n70,000,000 Exp.'
                                CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                                CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
                            end
                        else
                            BossMon = 'Captain Elephant'
                            NameBoss = 'Captain Elephant'
                            NameQuestBoss = 'DeepForestIsland'
                            QuestLvBoss = 3
                            RewardBoss = 'Reward:\n$40,000\n67,000,000 Exp.'
                            CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
                            CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
                        end
                    else
                        BossMon = 'Kilo Admiral'
                        NameBoss = 'Kilo Admiral'
                        NameQuestBoss = 'MarineTreeIsland'
                        QuestLvBoss = 3
                        RewardBoss = 'Reward:\n$35,000\n56,000,000 Exp.'
                        CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
                        CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
                    end
                else
                    BossMon = 'Island Empress'
                    NameBoss = 'Island Empress'
                    NameQuestBoss = 'AmazonQuest2'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$30,000\n52,000,000 Exp.'
                    CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
                    CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
                end
            else
                BossMon = 'Stone'
                NameBoss = 'Stone'
                NameQuestBoss = 'PiratePortQuest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$25,000\n40,000,000 Exp.'
                CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
                CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
            end
        end
    end
    function MaterialMon()
        if SelectMaterial ~= 'Radioactive Material' then
            if SelectMaterial ~= 'Mystic Droplet' then
                if SelectMaterial ~= 'Magma Ore' then
                    if SelectMaterial ~= 'Angel Wings' then
                        if SelectMaterial ~= 'Leather' then
                            if SelectMaterial ~= 'Scrap Metal' then
                                if SelectMaterial ~= 'Fish Tail' then
                                    if SelectMaterial ~= 'Demonic Wisp' then
                                        if SelectMaterial ~= 'Vampire Fang' then
                                            if SelectMaterial ~= 'Conjured Cocoa' then
                                                if SelectMaterial ~= 'Dragon Scale' then
                                                    if SelectMaterial ~= 'Gunpowder' then
                                                        if SelectMaterial == 'Mini Tusk' then
                                                            MMon = 'Mythological Pirate'
                                                            MPos = CFrame.new(-13545, 470, -6917)
                                                            SP = 'Default'
                                                        end
                                                    else
                                                        MMon = 'Pistol Billionaire'
                                                        MPos = CFrame.new(-469, 74, 5904)
                                                        SP = 'Default'
                                                    end
                                                else
                                                    MMon = 'Dragon Crew Archer'
                                                    MPos = CFrame.new(6594, 383, 139)
                                                    SP = 'Default'
                                                end
                                            else
                                                MMon = 'Chocolate Bar Battler'
                                                MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
                                                SP = 'Default'
                                            end
                                        else
                                            MMon = 'Vampire'
                                            MPos = CFrame.new(-6033, 7, -1317)
                                            SP = 'Default'
                                        end
                                    else
                                        MMon = 'Demonic Soul'
                                        MPos = CFrame.new(-9507, 172, 6158)
                                        SP = 'Default'
                                    end
                                elseif Third_Sea then
                                    MMon = 'Fishman Raider'
                                    MPos = CFrame.new(-10993, 332, -8940)
                                    SP = 'Default'
                                elseif First_Sea then
                                    MMon = 'Fishman Warrior'
                                    MPos = CFrame.new(61123, 19, 1569)
                                    SP = 'Default'

                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
                                    end
                                end
                            elseif First_Sea then
                                MMon = 'Brute'
                                MPos = CFrame.new(-1145, 15, 4350)
                                SP = 'Default'
                            elseif Second_Sea then
                                MMon = 'Swan Pirate'
                                MPos = CFrame.new(878, 122, 1235)
                                SP = 'Default'
                            elseif Third_Sea then
                                MMon = 'Jungle Pirate'
                                MPos = CFrame.new(-12107, 332, -10549)
                                SP = 'Default'
                            end
                        elseif First_Sea then
                            MMon = 'Brute'
                            MPos = CFrame.new(-1145, 15, 4350)
                            SP = 'Default'
                        elseif Second_Sea then
                            MMon = 'Marine Captain'
                            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                            SP = 'Default'
                        elseif Third_Sea then
                            MMon = 'Jungle Pirate'
                            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                            SP = 'Default'
                        end
                    else
                        MMon = "God's Guard"
                        MPos = CFrame.new(-4698, 845, -1912)
                        SP = 'Default'

                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7859.09814, 5544.19043, -381.476196))
                        end
                    end
                elseif First_Sea then
                    MMon = 'Military Spy'
                    MPos = CFrame.new(-5815, 84, 8820)
                    SP = 'Default'
                elseif Second_Sea then
                    MMon = 'Magma Ninja'
                    MPos = CFrame.new(-5428, 78, -5959)
                    SP = 'Default'
                end
            else
                MMon = 'Water Fighter'
                MPos = CFrame.new(-3385, 239, -10542)
                SP = 'Default'
            end
        else
            MMon = 'Factory Staff'
            MPos = CFrame.new(295, 73, -56)
            SP = 'Default'
        end
    end
    function UpdateIslandESP()
        local v19, v20, v21 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local u22

            v21, u22 = v19(v20, v21)

            if v21 == nil then
                break
            end

            pcall(function()
                if IslandESP then
                    if u22.Name ~= 'Sea' then
                        if u22:FindFirstChild('NameEsp') then
                            u22.NameEsp.TextLabel.Text = u22.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - u22.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui = Instance.new('BillboardGui', u22)

                            _BillboardGui.Name = 'NameEsp'
                            _BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui.Adornee = u22
                            _BillboardGui.AlwaysOnTop = true

                            local _TextLabel = Instance.new('TextLabel', _BillboardGui)

                            _TextLabel.Font = 'GothamBold'
                            _TextLabel.FontSize = 'Size14'
                            _TextLabel.TextWrapped = true
                            _TextLabel.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel.TextYAlignment = 'Top'
                            _TextLabel.BackgroundTransparency = 1
                            _TextLabel.TextStrokeTransparency = 0.5
                            _TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        end
                    end
                elseif u22:FindFirstChild('NameEsp') then
                    u22:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function isnil(p25)
        return p25 == nil
    end

    local function u27(p26)
        return math.floor(tonumber(p26) + 0.5)
    end

    Number = math.random(1, 1000000)

    function UpdatePlayerChams()
        local v28, v29, v30 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local u31

            v30, u31 = v28(v29, v30)

            if v30 == nil then
                break
            end

            pcall(function()
                if not isnil(u31.Character) then
                    if ESPPlayer then
                        if isnil(u31.Character.Head) or u31.Character.Head:FindFirstChild('NameEsp' .. Number) then
                            u31.Character.Head['NameEsp' .. Number].TextLabel.Text = u31.Name .. ' | ' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u31.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u27(u31.Character.Humanoid.Health * 100 / u31.Character.Humanoid.MaxHealth) .. '%'
                        else
                            local _BillboardGui2 = Instance.new('BillboardGui', u31.Character.Head)

                            _BillboardGui2.Name = 'NameEsp' .. Number
                            _BillboardGui2.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui2.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui2.Adornee = u31.Character.Head
                            _BillboardGui2.AlwaysOnTop = true

                            local _TextLabel2 = Instance.new('TextLabel', _BillboardGui2)

                            _TextLabel2.Font = Enum.Font.GothamSemibold
                            _TextLabel2.FontSize = 'Size14'
                            _TextLabel2.TextWrapped = true
                            _TextLabel2.Text = u31.Name .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u31.Character.Head.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel2.TextYAlignment = 'Top'
                            _TextLabel2.BackgroundTransparency = 1
                            _TextLabel2.TextStrokeTransparency = 0.5

                            if u31.Team ~= game.Players.LocalPlayer.Team then
                                _TextLabel2.TextColor3 = Color3.new(255, 0, 0)
                            else
                                _TextLabel2.TextColor3 = Color3.new(0, 255, 0)
                            end
                        end
                    elseif u31.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u31.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateChestChams()
        local v34, v35, v36 = pairs(game.Workspace:GetChildren())

        while true do
            local u37

            v36, u37 = v34(v35, v36)

            if v36 == nil then
                break
            end

            pcall(function()
                if string.find(u37.Name, 'Chest') then
                    if ChestESP then
                        if string.find(u37.Name, 'Chest') then
                            if u37:FindFirstChild('NameEsp' .. Number) then
                                u37['NameEsp' .. Number].TextLabel.Text = u37.Name .. '   \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u37.Position).Magnitude / 3) .. ' Distance'
                            else
                                local _BillboardGui3 = Instance.new('BillboardGui', u37)

                                _BillboardGui3.Name = 'NameEsp' .. Number
                                _BillboardGui3.ExtentsOffset = Vector3.new(0, 1, 0)
                                _BillboardGui3.Size = UDim2.new(1, 200, 1, 30)
                                _BillboardGui3.Adornee = u37
                                _BillboardGui3.AlwaysOnTop = true

                                local _TextLabel3 = Instance.new('TextLabel', _BillboardGui3)

                                _TextLabel3.Font = Enum.Font.GothamSemibold
                                _TextLabel3.FontSize = 'Size14'
                                _TextLabel3.TextWrapped = true
                                _TextLabel3.Size = UDim2.new(1, 0, 1, 0)
                                _TextLabel3.TextYAlignment = 'Top'
                                _TextLabel3.BackgroundTransparency = 1
                                _TextLabel3.TextStrokeTransparency = 0.5

                                if u37.Name == 'Chest1' then
                                    _TextLabel3.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    _TextLabel3.Text = 'Chest 1' .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u37.Position).Magnitude / 3) .. ' Distance'
                                end
                                if u37.Name == 'Chest2' then
                                    _TextLabel3.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    _TextLabel3.Text = 'Chest 2' .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u37.Position).Magnitude / 3) .. ' Distance'
                                end
                                if u37.Name == 'Chest3' then
                                    _TextLabel3.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    _TextLabel3.Text = 'Chest 3' .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u37.Position).Magnitude / 3) .. ' Distance'
                                end
                            end
                        end
                    elseif u37:FindFirstChild('NameEsp' .. Number) then
                        u37:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateDevilChams()
        local v40, v41, v42 = pairs(game.Workspace:GetChildren())

        while true do
            local u43

            v42, u43 = v40(v41, v42)

            if v42 == nil then
                break
            end

            pcall(function()
                if DevilFruitESP then
                    if string.find(u43.Name, 'Fruit') then
                        if u43.Handle:FindFirstChild('NameEsp' .. Number) then
                            u43.Handle['NameEsp' .. Number].TextLabel.Text = u43.Name .. '   \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u43.Handle.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui4 = Instance.new('BillboardGui', u43.Handle)

                            _BillboardGui4.Name = 'NameEsp' .. Number
                            _BillboardGui4.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui4.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui4.Adornee = u43.Handle
                            _BillboardGui4.AlwaysOnTop = true

                            local _TextLabel4 = Instance.new('TextLabel', _BillboardGui4)

                            _TextLabel4.Font = Enum.Font.GothamSemibold
                            _TextLabel4.FontSize = 'Size14'
                            _TextLabel4.TextWrapped = true
                            _TextLabel4.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel4.TextYAlignment = 'Top'
                            _TextLabel4.BackgroundTransparency = 1
                            _TextLabel4.TextStrokeTransparency = 0.5
                            _TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel4.Text = u43.Name .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u43.Handle.Position).Magnitude / 3) .. ' Distance'
                        end
                    end
                elseif u43.Handle:FindFirstChild('NameEsp' .. Number) then
                    u43.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end)
        end
    end
    function UpdateFlowerChams()
        local v46, v47, v48 = pairs(game.Workspace:GetChildren())

        while true do
            local u49

            v48, u49 = v46(v47, v48)

            if v48 == nil then
                break
            end

            pcall(function()
                if u49.Name == 'Flower2' or u49.Name == 'Flower1' then
                    if FlowerESP then
                        if u49:FindFirstChild('NameEsp' .. Number) then
                            u49['NameEsp' .. Number].TextLabel.Text = u49.Name .. '   \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u49.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui5 = Instance.new('BillboardGui', u49)

                            _BillboardGui5.Name = 'NameEsp' .. Number
                            _BillboardGui5.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui5.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui5.Adornee = u49
                            _BillboardGui5.AlwaysOnTop = true

                            local _TextLabel5 = Instance.new('TextLabel', _BillboardGui5)

                            _TextLabel5.Font = Enum.Font.GothamSemibold
                            _TextLabel5.FontSize = 'Size14'
                            _TextLabel5.TextWrapped = true
                            _TextLabel5.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel5.TextYAlignment = 'Top'
                            _TextLabel5.BackgroundTransparency = 1
                            _TextLabel5.TextStrokeTransparency = 0.5
                            _TextLabel5.TextColor3 = Color3.fromRGB(255, 0, 0)

                            if u49.Name == 'Flower1' then
                                _TextLabel5.Text = 'Blue Flower' .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u49.Position).Magnitude / 3) .. ' Distance'
                                _TextLabel5.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if u49.Name == 'Flower2' then
                                _TextLabel5.Text = 'Red Flower' .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u49.Position).Magnitude / 3) .. ' Distance'
                                _TextLabel5.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        end
                    elseif u49:FindFirstChild('NameEsp' .. Number) then
                        u49:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateRealFruitChams()
        local v52, v53, v54 = pairs(game.Workspace.AppleSpawner:GetChildren())

        while true do
            local v55

            v54, v55 = v52(v53, v54)

            if v54 == nil then
                break
            end
            if v55:IsA('Tool') then
                if RealFruitESP then
                    if v55.Handle:FindFirstChild('NameEsp' .. Number) then
                        v55.Handle['NameEsp' .. Number].TextLabel.Text = v55.Name .. ' ' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - v55.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui6 = Instance.new('BillboardGui', v55.Handle)

                        _BillboardGui6.Name = 'NameEsp' .. Number
                        _BillboardGui6.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui6.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui6.Adornee = v55.Handle
                        _BillboardGui6.AlwaysOnTop = true

                        local _TextLabel6 = Instance.new('TextLabel', _BillboardGui6)

                        _TextLabel6.Font = Enum.Font.GothamSemibold
                        _TextLabel6.FontSize = 'Size14'
                        _TextLabel6.TextWrapped = true
                        _TextLabel6.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel6.TextYAlignment = 'Top'
                        _TextLabel6.BackgroundTransparency = 1
                        _TextLabel6.TextStrokeTransparency = 0.5
                        _TextLabel6.TextColor3 = Color3.fromRGB(255, 0, 0)
                        _TextLabel6.Text = v55.Name .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - v55.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                elseif v55.Handle:FindFirstChild('NameEsp' .. Number) then
                    v55.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end

        local v58, v59, v60 = pairs(game.Workspace.PineappleSpawner:GetChildren())

        while true do
            local v61

            v60, v61 = v58(v59, v60)

            if v60 == nil then
                break
            end
            if v61:IsA('Tool') then
                if RealFruitESP then
                    if v61.Handle:FindFirstChild('NameEsp' .. Number) then
                        v61.Handle['NameEsp' .. Number].TextLabel.Text = v61.Name .. ' ' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - v61.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui7 = Instance.new('BillboardGui', v61.Handle)

                        _BillboardGui7.Name = 'NameEsp' .. Number
                        _BillboardGui7.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui7.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui7.Adornee = v61.Handle
                        _BillboardGui7.AlwaysOnTop = true

                        local _TextLabel7 = Instance.new('TextLabel', _BillboardGui7)

                        _TextLabel7.Font = Enum.Font.GothamSemibold
                        _TextLabel7.FontSize = 'Size14'
                        _TextLabel7.TextWrapped = true
                        _TextLabel7.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel7.TextYAlignment = 'Top'
                        _TextLabel7.BackgroundTransparency = 1
                        _TextLabel7.TextStrokeTransparency = 0.5
                        _TextLabel7.TextColor3 = Color3.fromRGB(255, 174, 0)
                        _TextLabel7.Text = v61.Name .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - v61.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                elseif v61.Handle:FindFirstChild('NameEsp' .. Number) then
                    v61.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end

        local v64, v65, v66 = pairs(game.Workspace.BananaSpawner:GetChildren())

        while true do
            local v67

            v66, v67 = v64(v65, v66)

            if v66 == nil then
                break
            end
            if v67:IsA('Tool') then
                if RealFruitESP then
                    if v67.Handle:FindFirstChild('NameEsp' .. Number) then
                        v67.Handle['NameEsp' .. Number].TextLabel.Text = v67.Name .. ' ' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - v67.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui8 = Instance.new('BillboardGui', v67.Handle)

                        _BillboardGui8.Name = 'NameEsp' .. Number
                        _BillboardGui8.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui8.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui8.Adornee = v67.Handle
                        _BillboardGui8.AlwaysOnTop = true

                        local _TextLabel8 = Instance.new('TextLabel', _BillboardGui8)

                        _TextLabel8.Font = Enum.Font.GothamSemibold
                        _TextLabel8.FontSize = 'Size14'
                        _TextLabel8.TextWrapped = true
                        _TextLabel8.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel8.TextYAlignment = 'Top'
                        _TextLabel8.BackgroundTransparency = 1
                        _TextLabel8.TextStrokeTransparency = 0.5
                        _TextLabel8.TextColor3 = Color3.fromRGB(251, 255, 0)
                        _TextLabel8.Text = v67.Name .. ' \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - v67.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                elseif v67.Handle:FindFirstChild('NameEsp' .. Number) then
                    v67.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
    function UpdateIslandESP()
        local v70, v71, v72 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local u73

            v72, u73 = v70(v71, v72)

            if v72 == nil then
                break
            end

            pcall(function()
                if IslandESP then
                    if u73.Name ~= 'Sea' then
                        if u73:FindFirstChild('NameEsp') then
                            u73.NameEsp.TextLabel.Text = u73.Name .. '   \n' .. u27((game:GetService('Players').LocalPlayer.Character.Head.Position - u73.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui9 = Instance.new('BillboardGui', u73)

                            _BillboardGui9.Name = 'NameEsp'
                            _BillboardGui9.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui9.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui9.Adornee = u73
                            _BillboardGui9.AlwaysOnTop = true

                            local _TextLabel9 = Instance.new('TextLabel', _BillboardGui9)

                            _TextLabel9.Font = 'GothamBold'
                            _TextLabel9.FontSize = 'Size14'
                            _TextLabel9.TextWrapped = true
                            _TextLabel9.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel9.TextYAlignment = 'Top'
                            _TextLabel9.BackgroundTransparency = 1
                            _TextLabel9.TextStrokeTransparency = 0.5
                            _TextLabel9.TextColor3 = Color3.fromRGB(7, 236, 240)
                        end
                    end
                elseif u73:FindFirstChild('NameEsp') then
                    u73:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function isnil(p76)
        return p76 == nil
    end

    local function u78(p77)
        return math.floor(tonumber(p77) + 0.5)
    end

    Number = math.random(1, 1000000)

    function UpdatePlayerChams()
        local v79, v80, v81 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local u82

            v81, u82 = v79(v80, v81)

            if v81 == nil then
                break
            end

            pcall(function()
                if not isnil(u82.Character) then
                    if ESPPlayer then
                        if isnil(u82.Character.Head) or u82.Character.Head:FindFirstChild('NameEsp' .. Number) then
                            u82.Character.Head['NameEsp' .. Number].TextLabel.Text = u82.Name .. ' | ' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u82.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u78(u82.Character.Humanoid.Health * 100 / u82.Character.Humanoid.MaxHealth) .. '%'
                        else
                            local _BillboardGui10 = Instance.new('BillboardGui', u82.Character.Head)

                            _BillboardGui10.Name = 'NameEsp' .. Number
                            _BillboardGui10.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui10.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui10.Adornee = u82.Character.Head
                            _BillboardGui10.AlwaysOnTop = true

                            local _TextLabel10 = Instance.new('TextLabel', _BillboardGui10)

                            _TextLabel10.Font = Enum.Font.GothamSemibold
                            _TextLabel10.FontSize = 'Size14'
                            _TextLabel10.TextWrapped = true
                            _TextLabel10.Text = u82.Name .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u82.Character.Head.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel10.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel10.TextYAlignment = 'Top'
                            _TextLabel10.BackgroundTransparency = 1
                            _TextLabel10.TextStrokeTransparency = 0.5

                            if u82.Team ~= game.Players.LocalPlayer.Team then
                                _TextLabel10.TextColor3 = Color3.new(255, 0, 0)
                            else
                                _TextLabel10.TextColor3 = Color3.new(0, 255, 0)
                            end
                        end
                    elseif u82.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u82.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateChestChams()
        local v85, v86, v87 = pairs(game.Workspace:GetChildren())

        while true do
            local u88

            v87, u88 = v85(v86, v87)

            if v87 == nil then
                break
            end

            pcall(function()
                if string.find(u88.Name, 'Chest') then
                    if ChestESP then
                        if string.find(u88.Name, 'Chest') then
                            if u88:FindFirstChild('NameEsp' .. Number) then
                                u88['NameEsp' .. Number].TextLabel.Text = u88.Name .. '   \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u88.Position).Magnitude / 3) .. ' Distance'
                            else
                                local _BillboardGui11 = Instance.new('BillboardGui', u88)

                                _BillboardGui11.Name = 'NameEsp' .. Number
                                _BillboardGui11.ExtentsOffset = Vector3.new(0, 1, 0)
                                _BillboardGui11.Size = UDim2.new(1, 200, 1, 30)
                                _BillboardGui11.Adornee = u88
                                _BillboardGui11.AlwaysOnTop = true

                                local _TextLabel11 = Instance.new('TextLabel', _BillboardGui11)

                                _TextLabel11.Font = Enum.Font.GothamSemibold
                                _TextLabel11.FontSize = 'Size14'
                                _TextLabel11.TextWrapped = true
                                _TextLabel11.Size = UDim2.new(1, 0, 1, 0)
                                _TextLabel11.TextYAlignment = 'Top'
                                _TextLabel11.BackgroundTransparency = 1
                                _TextLabel11.TextStrokeTransparency = 0.5

                                if u88.Name == 'Chest1' then
                                    _TextLabel11.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    _TextLabel11.Text = 'Chest 1' .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u88.Position).Magnitude / 3) .. ' Distance'
                                end
                                if u88.Name == 'Chest2' then
                                    _TextLabel11.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    _TextLabel11.Text = 'Chest 2' .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u88.Position).Magnitude / 3) .. ' Distance'
                                end
                                if u88.Name == 'Chest3' then
                                    _TextLabel11.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    _TextLabel11.Text = 'Chest 3' .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u88.Position).Magnitude / 3) .. ' Distance'
                                end
                            end
                        end
                    elseif u88:FindFirstChild('NameEsp' .. Number) then
                        u88:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateDevilChams()
        local v91, v92, v93 = pairs(game.Workspace:GetChildren())

        while true do
            local u94

            v93, u94 = v91(v92, v93)

            if v93 == nil then
                break
            end

            pcall(function()
                if DevilFruitESP then
                    if string.find(u94.Name, 'Fruit') then
                        if u94.Handle:FindFirstChild('NameEsp' .. Number) then
                            u94.Handle['NameEsp' .. Number].TextLabel.Text = u94.Name .. '   \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u94.Handle.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui12 = Instance.new('BillboardGui', u94.Handle)

                            _BillboardGui12.Name = 'NameEsp' .. Number
                            _BillboardGui12.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui12.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui12.Adornee = u94.Handle
                            _BillboardGui12.AlwaysOnTop = true

                            local _TextLabel12 = Instance.new('TextLabel', _BillboardGui12)

                            _TextLabel12.Font = Enum.Font.GothamSemibold
                            _TextLabel12.FontSize = 'Size14'
                            _TextLabel12.TextWrapped = true
                            _TextLabel12.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel12.TextYAlignment = 'Top'
                            _TextLabel12.BackgroundTransparency = 1
                            _TextLabel12.TextStrokeTransparency = 0.5
                            _TextLabel12.TextColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel12.Text = u94.Name .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u94.Handle.Position).Magnitude / 3) .. ' Distance'
                        end
                    end
                elseif u94.Handle:FindFirstChild('NameEsp' .. Number) then
                    u94.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end)
        end
    end
    function UpdateFlowerChams()
        local v97, v98, v99 = pairs(game.Workspace:GetChildren())

        while true do
            local u100

            v99, u100 = v97(v98, v99)

            if v99 == nil then
                break
            end

            pcall(function()
                if u100.Name == 'Flower2' or u100.Name == 'Flower1' then
                    if FlowerESP then
                        if u100:FindFirstChild('NameEsp' .. Number) then
                            u100['NameEsp' .. Number].TextLabel.Text = u100.Name .. '   \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u100.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui13 = Instance.new('BillboardGui', u100)

                            _BillboardGui13.Name = 'NameEsp' .. Number
                            _BillboardGui13.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui13.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui13.Adornee = u100
                            _BillboardGui13.AlwaysOnTop = true

                            local _TextLabel13 = Instance.new('TextLabel', _BillboardGui13)

                            _TextLabel13.Font = Enum.Font.GothamSemibold
                            _TextLabel13.FontSize = 'Size14'
                            _TextLabel13.TextWrapped = true
                            _TextLabel13.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel13.TextYAlignment = 'Top'
                            _TextLabel13.BackgroundTransparency = 1
                            _TextLabel13.TextStrokeTransparency = 0.5
                            _TextLabel13.TextColor3 = Color3.fromRGB(255, 0, 0)

                            if u100.Name == 'Flower1' then
                                _TextLabel13.Text = 'Blue Flower' .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u100.Position).Magnitude / 3) .. ' Distance'
                                _TextLabel13.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if u100.Name == 'Flower2' then
                                _TextLabel13.Text = 'Red Flower' .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - u100.Position).Magnitude / 3) .. ' Distance'
                                _TextLabel13.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        end
                    elseif u100:FindFirstChild('NameEsp' .. Number) then
                        u100:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateRealFruitChams()
        local v103, v104, v105 = pairs(game.Workspace.AppleSpawner:GetChildren())

        while true do
            local v106

            v105, v106 = v103(v104, v105)

            if v105 == nil then
                break
            end
            if v106:IsA('Tool') then
                if RealFruitESP then
                    if v106.Handle:FindFirstChild('NameEsp' .. Number) then
                        v106.Handle['NameEsp' .. Number].TextLabel.Text = v106.Name .. ' ' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - v106.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui14 = Instance.new('BillboardGui', v106.Handle)

                        _BillboardGui14.Name = 'NameEsp' .. Number
                        _BillboardGui14.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui14.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui14.Adornee = v106.Handle
                        _BillboardGui14.AlwaysOnTop = true

                        local _TextLabel14 = Instance.new('TextLabel', _BillboardGui14)

                        _TextLabel14.Font = Enum.Font.GothamSemibold
                        _TextLabel14.FontSize = 'Size14'
                        _TextLabel14.TextWrapped = true
                        _TextLabel14.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel14.TextYAlignment = 'Top'
                        _TextLabel14.BackgroundTransparency = 1
                        _TextLabel14.TextStrokeTransparency = 0.5
                        _TextLabel14.TextColor3 = Color3.fromRGB(255, 0, 0)
                        _TextLabel14.Text = v106.Name .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - v106.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                elseif v106.Handle:FindFirstChild('NameEsp' .. Number) then
                    v106.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end

        local v109, v110, v111 = pairs(game.Workspace.PineappleSpawner:GetChildren())

        while true do
            local v112

            v111, v112 = v109(v110, v111)

            if v111 == nil then
                break
            end
            if v112:IsA('Tool') then
                if RealFruitESP then
                    if v112.Handle:FindFirstChild('NameEsp' .. Number) then
                        v112.Handle['NameEsp' .. Number].TextLabel.Text = v112.Name .. ' ' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - v112.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui15 = Instance.new('BillboardGui', v112.Handle)

                        _BillboardGui15.Name = 'NameEsp' .. Number
                        _BillboardGui15.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui15.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui15.Adornee = v112.Handle
                        _BillboardGui15.AlwaysOnTop = true

                        local _TextLabel15 = Instance.new('TextLabel', _BillboardGui15)

                        _TextLabel15.Font = Enum.Font.GothamSemibold
                        _TextLabel15.FontSize = 'Size14'
                        _TextLabel15.TextWrapped = true
                        _TextLabel15.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel15.TextYAlignment = 'Top'
                        _TextLabel15.BackgroundTransparency = 1
                        _TextLabel15.TextStrokeTransparency = 0.5
                        _TextLabel15.TextColor3 = Color3.fromRGB(255, 174, 0)
                        _TextLabel15.Text = v112.Name .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - v112.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                elseif v112.Handle:FindFirstChild('NameEsp' .. Number) then
                    v112.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end

        local v115, v116, v117 = pairs(game.Workspace.BananaSpawner:GetChildren())

        while true do
            local v118

            v117, v118 = v115(v116, v117)

            if v117 == nil then
                break
            end
            if v118:IsA('Tool') then
                if RealFruitESP then
                    if v118.Handle:FindFirstChild('NameEsp' .. Number) then
                        v118.Handle['NameEsp' .. Number].TextLabel.Text = v118.Name .. ' ' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - v118.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui16 = Instance.new('BillboardGui', v118.Handle)

                        _BillboardGui16.Name = 'NameEsp' .. Number
                        _BillboardGui16.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui16.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui16.Adornee = v118.Handle
                        _BillboardGui16.AlwaysOnTop = true

                        local _TextLabel16 = Instance.new('TextLabel', _BillboardGui16)

                        _TextLabel16.Font = Enum.Font.GothamSemibold
                        _TextLabel16.FontSize = 'Size14'
                        _TextLabel16.TextWrapped = true
                        _TextLabel16.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel16.TextYAlignment = 'Top'
                        _TextLabel16.BackgroundTransparency = 1
                        _TextLabel16.TextStrokeTransparency = 0.5
                        _TextLabel16.TextColor3 = Color3.fromRGB(251, 255, 0)
                        _TextLabel16.Text = v118.Name .. ' \n' .. u78((game:GetService('Players').LocalPlayer.Character.Head.Position - v118.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                elseif v118.Handle:FindFirstChild('NameEsp' .. Number) then
                    v118.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end

    spawn(function()
        while wait() do
            pcall(function()
                if MobESP then
                    local v121, v122, v123 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v124

                        v123, v124 = v121(v122, v123)

                        if v123 == nil then
                            break
                        end
                        if v124:FindFirstChild('HumanoidRootPart') then
                            if not v124:FindFirstChild('MobEap') then
                                local _BillboardGui17 = Instance.new('BillboardGui')
                                local _TextLabel17 = Instance.new('TextLabel')

                                _BillboardGui17.Parent = v124
                                _BillboardGui17.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                _BillboardGui17.Active = true
                                _BillboardGui17.Name = 'MobEap'
                                _BillboardGui17.AlwaysOnTop = true
                                _BillboardGui17.LightInfluence = 1
                                _BillboardGui17.Size = UDim2.new(0, 200, 0, 50)
                                _BillboardGui17.StudsOffset = Vector3.new(0, 2.5, 0)
                                _TextLabel17.Parent = _BillboardGui17
                                _TextLabel17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                _TextLabel17.BackgroundTransparency = 1
                                _TextLabel17.Size = UDim2.new(0, 200, 0, 50)
                                _TextLabel17.Font = Enum.Font.GothamBold
                                _TextLabel17.TextColor3 = Color3.fromRGB(7, 236, 240)
                                _TextLabel17.Text.Size = 35
                            end

                            local v127 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v124.HumanoidRootPart.Position).Magnitude)

                            v124.MobEap.TextLabel.Text = v124.Name .. ' - ' .. v127 .. ' Distance'
                        end
                    end
                else
                    local v128, v129, v130 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v131

                        v130, v131 = v128(v129, v130)

                        if v130 == nil then
                            break
                        end
                        if v131:FindFirstChild('MobEap') then
                            v131.MobEap:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if SeaESP then
                    local v132, v133, v134 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                    while true do
                        local v135

                        v134, v135 = v132(v133, v134)

                        if v134 == nil then
                            break
                        end
                        if v135:FindFirstChild('HumanoidRootPart') then
                            if not v135:FindFirstChild('Seaesps') then
                                local _BillboardGui18 = Instance.new('BillboardGui')
                                local _TextLabel18 = Instance.new('TextLabel')

                                _BillboardGui18.Parent = v135
                                _BillboardGui18.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                _BillboardGui18.Active = true
                                _BillboardGui18.Name = 'Seaesps'
                                _BillboardGui18.AlwaysOnTop = true
                                _BillboardGui18.LightInfluence = 1
                                _BillboardGui18.Size = UDim2.new(0, 200, 0, 50)
                                _BillboardGui18.StudsOffset = Vector3.new(0, 2.5, 0)
                                _TextLabel18.Parent = _BillboardGui18
                                _TextLabel18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                _TextLabel18.BackgroundTransparency = 1
                                _TextLabel18.Size = UDim2.new(0, 200, 0, 50)
                                _TextLabel18.Font = Enum.Font.GothamBold
                                _TextLabel18.TextColor3 = Color3.fromRGB(7, 236, 240)
                                _TextLabel18.Text.Size = 35
                            end

                            local v138 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v135.HumanoidRootPart.Position).Magnitude)

                            v135.Seaesps.TextLabel.Text = v135.Name .. ' - ' .. v138 .. ' Distance'
                        end
                    end
                else
                    local v139, v140, v141 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                    while true do
                        local v142

                        v141, v142 = v139(v140, v141)

                        if v141 == nil then
                            break
                        end
                        if v142:FindFirstChild('Seaesps') then
                            v142.Seaesps:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if NpcESP then
                    local v143, v144, v145 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                    while true do
                        local v146

                        v145, v146 = v143(v144, v145)

                        if v145 == nil then
                            break
                        end
                        if v146:FindFirstChild('HumanoidRootPart') then
                            if not v146:FindFirstChild('NpcEspes') then
                                local _BillboardGui19 = Instance.new('BillboardGui')
                                local _TextLabel19 = Instance.new('TextLabel')

                                _BillboardGui19.Parent = v146
                                _BillboardGui19.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                _BillboardGui19.Active = true
                                _BillboardGui19.Name = 'NpcEspes'
                                _BillboardGui19.AlwaysOnTop = true
                                _BillboardGui19.LightInfluence = 1
                                _BillboardGui19.Size = UDim2.new(0, 200, 0, 50)
                                _BillboardGui19.StudsOffset = Vector3.new(0, 2.5, 0)
                                _TextLabel19.Parent = _BillboardGui19
                                _TextLabel19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                _TextLabel19.BackgroundTransparency = 1
                                _TextLabel19.Size = UDim2.new(0, 200, 0, 50)
                                _TextLabel19.Font = Enum.Font.GothamBold
                                _TextLabel19.TextColor3 = Color3.fromRGB(7, 236, 240)
                                _TextLabel19.Text.Size = 35
                            end

                            local v149 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v146.HumanoidRootPart.Position).Magnitude)

                            v146.NpcEspes.TextLabel.Text = v146.Name .. ' - ' .. v149 .. ' Distance'
                        end
                    end
                else
                    local v150, v151, v152 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                    while true do
                        local v153

                        v152, v153 = v150(v151, v152)

                        if v152 == nil then
                            break
                        end
                        if v153:FindFirstChild('NpcEspes') then
                            v153.NpcEspes:Destroy()
                        end
                    end
                end
            end)
        end
    end)

    function isnil(p154)
        return p154 == nil
    end

    local function u156(p155)
        return math.floor(tonumber(p155) + 0.5)
    end

    Number = math.random(1, 1000000)

    function UpdateIslandMirageESP()
        local v157, v158, v159 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local u160

            v159, u160 = v157(v158, v159)

            if v159 == nil then
                break
            end

            pcall(function()
                if MirageIslandESP then
                    if u160.Name == 'Mirage Island' then
                        if u160:FindFirstChild('NameEsp') then
                            u160.NameEsp.TextLabel.Text = u160.Name .. '   \n' .. u156((game:GetService('Players').LocalPlayer.Character.Head.Position - u160.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui20 = Instance.new('BillboardGui', u160)

                            _BillboardGui20.Name = 'NameEsp'
                            _BillboardGui20.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui20.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui20.Adornee = u160
                            _BillboardGui20.AlwaysOnTop = true

                            local _TextLabel20 = Instance.new('TextLabel', _BillboardGui20)

                            _TextLabel20.Font = 'Code'
                            _TextLabel20.FontSize = 'Size14'
                            _TextLabel20.TextWrapped = true
                            _TextLabel20.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel20.TextYAlignment = 'Top'
                            _TextLabel20.BackgroundTransparency = 1
                            _TextLabel20.TextStrokeTransparency = 0.5
                            _TextLabel20.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u160:FindFirstChild('NameEsp') then
                    u160:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function isnil(p163)
        return p163 == nil
    end

    local function u165(p164)
        return math.floor(tonumber(p164) + 0.5)
    end

    Number = math.random(1, 1000000)

    function UpdateAfdESP()
        local v166, v167, v168 = pairs(game:GetService('Workspace').NPCs:GetChildren())

        while true do
            local u169

            v168, u169 = v166(v167, v168)

            if v168 == nil then
                break
            end

            pcall(function()
                if AfdESP then
                    if u169.Name == 'Advanced Fruit Dealer' then
                        if u169:FindFirstChild('NameEsp') then
                            u169.NameEsp.TextLabel.Text = u169.Name .. '   \n' .. u165((game:GetService('Players').LocalPlayer.Character.Head.Position - u169.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui21 = Instance.new('BillboardGui', u169)

                            _BillboardGui21.Name = 'NameEsp'
                            _BillboardGui21.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui21.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui21.Adornee = u169
                            _BillboardGui21.AlwaysOnTop = true

                            local _TextLabel21 = Instance.new('TextLabel', _BillboardGui21)

                            _TextLabel21.Font = 'Code'
                            _TextLabel21.FontSize = 'Size14'
                            _TextLabel21.TextWrapped = true
                            _TextLabel21.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel21.TextYAlignment = 'Top'
                            _TextLabel21.BackgroundTransparency = 1
                            _TextLabel21.TextStrokeTransparency = 0.5
                            _TextLabel21.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u169:FindFirstChild('NameEsp') then
                    u169:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function UpdateAuraESP()
        local v172, v173, v174 = pairs(game:GetService('Workspace').NPCs:GetChildren())

        while true do
            local u175

            v174, u175 = v172(v173, v174)

            if v174 == nil then
                break
            end

            pcall(function()
                if AuraESP then
                    if u175.Name == 'Master of Enhancement' then
                        if u175:FindFirstChild('NameEsp') then
                            u175.NameEsp.TextLabel.Text = u175.Name .. '   \n' .. u165((game:GetService('Players').LocalPlayer.Character.Head.Position - u175.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui22 = Instance.new('BillboardGui', u175)

                            _BillboardGui22.Name = 'NameEsp'
                            _BillboardGui22.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui22.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui22.Adornee = u175
                            _BillboardGui22.AlwaysOnTop = true

                            local _TextLabel22 = Instance.new('TextLabel', _BillboardGui22)

                            _TextLabel22.Font = 'Code'
                            _TextLabel22.FontSize = 'Size14'
                            _TextLabel22.TextWrapped = true
                            _TextLabel22.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel22.TextYAlignment = 'Top'
                            _TextLabel22.BackgroundTransparency = 1
                            _TextLabel22.TextStrokeTransparency = 0.5
                            _TextLabel22.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u175:FindFirstChild('NameEsp') then
                    u175:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function UpdateLSDESP()
        local v178, v179, v180 = pairs(game:GetService('Workspace').NPCs:GetChildren())

        while true do
            local u181

            v180, u181 = v178(v179, v180)

            if v180 == nil then
                break
            end

            pcall(function()
                if LADESP then
                    if u181.Name == 'Legendary Sword Dealer' then
                        if u181:FindFirstChild('NameEsp') then
                            u181.NameEsp.TextLabel.Text = u181.Name .. '   \n' .. u165((game:GetService('Players').LocalPlayer.Character.Head.Position - u181.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui23 = Instance.new('BillboardGui', u181)

                            _BillboardGui23.Name = 'NameEsp'
                            _BillboardGui23.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui23.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui23.Adornee = u181
                            _BillboardGui23.AlwaysOnTop = true

                            local _TextLabel23 = Instance.new('TextLabel', _BillboardGui23)

                            _TextLabel23.Font = 'Code'
                            _TextLabel23.FontSize = 'Size14'
                            _TextLabel23.TextWrapped = true
                            _TextLabel23.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel23.TextYAlignment = 'Top'
                            _TextLabel23.BackgroundTransparency = 1
                            _TextLabel23.TextStrokeTransparency = 0.5
                            _TextLabel23.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u181:FindFirstChild('NameEsp') then
                    u181:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function UpdateGeaESP()
        local v184, v185, v186 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

        while true do
            local u187

            v186, u187 = v184(v185, v186)

            if v186 == nil then
                break
            end

            pcall(function()
                if GearESP then
                    if u187.Name == 'MeshPart' then
                        if u187:FindFirstChild('NameEsp') then
                            u187.NameEsp.TextLabel.Text = u187.Name .. '   \n' .. u165((game:GetService('Players').LocalPlayer.Character.Head.Position - u187.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui24 = Instance.new('BillboardGui', u187)

                            _BillboardGui24.Name = 'NameEsp'
                            _BillboardGui24.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui24.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui24.Adornee = u187
                            _BillboardGui24.AlwaysOnTop = true

                            local _TextLabel24 = Instance.new('TextLabel', _BillboardGui24)

                            _TextLabel24.Font = 'Code'
                            _TextLabel24.FontSize = 'Size14'
                            _TextLabel24.TextWrapped = true
                            _TextLabel24.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel24.TextYAlignment = 'Top'
                            _TextLabel24.BackgroundTransparency = 1
                            _TextLabel24.TextStrokeTransparency = 0.5
                            _TextLabel24.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u187:FindFirstChild('NameEsp') then
                    u187:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    function TP2(p190)
        local _Magnitude = (p190.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

        if _Magnitude >= 1 then
            Speed = 150
        end

        game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(_Magnitude / Speed, Enum.EasingStyle.Linear), {CFrame = p190}):Play()

        if _G.CancelTween2 then
            game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(_Magnitude / Speed, Enum.EasingStyle.Linear), {CFrame = p190}):Cancel()
        end

        _G.Clip2 = true

        wait(_Magnitude / Speed)

        _G.Clip2 = false
    end
    function Tween(p192)
        Distance = (p192.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
            game.Players.LocalPlayer.Character.Humanoid.Sit = true
        end

        pcall(function()
            local v193 = {CFrame = p192}

            tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear), v193)
        end)
        tween:Play()

        if Distance <= 150 then
            tween:Cancel()

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p192
        end
        if _G.StopTween == true then
            tween:Cancel()

            _G.Clip = false
        end
    end
    function TPB(p194)
        local _TweenService = game:service('TweenService')
        local v196 = TweenInfo.new((game:GetService('Workspace').Boats.MarineBrigade.VehicleSeat.CFrame.Position - p194.Position).Magnitude / 300, Enum.EasingStyle.Linear)

        tween = _TweenService:Create(game:GetService('Workspace').Boats.MarineBrigade.VehicleSeat, v196, {CFrame = p194})

        tween:Play()

        return {
            Stop = function(_)
                tween:Cancel()
            end,
        }
    end
    function TPP(p197)
        if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Health > 0 and game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid') then
            local _TweenService2 = game:service('TweenService')
            local v199 = TweenInfo.new((game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - p197.Position).Magnitude / 325, Enum.EasingStyle.Linear)

            tween = _TweenService2:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v199, {CFrame = p197})

            tween:Play()

            return {
                Stop = function(_)
                    tween:Cancel()
                end,
            }
        end

        tween:Cancel()

        repeat
            wait()
        until game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid') and game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid').Health > 0

        wait(7)
    end
    function EquipTool(p200)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(p200) then
            local v201 = game.Players.LocalPlayer.Backpack:FindFirstChild(p200)

            wait(0.4)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v201)
        end
    end

    spawn(function()
        local v202 = getrawmetatable(game)
        local ___namecall = v202.__namecall

        setreadonly(v202, false)

        v202.__namecall = newcclosure(function(...)
            local v204 = getnamecallmethod()
            local v205 = {...}

            if tostring(v204) == 'FireServer' and (tostring(v205[1]) == 'RemoteEvent' and (tostring(v205[2]) ~= 'true' and tostring(v205[2]) ~= 'false')) then
                if _G.UseSkill then
                    v205[2] = PositionSkillMasteryDevilFruit

                    return ___namecall(unpack(v205))
                end
                if Skillaimbot then
                    v205[2] = AimBotSkillPosition

                    return ___namecall(unpack(v205))
                end
            end

            return ___namecall(...)
        end)
    end)
    spawn(function()
        pcall(function()
            while task.wait() do
                local v206, v207, v208 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

                while true do
                    local v209

                    v208, v209 = v206(v207, v208)

                    if v208 == nil then
                        break
                    end
                    if v209:IsA('Tool') and v209:FindFirstChild('RemoteFunctionShoot') then
                        CurrentEquipGun = v209.Name
                    end
                end
            end
        end)
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.TeleportIsland or (_G.dao or (_G.AutoMirage or (AutoFarmAcient or (_G.AutoQuestRace or (Auto_Law or (_G.AutoAllBoss or (_G.Autotushita or (_G.AutoHolyTorch or (_G.AutoTerrorshark or (_G.farmpiranya or (_G.DriveMytic or (_G.AutoDoughKingV2 or (PirateShip or (_G.Auto_Seabest or (AutoFarmNearestMob or (_G.BossRaid or (_G.GrabChest or (AutoCitizen or (AutoEcto or (AutoEvoRace or (AutoBartilo or (AutoFactory or (BringChestz or (BringFruitz or (AutoFarmQuest or (_G.Clip2 or (AutoFarmNoQuest or (AutoFarmBone or (AutoFarmSelectMonsterQuest or (AutoFarmSelectMonsterNoQuest or (AutoFarmBossNoQuest or (AutoFarmBossQuest or (AutoFarmMasGun or (AutoFarmMasDevilFruit or (AutoFarmSelectArea or (AutoSecondSea or (AutoThirdSea or (AutoDeathStep or (AutoSuperhuman or (AutoSharkman or (AutoElectricClaw or (AutoDragonTalon or (AutoGodhuman or (AutoRengoku or (AutoBuddySword or (AutoPole or (AutoHallowSycthe or (AutoCavander or (AutoTushita or (AutoDarkDagger or (AutoCakePrince or (AutoEliteHunter or (AutoRainbowHaki or (AutoSaber or (AutoFarmKen or (AutoKenHop or (AutoKenV2 or (KillPlayerMelee or (KillPlayerGun or (KillPlayerFruit or (AutoDungeon or (AutoNextIsland or (AutoAdvanceDungeon or (Musketeer or (RipIndra or (Auto_Serpent_Bow or (AutoTorch or (AutoSoulGuitar or (Auto_Cursed_Dual_Katana or (AutoFarmMaterial or (Auto_Quest_Yama_1 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_3 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Factory or (_G.SwanGlasses or (AutoBartilo or (AutoEvoRace or AutoEcto)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                    if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                        local _BodyVelocity = Instance.new('BodyVelocity')

                        _BodyVelocity.Name = 'BodyClip'
                        _BodyVelocity.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                        _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                        _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    end
                else
                    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            game:GetService('RunService').Stepped:Connect(function()
                if _G.TeleportIsland or (_G.dao or (AutoFarmAcient or (_G.AutoMirage or (Auto_Law or (_G.AutoQuestRace or (_G.AutoAllBoss or (_G.AutoHolyTorch or (_G.Autotushita or (_G.farmpiranya or (_G.AutoTerrorshark or (AutoFarmNearestMob or (_G.AutoDoughKingV2 or (PirateShip or (_G.Auto_Seabest or (_G.DriveMytic or (_G.BossRaid or (_G.GrabChest or (AutoCitizen or (AutoEcto or (AutoEvoRace or (AutoBartilo or (AutoFactory or (BringChestz or (BringFruitz or (AutoFarmQuest or (_G.Clip2 or (AutoFarmNoQuest or (AutoFarmBone or (AutoFarmSelectMonsterQuest or (AutoFarmSelectMonsterNoQuest or (AutoFarmBossNoQuest or (AutoFarmBossQuest or (AutoFarmMasGun or (AutoFarmMasDevilFruit or (AutoFarmSelectArea or (AutoSecondSea or (AutoThirdSea or (AutoDeathStep or (AutoSuperhuman or (AutoSharkman or (AutoElectricClaw or (AutoDragonTalon or (AutoGodhuman or (AutoRengoku or (AutoBuddySword or (AutoPole or (AutoHallowSycthe or (AutoCavander or (AutoTushita or (AutoDarkDagger or (AutoCakePrince or (AutoEliteHunter or (AutoRainbowHaki or (AutoSaber or (AutoFarmKen or (AutoKenHop or (AutoKenV2 or (KillPlayerMelee or (KillPlayerGun or (KillPlayerFruit or (AutoDungeon or (AutoNextIsland or (AutoAdvanceDungeon or (Musketeer or (RipIndra or (Auto_Serpent_Bow or (AutoTorch or (AutoSoulGuitar or (Auto_Cursed_Dual_Katana or (AutoFarmMaterial or (Auto_Quest_Yama_1 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_3 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Factory or (_G.SwanGlasses or (AutoBartilo or (AutoEvoRace or AutoEcto)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                    local v211, v212, v213 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                    while true do
                        local v214

                        v213, v214 = v211(v212, v213)

                        if v213 == nil then
                            break
                        end
                        if v214:IsA('BasePart') then
                            v214.CanCollide = false
                        end
                    end
                end
            end)
        end)
    end)

    function CheckMaterial(p215)
        local v216, v217, v218 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

        while true do
            local v219

            v218, v219 = v216(v217, v218)

            if v218 == nil then
                break
            end
            if type(v219) == 'table' and (v219.Type == 'Material' and v219.Name == p215) then
                return v219.Count
            end
        end

        return 0
    end
    function Click()
        if not _G.FastAttack then
            local v220 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local v221 = debug.getupvalues(v220)[2]

            require(game.ReplicatedStorage.Util.CameraShaker):Stop()

            v221.activeController.attacking = false
            v221.activeController.timeToNextAttack = 0
            v221.activeController.hitboxMagnitude = 180

            game:GetService('VirtualUser'):CaptureController()
            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
        end
    end
    function GetWeaponInventory(p222)
        local v223, v224, v225 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

        while true do
            local v226

            v225, v226 = v223(v224, v225)

            if v225 == nil then
                break
            end
            if type(v226) == 'table' and (v226.Type == 'Sword' and v226.Name == p222) then
                return true
            end
        end

        return false
    end

    _G.BringMonster = true

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()

                    local v227, v228, v229 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v230

                        v229, v230 = v227(v228, v229)

                        if v229 == nil then
                            break
                        end
                        if _G.AutoFarm and (StartMagnet and (v230.Name == Mon and (Mon == 'Factory Staff' or (Mon == 'Monkey' or (Mon == 'Dragon Crew Warrior' or Mon == 'Dragon Crew Archer'))))) and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0)) and (v230.HumanoidRootPart.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            v230.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
                            v230.HumanoidRootPart.CFrame = PosMon

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        elseif _G.AutoFarm and (StartMagnet and (v230.Name == Mon and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0)))) and (v230.HumanoidRootPart.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                            v230.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
                            v230.HumanoidRootPart.CFrame = PosMon

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoEctoplasm and (StartEctoplasmMagnet and (string.find(v230.Name, 'Ship') and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and (v230.Humanoid.Health > 0 and (v230.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode))))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v230.HumanoidRootPart.CFrame = EctoplasmMon

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoRengoku and (StartRengokuMagnet and (v230.Name == 'Snow Lurker' or v230.Name == 'Arctic Warrior')) and ((v230.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                            v230.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = RengokuMon

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoMusketeerHat and (StartMagnetMusketeerhat and (v230.Name == 'Forest Pirate' and ((v230.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = MusketeerHatMon

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoObservationHakiV2 and (Mangnetcitzenmon and (v230.Name == 'Forest Pirate' and ((v230.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = PosHee

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.Auto_EvoRace and (StartEvoMagnet and (v230.Name == 'Zombie' and ((v230.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = PosMonEvo

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoBartilo and (AutoBartiloBring and (v230.Name == 'Swan Pirate' and ((v230.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = PosMonBarto

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                            if v230.Name ~= 'Monkey' then
                                if v230.Name ~= 'Factory Staff' then
                                    if v230.Name == Mon and ((v230.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                                        v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        v230.Humanoid:ChangeState(14)

                                        v230.HumanoidRootPart.CanCollide = false
                                        v230.Head.CanCollide = false
                                        v230.HumanoidRootPart.CFrame = PosMonMasteryFruit

                                        if v230.Humanoid:FindFirstChild('Animator') then
                                            v230.Humanoid.Animator:Destroy()
                                        end

                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    end
                                elseif (v230.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0)) then
                                    v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    v230.Humanoid:ChangeState(14)

                                    v230.HumanoidRootPart.CanCollide = false
                                    v230.Head.CanCollide = false
                                    v230.HumanoidRootPart.CFrame = PosMonMasteryFruit

                                    if v230.Humanoid:FindFirstChild('Animator') then
                                        v230.Humanoid.Animator:Destroy()
                                    end

                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                end
                            elseif (v230.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0)) then
                                v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                v230.Humanoid:ChangeState(14)

                                v230.HumanoidRootPart.CanCollide = false
                                v230.Head.CanCollide = false
                                v230.HumanoidRootPart.CFrame = PosMonMasteryFruit

                                if v230.Humanoid:FindFirstChild('Animator') then
                                    v230.Humanoid.Animator:Destroy()
                                end

                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            end
                        end
                        if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                            if v230.Name ~= 'Monkey' then
                                if v230.Name ~= 'Factory Staff' then
                                    if v230.Name == Mon and ((v230.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                                        v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        v230.Humanoid:ChangeState(14)

                                        v230.HumanoidRootPart.CanCollide = false
                                        v230.Head.CanCollide = false
                                        v230.HumanoidRootPart.CFrame = PosMonMasteryGun

                                        if v230.Humanoid:FindFirstChild('Animator') then
                                            v230.Humanoid.Animator:Destroy()
                                        end

                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    end
                                elseif (v230.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0)) then
                                    v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    v230.Humanoid:ChangeState(14)

                                    v230.HumanoidRootPart.CanCollide = false
                                    v230.Head.CanCollide = false
                                    v230.HumanoidRootPart.CFrame = PosMonMasteryGun

                                    if v230.Humanoid:FindFirstChild('Animator') then
                                        v230.Humanoid.Animator:Destroy()
                                    end

                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                end
                            elseif (v230.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0)) then
                                v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                v230.Humanoid:ChangeState(14)

                                v230.HumanoidRootPart.CanCollide = false
                                v230.Head.CanCollide = false
                                v230.HumanoidRootPart.CFrame = PosMonMasteryGun

                                if v230.Humanoid:FindFirstChild('Animator') then
                                    v230.Humanoid.Animator:Destroy()
                                end

                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            end
                        end
                        if _G.Auto_Bone and (StartMagnetBoneMon and (v230.Name == 'Reborn Skeleton' or (v230.Name == 'Living Zombie' or (v230.Name == 'Demonic Soul' or v230.Name == 'Posessed Mummy')))) and ((v230.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = PosMonBone

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoFarmCandy and (StartCandyMagnet and (v230.Name == 'Ice Cream Chef' or v230.Name == 'Ice Cream Commander')) and ((v230.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = CandyMon

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if BringAcient and (AutoFarmAcient and (v230.Name == 'Cocoa Warrior' or (v230.Name == 'Chocolate Bar Battler' or (v230.Name == 'Sweet Thief' or v230.Name == 'Candy Rebel')))) and ((v230.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250 and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = FarmPos

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.Farmfast and (StardMag and (v230.Name == 'Shanda' or v230.Name == 'Shanda')) and ((v230.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = FastMon

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                        if _G.AutoDoughtBoss and (MagnetDought and (v230.Name == 'Cookie Crafter' or (v230.Name == 'Cake Guard' or (v230.Name == 'Baking Staff' or v230.Name == 'Head Baker')))) and ((v230.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode and (v230:FindFirstChild('Humanoid') and (v230:FindFirstChild('HumanoidRootPart') and v230.Humanoid.Health > 0))) then
                            v230.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                            v230.Humanoid:ChangeState(14)

                            v230.HumanoidRootPart.CanCollide = false
                            v230.Head.CanCollide = false
                            v230.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor

                            if v230.Humanoid:FindFirstChild('Animator') then
                                v230.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while true do
            wait()

            if setscriptable then
                setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
            end
        end
    end)

    PosY = 5
    Type = 1

    spawn(function()
        while wait(0.1) do
            if Type ~= 1 then
                if Type ~= 2 then
                    if Type ~= 3 then
                        if Type ~= 4 then
                            if Type ~= 5 then
                                if Type == 6 then
                                    Pos = CFrame.new(0, PosY, -30)
                                end
                            else
                                Pos = CFrame.new(-30, PosY, 0)
                            end
                        else
                            Pos = CFrame.new(0, PosY, 30)
                        end
                    else
                        Pos = CFrame.new(30, PosY, 0)
                    end
                else
                    Pos = CFrame.new(0, PosY, -30)
                end
            else
                Pos = CFrame.new(-30, PosY, 0)
            end
        end
    end)
    spawn(function()
        while wait(0.1) do
            Type = 1

            wait(0.1)

            Type = 2

            wait(0.1)

            Type = 3

            wait(0.1)

            Type = 4

            wait(0.1)

            Type = 5

            wait(0.1)
        end
    end)

    function AutoHaki()
        if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
        end
    end
    function BTP(p231)
        repeat
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p231

            task.wait()

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p231
        until (p231.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
    end
    function BTP(p232)
        pcall(function()
            if (p232.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and (not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0) then
                if NQuest ~= 'FishmanQuest' then
                    if Mon ~= "God's Guard" then
                        if NQuest ~= 'SkyExp1Quest' then
                            if NQuest ~= 'ShipQuest1' then
                                if NQuest ~= 'ShipQuest2' then
                                    if NQuest ~= 'FrostQuest' then
                                        Mix_Farm = true

                                        repeat
                                            wait(0.5)

                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p232

                                            wait(0.05)
                                            game.Players.LocalPlayer.Character.Head:Destroy()

                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p232
                                        until (p232.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0

                                        wait()

                                        Mix_Farm = nil
                                    else
                                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                        wait()
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                    end
                                else
                                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait()
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                end
                            else
                                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait()
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                        end
                    else
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                    end
                else
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            end
        end)
    end

    local u233 = 0
    local u234 = 30
    local u235 = 15

    v3.Main:AddParagraph({
        Title = 'Farming',
        Content = 'Auto Farm',
    })

    local _DropdownSelectWeapon = v3.Main:AddDropdown('DropdownSelectWeapon', {
        Title = 'Select Weapon',
        Values = {
            'Melee',
            'Sword',
            'Blox Fruit',
        },
        Multi = false,
        Default = 1,
    })

    _DropdownSelectWeapon:SetValue('Melee')
    _DropdownSelectWeapon:OnChanged(function(p237)
        ChooseWeapon = p237
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon ~= 'Melee' then
                    if ChooseWeapon ~= 'Sword' then
                        if ChooseWeapon ~= ' Blox Fruit' then
                            local v238, v239, v240 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                            while true do
                                local v241

                                v240, v241 = v238(v239, v240)

                                if v240 == nil then
                                    break
                                end
                                if v241.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v241.Name)) then
                                    SelectWeapon = v241.Name
                                end
                            end
                        else
                            local v242, v243, v244 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                            while true do
                                local v245

                                v244, v245 = v242(v243, v244)

                                if v244 == nil then
                                    break
                                end
                                if v245.ToolTip == 'Blox Fruit' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v245.Name)) then
                                    SelectWeapon = v245.Name
                                end
                            end
                        end
                    else
                        local v246, v247, v248 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v249

                            v248, v249 = v246(v247, v248)

                            if v248 == nil then
                                break
                            end
                            if v249.ToolTip == 'Sword' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v249.Name)) then
                                SelectWeapon = v249.Name
                            end
                        end
                    end
                else
                    local v250, v251, v252 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v253

                        v252, v253 = v250(v251, v252)

                        if v252 == nil then
                            break
                        end
                        if v253.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v253.Name)) then
                            SelectWeapon = v253.Name
                        end
                    end
                end
            end)
        end
    end)
    v3.Main:AddToggle('ToggleAutoFarmLevel', {
        Title = 'Auto Farm Level',
        Default = false,
    }):OnChanged(function(p254)
        AutoFarmQuest = p254
    end)
    _Options.ToggleAutoFarmLevel:SetValue(false)
    spawn(function()
        while task.wait() do
            if AutoFarmQuest then
                pcall(function()
                    CheckLevel()

                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            local v255, v256, v257 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v258

                                v257, v258 = v255(v256, v257)

                                if v257 == nil then
                                    break
                                end
                                if v258:FindFirstChild('Humanoid') and (v258:FindFirstChild('HumanoidRootPart') and (v258.Humanoid.Health > 0 and v258.Name == Ms)) then
                                    repeat
                                        game:GetService('RunService').Heartbeat:wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v258.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                        v258.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v258.HumanoidRootPart.Transparency = 1
                                        v258.Humanoid.JumpPower = 0
                                        v258.Humanoid.WalkSpeed = 0
                                        v258.HumanoidRootPart.CanCollide = false
                                        FarmPos = v258.HumanoidRootPart.CFrame
                                        MonFarm = v258.Name

                                        Click()
                                    until not AutoFarmQuest or (not v258.Parent or v258.Humanoid.Health <= 0) or (not game:GetService('Workspace').Enemies:FindFirstChild(v258.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                end
                            end

                            local v259, v260, v261 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                            while true do
                                local v262

                                v261, v262 = v259(v260, v261)

                                if v261 == nil then
                                    break
                                end
                                if string.find(v262.Name, NameMon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v262.Position).Magnitude >= 10 then
                                    Tween(v262.CFrame * CFrame.new(u233, u234, u235))
                                end
                            end
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <= 2500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
                                    Tween(CFrameQ)
                                end
                            else
                                BTP(CFrameQ)
                            end
                        else
                            Tween(CFrameQ)
                        end
                        if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
                        end
                    end

                    Tween(CFrameQ)
                end)
            end
        end
    end)

    if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Death') then
        game:GetService('ReplicatedStorage').Effect.Container.Death:Destroy()
    end
    if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Respawn') then
        game:GetService('ReplicatedStorage').Effect.Container.Respawn:Destroy()
    end

    v3.Main:AddToggle('ToggleMobAura', {
        Title = 'Auto Near Mob',
        Default = false,
    }):OnChanged(function(p263)
        AutoFarmNearestMob = p263
    end)
    _Options.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait(0.1) do
            if AutoFarmNearestMob then
                pcall(function()
                    local v264, v265, v266 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v267

                        v266, v267 = v264(v265, v266)

                        if v266 == nil then
                            break
                        end
                        if v267:FindFirstChild('Humanoid') and (v267:FindFirstChild('HumanoidRootPart') and (v267.Humanoid.Health > 0 and (v267.Name and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v267:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000))) then
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                Tween(v267.HumanoidRootPart.CFrame * Pos)

                                v267.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v267.HumanoidRootPart.Transparency = 1
                                v267.Humanoid.JumpPower = 0
                                v267.Humanoid.WalkSpeed = 0
                                v267.HumanoidRootPart.CanCollide = false
                                FarmPos = v267.HumanoidRootPart.CFrame
                                MonFarm = v267.Name

                                Click()
                            until not AutoFarmNearestMob or (not v267.Parent or v267.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v267.Name)
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddButton({
        Title = 'Redeem All Code',
        Description = 'Redeem all code x2 exp',
        Callback = function()
            UseCode('Sub2Fer999')
            UseCode('Enyu_is_Pro')
            UseCode('Magicbus')
            UseCode('JCWK')
            UseCode('Starcodeheo')
            UseCode('Bluxxy')
            UseCode('THEGREATACE')
            UseCode('SUB2GAMERROBOT_EXP1')
            UseCode('StrawHatMaine')
            UseCode('Sub2OfficialNoobie')
            UseCode('SUB2NOOBMASTER123')
            UseCode('Sub2Daigrock')
            UseCode('Axiore')
            UseCode('TantaiGaming')
            UseCode('STRAWHATMAINE')
        end,
    })

    function UseCode(p268)
        game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p268)
    end

    v3.Main:AddButton({
        Title = 'Fps Booster',
        Description = 'Boost your fps',
        Callback = function()
            FPSBooster()
        end,
    })

    function FPSBooster()
        local v269 = game
        local _Workspace = v269.Workspace
        local _Lighting = v269.Lighting
        local _Terrain = _Workspace.Terrain

        sethiddenproperty(_Lighting, 'Technology', 2)
        sethiddenproperty(_Terrain, 'Decoration', false)

        _Terrain.WaterWaveSize = 0
        _Terrain.WaterWaveSpeed = 0
        _Terrain.WaterReflectance = 0
        _Terrain.WaterTransparency = 0
        _Lighting.GlobalShadows = false
        _Lighting.FogEnd = 9000000000
        _Lighting.Brightness = 0
        settings().Rendering.QualityLevel = 'Level01'

        local v273, v274, v275 = pairs(v269:GetDescendants())
        local v276 = true

        while true do
            local v277

            v275, v277 = v273(v274, v275)

            if v275 == nil then
                break
            end
            if v277:IsA('Part') or (v277:IsA('Union') or (v277:IsA('CornerWedgePart') or v277:IsA('TrussPart'))) then
                v277.Material = 'Plastic'
                v277.Reflectance = 0
            elseif v277:IsA('Decal') or v277:IsA('Texture') and v276 then
                v277.Transparency = 1
            elseif v277:IsA('ParticleEmitter') or v277:IsA('Trail') then
                v277.Lifetime = NumberRange.new(0)
            elseif v277:IsA('Explosion') then
                v277.BlastPressure = 1
                v277.BlastRadius = 1
            elseif v277:IsA('Fire') or (v277:IsA('SpotLight') or (v277:IsA('Smoke') or v277:IsA('Sparkles'))) then
                v277.Enabled = false
            elseif v277:IsA('MeshPart') then
                v277.Material = 'Plastic'
                v277.Reflectance = 0
                v277.TextureID = 1.0385902758728955e16
            end
        end

        local v278, v279, v280 = pairs(_Lighting:GetChildren())

        while true do
            local v281

            v280, v281 = v278(v279, v280)

            if v280 == nil then
                break
            end
            if v281:IsA('BlurEffect') or (v281:IsA('SunRaysEffect') or (v281:IsA('ColorCorrectionEffect') or (v281:IsA('BloomEffect') or v281:IsA('DepthOfFieldEffect')))) then
                v281.Enabled = false
            end
        end
    end

    v3.Main:AddParagraph({
        Title = 'Mastery Farm',
        Content = 'Auto farm your mastery',
    })

    local _DropdownMastery = v3.Main:AddDropdown('DropdownMastery', {
        Title = 'Farm Mode',
        Values = {
            'Level',
            'Near Mobs',
        },
        Multi = false,
        Default = 1,
    })

    _DropdownMastery:SetValue('Level')
    _DropdownMastery:OnChanged(function(p283)
        TypeMastery = p283
    end)
    v3.Main:AddToggle('ToggleMasteryFruit', {
        Title = 'Auto BF Mastery',
        Default = false,
    }):OnChanged(function(p284)
        AutoFarmMasDevilFruit = p284
    end)
    _Options.ToggleMasteryFruit:SetValue(false)
    v3.Main:AddToggle('ToggleMasteryGun', {
        Title = 'Auto Gun Mastery',
        Default = false,
    }):OnChanged(function(p285)
        AutoFarmMasGun = p285
    end)
    _Options.ToggleMasteryGun:SetValue(false)

    KillPercent = 40

    local _SliderHealt = v3.Main:AddSlider('SliderHealt', {
        Title = 'Health %',
        Description = 'Health for mastery',
        Default = 40,
        Min = 0,
        Max = 100,
        Rounding = 1,
        Callback = function(p286)
            KillPercent = p286
        end,
    })

    _SliderHealt:OnChanged(function(p288)
        KillPercent = p288
    end)
    _SliderHealt:SetValue(40)
    spawn(function()
        while task.wait(0.1) do
            if AutoFarmMasGun and TypeMastery == 'Level' then
                pcall(function()
                    CheckLevel(SelectMonster)

                    if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                        Tween(CFrameQ)

                        if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
                        end
                    end
                    if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                        return
                    end

                    local v289, v290, v291 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v292

                        v291, v292 = v289(v290, v291)

                        if v291 == nil then
                            UseSkillGun = false

                            Tween(CFrameQ)
                        end
                        if v292:FindFirstChild('Humanoid') and (v292:FindFirstChild('HumanoidRootPart') and v292.Name == Ms) then
                            if true then
                                game:GetService('RunService').Heartbeat:wait()

                                if v292.Humanoid.Health > v292.Humanoid.MaxHealth * KillPercent / 100 then
                                    UseSkillGun = false

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Click()
                                    Tween(v292.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                    v292.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v292.HumanoidRootPart.Transparency = 1
                                    v292.Humanoid.JumpPower = 0
                                    v292.Humanoid.WalkSpeed = 0
                                    v292.HumanoidRootPart.CanCollide = false

                                    Click()

                                    FarmPos = v292.HumanoidRootPart.CFrame
                                    MonFarm = v292.Name
                                else
                                    EquipTool(CurrentEquipGun)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v292.HumanoidRootPart.CFrame * Pos
                                    game:GetService('Players').LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                    UseSkillGun = true
                                end
                            end
                            if AutoFarmMasGun and (v292.Parent and v292.Humanoid.Health > 0) and (game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false and (game:GetService('Workspace').Enemies:FindFirstChild(v292.Name) and not TypeMastery ~= 'Queat')) then
                            end

                            UseSkillGun = false
                        end
                    end
                end)
            elseif AutoFarmMasGun and TypeMastery == 'No Quest' then
                pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                                Tween(CFrameMon)
                            end
                        else
                            BTP(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end

                    CheckLevel()

                    if not game.Workspace.Enemies:FindFirstChild(Ms) then
                        UseSkillGun = false

                        Tween(CFrameMon)

                        return
                    end

                    local v293, v294, v295 = pairs(game.Workspace.Enemies:GetChildren())
                    local v296

                    v295, v296 = v293(v294, v295)

                    if v295 == nil then
                    end
                    if v296.Name ~= Ms or not (v296:FindFirstChild('Humanoid') and v296:FindFirstChild('HumanoidRootPart')) then
                    else
                    end
                    if true then
                        game:GetService('RunService').Heartbeat:wait()

                        if v296.Humanoid.Health > v296.Humanoid.MaxHealth * KillPercent / 100 then
                            UseSkillGun = false

                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v296.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                            v296.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            v296.HumanoidRootPart.Transparency = 1
                            v296.Humanoid.JumpPower = 0
                            v296.Humanoid.WalkSpeed = 0
                            v296.HumanoidRootPart.CanCollide = false
                            FarmPos = v296.HumanoidRootPart.CFrame
                            MonFarm = v296.Name
                        else
                            EquipTool(CurrentEquipGun)

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v296.HumanoidRootPart.CFrame * Pos
                            game:GetService('Players').LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                            UseSkillGun = true
                        end
                    end
                    if AutoFarmMasGun and (v296.Parent and v296.Humanoid.Health > 0) and (game:GetService('Workspace').Enemies:FindFirstChild(v296.Name) and not TypeMastery ~= 'No Quest') then
                    end
                end)
            elseif AutoFarmMasGun and TypeMastery == 'Near Mobs' then
                pcall(function()
                    local v297, v298, v299 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v300

                        v299, v300 = v297(v298, v299)

                        if v299 == nil then
                            return
                        end
                        if v300.Name and (v300:FindFirstChild('Humanoid') and (v300:FindFirstChild('HumanoidRootPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v300:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 2000)) then
                            repeat
                                if true then
                                    game:GetService('RunService').Heartbeat:wait()

                                    if v300.Humanoid.Health > v300.Humanoid.MaxHealth * KillPercent / 100 then
                                        UseSkillGun = false

                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v300.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                        v300.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v300.HumanoidRootPart.Transparency = 1
                                        v300.Humanoid.JumpPower = 0
                                        v300.Humanoid.WalkSpeed = 0
                                        v300.HumanoidRootPart.CanCollide = false

                                        Click()

                                        FarmPos = v300.HumanoidRootPart.CFrame
                                        MonFarm = v300.Name

                                        Click()
                                    else
                                        EquipTool(CurrentEquipGun)

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v300.HumanoidRootPart.CFrame * Pos
                                        game:GetService('Players').LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                        UseSkillGun = true
                                    end
                                end
                            until not AutoFarmMasGun or (not MasteryType == 'Near Mobs' or (not v300.Parent or (v300.Humanoid.Health <= 0 or not TypeMastery == 'Near Mobs')))

                            UseSkillGun = false
                        end
                    end
                end)
            elseif AutoFarmMasGun and TypeMastery == 'Boss' then
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        pcall(function()
                            CheckBossQuest()

                            if not game:GetService('Workspace').Enemies:FindFirstChild(SelectBoss) then
                                UseSkillGun = false

                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                return
                            end

                            local v301, v302, v303 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            if true then
                                game:GetService('RunService').Heartbeat:wait()

                                if v304.Humanoid.Health > v304.Humanoid.MaxHealth * KillPercent / 100 then
                                    UseSkillGun = false

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v304.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                    v304.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v304.HumanoidRootPart.Transparency = 1
                                    v304.Humanoid.JumpPower = 0
                                    v304.Humanoid.WalkSpeed = 0
                                    v304.HumanoidRootPart.CanCollide = false
                                    FarmPos = v304.HumanoidRootPart.CFrame
                                    MonFarm = v304.Name
                                else
                                    EquipTool(CurrentEquipGun)
                                    Tween(v304.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                    game:GetService('Players').LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                    UseSkillGun = true
                                end
                            end
                            if AutoFarmMasGun and (not TypeMastery ~= 'Boss' and (v304.Parent and (v304.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ~= false))) and game:GetService('Workspace').Enemies:FindFirstChild(v304.Name) then
                            end

                            local v304

                            v303, v304 = v301(v302, v303)

                            if v303 == nil then
                            end
                            if v304.Name ~= selectBoss or not (v304:FindFirstChild('Humanoid') and v304:FindFirstChild('HumanoidRootPart')) then
                            else
                            end
                        end)
                    end
                else
                    CheckBossQuest()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
                                Tween(CFrameQBoss)
                            end
                        else
                            BTP(CFrameQBoss)
                            wait(3)
                        end
                    else
                        Tween(CFrameQBoss)
                    end
                    if (CFrameQBoss.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuestBoss, QuestLvBoss)
                    end
                end
            end
        end
    end)
    spawn(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if UseSkillGun then
                pcall(function()
                    local v305, v306, v307 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v308

                        v307, v308 = v305(v306, v307)

                        if v307 == nil then
                            break
                        end
                        if v308.Name == MonFarm then
                            game:GetService('Players').LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(v308.HumanoidRootPart.Position, v308.HumanoidRootPart)
                            ClickCamera()
                        end
                    end
                end)
            end
        end)
    end)
    spawn(function()
        while wait(1) do
            if UseSkillGun then
                pcall(function()
                    CheckLevel()

                    local v309, v310, v311 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v312

                        v311, v312 = v309(v310, v311)

                        if v311 == nil then
                            break
                        end
                        if SkillZ then
                            local v313 = {
                                PosMonMasteryGun.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v313))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if SkillX then
                            local v314 = {
                                PosMonMasteryGun.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v314))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        pcall(function()
            game:GetService('RunService').RenderStepped:Connect(function()
                if UseSkillGun then
                    local v315 = {
                        PosMonMasteryGun.Position,
                    }

                    game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Data.Gun.Value].RemoteEvent:FireServer(unpack(v315))
                end
            end)
        end)
    end)
    spawn(function()
        while task.wait(1) do
            if _G.UseSkill then
                pcall(function()
                    if not _G.UseSkill then
                        return
                    end

                    local v316, v317, v318 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                    local v319

                    v318, v319 = v316(v317, v318)

                    if v318 == nil then
                    end
                    if v319.Name ~= MonFarm or (not v319:FindFirstChild('Humanoid') or (not v319:FindFirstChild('HumanoidRootPart') or v319.Humanoid.Health > v319.Humanoid.MaxHealth * KillPercent / 100)) then
                    end

                    game:GetService('RunService').Heartbeat:wait()
                    EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                    Tween(v319.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                    PositionSkillMasteryDevilFruit = v319.HumanoidRootPart.Position

                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit

                        local _Value2 = game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value

                        if SkillZ and 1 <= _Value2 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if SkillX and 2 <= _Value2 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0.2)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if SkillC and 3 <= _Value2 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            wait(0.3)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if SkillV and 4 <= _Value2 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            wait(0.4)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end
                        if SkillF and 5 <= _Value2 then
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                            wait(0.5)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                        end
                    end
                    if AutoFarmMasDevilFruit and (_G.UseSkill and v319.Humanoid.Health ~= 0) then
                    else
                    end
                end)
            end
        end
    end)
    spawn(function()
        while task.wait(0.1) do
            if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
                pcall(function()
                    CheckLevel(SelectMonster)

                    if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <= 2500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
                                    Tween(CFrameQ)
                                end
                            else
                                BTP(CFrameQ)
                                wait(0.2)
                            end
                        else
                            Tween(CFrameQ)
                        end
                        if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
                        end
                    end
                    if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                        return
                    end

                    local v321, v322, v323 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v324

                        v323, v324 = v321(v322, v323)

                        if v323 == nil then
                            _G.UseSkill = false

                            Tween(Q)
                        end
                        if v324:FindFirstChild('Humanoid') and (v324:FindFirstChild('HumanoidRootPart') and v324.Name == Ms) then
                            if true then
                                game:GetService('RunService').Heartbeat:wait()

                                if v324.Humanoid.Health > v324.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Click()
                                    Tween(v324.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                    v324.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v324.HumanoidRootPart.Transparency = 1
                                    v324.Humanoid.JumpPower = 0
                                    v324.Humanoid.WalkSpeed = 0
                                    v324.HumanoidRootPart.CanCollide = false

                                    Click()

                                    FarmPos = v324.HumanoidRootPart.CFrame
                                    MonFarm = v324.Name
                                else
                                    _G.UseSkill = true
                                end
                            end
                            if AutoFarmMasDevilFruit and (v324.Parent and v324.Humanoid.Health ~= 0) and (game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false and (game:GetService('Workspace').Enemies:FindFirstChild(v324.Name) and not TypeMastery ~= 'Level')) then
                            end

                            _G.UseSkill = false
                        end
                    end
                end)
            elseif AutoFarmMasDevilFruit and TypeMastery == 'No Quest' then
                pcall(function()
                    CheckLevel()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                                Tween(CFrameMon)
                            end
                        else
                            BTP(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end
                    if not game.Workspace.Enemies:FindFirstChild(Ms) then
                        _G.UseSkill = false

                        Tween(CFrameMon)

                        return
                    end

                    local v325, v326, v327 = pairs(game.Workspace.Enemies:GetChildren())

                    if true then
                        game:GetService('RunService').Heartbeat:wait()

                        if v328.Humanoid.Health > v328.Humanoid.MaxHealth * KillPercent / 100 then
                            _G.UseSkill = false

                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v328.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                            v328.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            v328.HumanoidRootPart.Transparency = 1
                            v328.Humanoid.JumpPower = 0
                            v328.Humanoid.WalkSpeed = 0
                            v328.HumanoidRootPart.CanCollide = false
                            FarmPos = v328.HumanoidRootPart.CFrame
                            MonFarm = v328.Name
                        else
                            _G.UseSkill = true
                        end
                    end
                    if AutoFarmMasDevilFruit and (v328.Parent and v328.Humanoid.Health ~= 0) and (game:GetService('Workspace').Enemies:FindFirstChild(v328.Name) and not TypeMastery ~= 'No Quest') then
                    else
                    end

                    _G.UseSkill = false

                    local v328

                    v327, v328 = v325(v326, v327)

                    if v327 == nil then
                    end
                    if v328.Name ~= Ms or not (v328:FindFirstChild('Humanoid') and v328:FindFirstChild('HumanoidRootPart')) then
                    else
                    end
                end)
            elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
                pcall(function()
                    local v329, v330, v331 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v332

                        v331, v332 = v329(v330, v331)

                        if v331 == nil then
                            return
                        end
                        if v332.Name and (v332:FindFirstChild('Humanoid') and (v332:FindFirstChild('HumanoidRootPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v332:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 2000)) then
                            repeat
                                if true then
                                    game:GetService('RunService').Heartbeat:wait()

                                    if v332.Humanoid.Health > v332.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = false

                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v332.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                        v332.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v332.HumanoidRootPart.Transparency = 1
                                        v332.Humanoid.JumpPower = 0
                                        v332.Humanoid.WalkSpeed = 0
                                        v332.HumanoidRootPart.CanCollide = false
                                        FarmPos = v332.HumanoidRootPart.CFrame
                                        MonFarm = v332.Name

                                        Click()
                                    else
                                        _G.UseSkill = true
                                    end
                                end
                            until not AutoFarmMasDevilFruit or (not MasteryType == 'Nearest' or (not v332.Parent or (v332.Humanoid.Health == 0 or not TypeMastery == 'Nearest')))

                            _G.UseSkill = false
                        end
                    end
                end)
            elseif AutoFarmMasDevilFruit and TypeMastery == 'Boss' then
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        pcall(function()
                            CheckBossQuest()

                            if not game:GetService('Workspace').Enemies:FindFirstChild(SelectBoss) then
                                _G.UseSkill = false

                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * PosY)

                                return
                            end

                            local v333, v334, v335 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            if true then
                                game:GetService('RunService').Heartbeat:wait()

                                if v336.Humanoid.Health > v336.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v336.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                    v336.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v336.HumanoidRootPart.Transparency = 1
                                    v336.Humanoid.JumpPower = 0
                                    v336.Humanoid.WalkSpeed = 0
                                    v336.HumanoidRootPart.CanCollide = false
                                    FarmPos = v336.HumanoidRootPart.CFrame
                                    MonFarm = v336.Name
                                else
                                    _G.UseSkill = true
                                end
                            end
                            if AutoFarmMasDevilFruit and (not TypeMastery ~= 'Boss' and (v336.Parent and (v336.Humanoid.Health ~= 0 and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ~= false))) and game:GetService('Workspace').Enemies:FindFirstChild(v336.Name) then
                            end

                            local v336

                            v335, v336 = v333(v334, v335)

                            if v335 == nil then
                            end
                            if v336.Name ~= selectBoss or not (v336:FindFirstChild('Humanoid') and v336:FindFirstChild('HumanoidRootPart')) then
                            else
                            end
                        end)
                    end
                else
                    CheckBossQuest()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
                                Tween(CFrameQBoss)
                            end
                        else
                            BTP(CFrameQBoss)
                            wait(3)
                        end
                    else
                        Tween(CFrameQBoss)
                    end
                    if (CFrameQBoss.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuestBoss, QuestLvBoss)
                    end
                end
            end
        end
    end)

    if Second_Sea then
        v3.Main:AddParagraph({
            Title = 'Factory',
            Content = '',
        })
        v3.Main:AddToggle('ToggleFac', {
            Title = 'Auto Factory',
            Default = false,
        }):OnChanged(function(p337)
            Factory = p337
        end)

        Core = false

        spawn(function()
            while wait() do
                if Factory then
                    if game.Workspace.Enemies:FindFirstChild('Core') then
                        Core = true
                        Auto_Farm = false

                        local v338, v339, v340 = pairs(game.Workspace.Enemies:GetChildren())

                        while true do
                            local v341

                            v340, v341 = v338(v339, v340)

                            if v340 == nil then
                                break
                            end
                            if Core and (v341.Name == 'Core' and v341.Humanoid.Health > 0) then
                                repeat
                                    game:GetService('RunService').Heartbeat:wait()
                                    TP(CFrame.new(402.404296875, 182.53373718262, -414.73394775391))
                                    EquipWeapon(SelectToolWeapon)

                                    require(game:GetService('Players').LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000

                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                until not Core or (v341.Humanoid.Health <= 0 or Factory == false)
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild('Core') then
                        Core = true
                        Auto_Farm = false

                        TP(CFrame.new(402.404296875, 182.53373718262, -414.73394775391))
                    elseif _G.AutoFarm and SelectToolWeapon ~= '' then
                        Auto_Farm = true
                        Core = false
                    end
                end
            end
        end)
    end

    v3.Main:AddParagraph({
        Title = 'Misc Farm',
        Content = 'Bone & Cake Prince',
    })
    v3.Main:AddToggle('ToggleBone', {
        Title = 'Auto Farm Bone',
        Default = false,
    }):OnChanged(function(p342)
        AutoFarmBone = p342
    end)
    _Options.ToggleBone:SetValue(false)

    local u343 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

    spawn(function()
        while wait() do
            if AutoFarmBone then
                pcall(function()
                    local _Text = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                    if not string.find(_Text, 'Demonic Soul') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                                local v345, v346, v347 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v348

                                    v347, v348 = v345(v346, v347)

                                    if v347 == nil then
                                        break
                                    end
                                    if v348:FindFirstChild('HumanoidRootPart') and (v348:FindFirstChild('Humanoid') and (v348.Humanoid.Health > 0 and (v348.Name == 'Reborn Skeleton' or (v348.Name == 'Living Zombie' or (v348.Name == 'Demonic Soul' or v348.Name == 'Posessed Mummy'))))) then
                                        if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Demonic Soul') then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipTool(SelectWeapon)
                                                Tween(v348.HumanoidRootPart.CFrame * Pos)

                                                v348.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                v348.HumanoidRootPart.Transparency = 1
                                                v348.Humanoid.JumpPower = 0
                                                v348.Humanoid.WalkSpeed = 0
                                                v348.HumanoidRootPart.CanCollide = false
                                                FarmPos = v348.HumanoidRootPart.CFrame
                                                MonFarm = v348.Name

                                                Click()
                                            until not AutoFarmBone or (v348.Humanoid.Health <= 0 or not v348.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                        end
                                    end
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Demonic Soul') then
                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Demonic Soul').HumanoidRootPart.CFrame * CFrame.new(15, 10, 2))
                            end
                        end
                    else
                        if BypassTP then
                            wait()

                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u343.Position).Magnitude <= 2500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u343.Position).Magnitude < 2500 then
                                    Tween(u343)
                                end
                            else
                                BTP(u343)
                            end
                        else
                            Tween(u343)
                        end
                        if (u343.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'HauntedQuest2', 1)
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddToggle('ToggleCake', {
        Title = 'Auto Farm Cake Prince',
        Default = false,
    }):OnChanged(function(p349)
        AutoCakePrince = p349
    end)
    _Options.ToggleCake:SetValue(false)
    spawn(function()
        while task.wait() do
            if AutoCakePrince then
                if game.ReplicatedStorage:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                        local v350, v351, v352 = pairs(game.Workspace.Enemies:GetChildren())

                        while true do
                            local v353

                            v352, v353 = v350(v351, v352)

                            if v352 == nil then
                                break
                            end
                            if AutoCakePrince and (v353.Name == 'Cake Prince' and (v353:FindFirstChild('HumanoidRootPart') and (v353:FindFirstChild('Humanoid') and v353.Humanoid.Health > 0))) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v353.HumanoidRootPart.CFrame * Pos)

                                    v353.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v353.HumanoidRootPart.Transparency = 1
                                    v353.Humanoid.JumpPower = 0
                                    v353.Humanoid.WalkSpeed = 0
                                    v353.HumanoidRootPart.CanCollide = false
                                    FarmPos = v353.HumanoidRootPart.CFrame
                                    MonFarm = v353.Name

                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
                                until not AutoCakePrince or (not v353.Parent or v353.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                else
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('CakePrinceSpawner')

                    if game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                        local v354, v355, v356 = pairs(game.Workspace.Enemies:GetChildren())

                        while true do
                            local v357

                            v356, v357 = v354(v355, v356)

                            if v356 == nil then
                                break
                            end
                            if v357:FindFirstChild('Humanoid') and (v357:FindFirstChild('HumanoidRootPart') and (v357.Humanoid.Health > 0 and (v357.Name == 'Cookie Crafter' or (v357.Name == 'Cake Guard' or (v357.Name == 'Baking Staff' or v357.Name == 'Head Baker'))))) and (v357:FindFirstChild('HumanoidRootPart') and (v357:FindFirstChild('Humanoid') and v357.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v357.HumanoidRootPart.CFrame * Pos)

                                    v357.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v357.HumanoidRootPart.Transparency = 1
                                    v357.Humanoid.JumpPower = 0
                                    v357.Humanoid.WalkSpeed = 0
                                    v357.HumanoidRootPart.CanCollide = false
                                    FarmPos = v357.HumanoidRootPart.CFrame
                                    MonFarm = v357.Name

                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
                                until not AutoCakePrince or (not v357.Parent or v357.Humanoid.Health <= 0)
                            end
                        end
                    else
                        local v358 = CFrame.new(-2077, 252, -12373)

                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v358.Position).Magnitude <= 2000 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v358.Position).Magnitude < 2000 then
                                    Tween(v358)
                                end
                            else
                                BTP(v358)
                                wait(3)
                            end
                        else
                            Tween(v358)
                        end
                    end
                end
            end
        end
    end)
    v3.Main:AddToggle('ToggleCake1', {
        Title = 'Auto Spawns Cake Prince',
        Default = false,
    }):OnChanged(function(p359)
        AutoCakePrince1 = p359
    end)
    spawn(function()
        while wait() do
            if AutoCakePrince1 then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer('CakePrinceSpawner')
            end
        end
    end)
    v3.Main:AddParagraph({
        Title = 'Material',
        Content = 'Auto farm material',
    })

    if First_Sea then
        MaterialList = {
            'Scrap Metal',
            'Leather',
            'Angel Wings',
            'Magma Ore',
            'Fish Tail',
        }
    elseif Second_Sea then
        MaterialList = {
            'Scrap Metal',
            'Leather',
            'Radioactive Material',
            'Mystic Droplet',
            'Magma Ore',
            'Vampire Fang',
        }
    elseif Third_Sea then
        MaterialList = {
            'Scrap Metal',
            'Leather',
            'Demonic Wisp',
            'Conjured Cocoa',
            'Dragon Scale',
            'Gunpowder',
            'Fish Tail',
            'Mini Tusk',
        }
    end

    local _DropdownMaterial = v3.Main:AddDropdown('DropdownMaterial', {
        Title = 'Select Material List',
        Values = MaterialList,
        Multi = false,
        Default = 1,
    })

    _DropdownMaterial:SetValue('Conjured Cocoa')
    _DropdownMaterial:OnChanged(function(p361)
        SelectMaterial = p361
    end)
    v3.Main:AddToggle('ToggleMaterial', {
        Title = 'Auto Farm Material',
        Default = false,
    }):OnChanged(function(p362)
        AutoFarmMaterial = p362
    end)
    _Options.ToggleMaterial:SetValue(false)
    spawn(function()
        while task.wait() do
            if AutoFarmMaterial then
                pcall(function()
                    MaterialMon(SelectMaterial)

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude <= 3500 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
                                Tween(MPos)
                            end
                        else
                            BTP(MPos)
                        end
                    else
                        Tween(MPos)
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild(MMon) then
                        local v363, v364, v365 = pairs(game.Workspace.Enemies:GetChildren())

                        while true do
                            local v366

                            v365, v366 = v363(v364, v365)

                            if v365 == nil then
                                break
                            end
                            if v366:FindFirstChild('Humanoid') and (v366:FindFirstChild('HumanoidRootPart') and (v366.Humanoid.Health > 0 and v366.Name == MMon)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v366.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))

                                    v366.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v366.HumanoidRootPart.Transparency = 1
                                    v366.Humanoid.JumpPower = 0
                                    v366.Humanoid.WalkSpeed = 0
                                    v366.HumanoidRootPart.CanCollide = false
                                    FarmPos = v366.HumanoidRootPart.CFrame
                                    MonFarm = v366.Name

                                    Click()
                                until not AutoFarmMaterial or (not v366.Parent or v366.Humanoid.Health <= 0)
                            end
                        end
                    else
                        local v367, v368, v369 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                        while true do
                            local v370

                            v369, v370 = v367(v368, v369)

                            if v369 == nil then
                                break
                            end
                            if string.find(v370.Name, Mon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v370.Position).Magnitude >= 10 then
                                Tween(v370.CFrame * CFrame.new(u233, u234, u235))
                            end
                        end
                    end
                end)
            end
        end
    end)

    if Third_Sea then
        v3.Main:AddParagraph({
            Title = 'Rough Sea',
            Content = 'Auto rough sea',
        })
        v3.Main:AddToggle('ToggleBoat', {
            Title = 'Auto Buy Boat',
            Default = false,
        }):OnChanged(function(p371)
            _G.DriveMytic = p371
        end)
        _Options.ToggleBoat:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if not _G.DriveMytic then
                        TPB(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame)

                        return
                    end
                    if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                        if not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                        end

                        TPB(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame)
                        game:GetService('Workspace').Boats.PirateGrandBrigade:Destroy()
                        TPP(game:GetService('Workspace').Map.MysticIsland.Center.CFrame * CFrame.new(0, 300, 0))
                        wait(1)
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Notify',
                            Text = 'Mirage not Found \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}',
                            Icon = '',
                            Duration = 3,
                        })

                        if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Mirage Island') and _G.DriveMytic ~= false then
                        end
                    end
                    if not game:GetService('Workspace').Boats:FindFirstChild('PirateGrandBrigade') then
                        buyb = TPP(CFrame.new())

                        if (CFrame.new().Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                            if buyb then
                                buyb:Stop()
                            end

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                                'BuyBoat',
                                'PirateGrandBrigade',
                            }))
                        end
                    end
                    if not game:GetService('Workspace').Boats:FindFirstChild('PirateGrandBrigade') then
                    end
                    if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == false then
                        TPP(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                    end

                    local v372, v373, v374 = pairs(game:GetService('Workspace').Boats:GetChildren())
                    local v375

                    v374, v375 = v372(v373, v374)

                    if v374 == nil then
                    end
                    if v375.Name ~= 'PirateGrandBrigade' then
                    else
                    end
                    if true then
                        wait()

                        if (CFrame.new(-324.30484, 15.5859451, 5218.35742, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 10 then
                            if (CFrame.new(260.3658142089844, 17.747055053710938, 3543.2646484375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 10 then
                                if (CFrame.new(29236.712890625, 17.74854850769043, 19706.36328125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                    TPB(CFrame.new(260.3658142089844, 17.747055053710938, 3543.2646484375))
                                end
                            else
                                TPB(CFrame.new(29236.712890625, 17.74854850769043, 19706.36328125))
                            end
                        else
                            TPB(CFrame.new(260.3658142089844, 17.747055053710938, 3543.2646484375))
                        end
                    end
                    if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Mirage Island') or _G.DriveMytic == false then
                    else
                    end
                end)
            end
        end)
        v3.Main:AddToggle('ToggleTW', {
            Title = 'Auto Press W',
            Default = false,
        }):OnChanged(function(p376)
            _G.AutoW = p376
        end)
        _Options.ToggleTW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
                    end
                end)
            end
        end)
        v3.Main:AddToggle('ToggleTerrorshark', {
            Title = 'Auto Kill Terrorshark',
            Default = false,
        }):OnChanged(function(p377)
            _G.AutoTerrorshark = p377
        end)
        _Options.ToggleTerrorshark:SetValue(false)
        spawn(function()
            while wait() do
                if _G.AutoTerrorshark then
                    pcall(function()
                        if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') then
                            local v378, v379, v380 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v381

                                v380, v381 = v378(v379, v380)

                                if v380 == nil then
                                    break
                                end
                                if v381.Name == 'Terrorshark' and (v381:FindFirstChild('Humanoid') and (v381:FindFirstChild('HumanoidRootPart') and v381.Humanoid.Health > 0)) then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)

                                        v381.HumanoidRootPart.CanCollide = false
                                        v381.Humanoid.WalkSpeed = 0
                                        v381.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        Click()
                                        Tween(v381.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                                    until not _G.AutoTerrorshark or (not v381.Parent or v381.Humanoid.Health <= 0)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end)
                end
            end
        end)
        v3.Main:AddToggle('TogglePiranha', {
            Title = 'Auto Kill Piranha',
            Default = false,
        }):OnChanged(function(p382)
            _G.farmpiranya = p382
        end)
        _Options.TogglePiranha:SetValue(false)
        spawn(function()
            while wait() do
                if _G.farmpiranya then
                    pcall(function()
                        if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') then
                            local v383, v384, v385 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v386

                                v385, v386 = v383(v384, v385)

                                if v385 == nil then
                                    break
                                end
                                if v386.Name == 'Piranha' and (v386:FindFirstChild('Humanoid') and (v386:FindFirstChild('HumanoidRootPart') and v386.Humanoid.Health > 0)) then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)

                                        v386.HumanoidRootPart.CanCollide = false
                                        v386.Humanoid.WalkSpeed = 0
                                        v386.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        Click()
                                        Tween(v386.HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                                    until not _G.farmpiranya or (not v386.Parent or v386.Humanoid.Health <= 0)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Piranha') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Piranha').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end)
                end
            end
        end)
        v3.Main:AddParagraph({
            Title = 'Elite Hunter',
            Content = 'Auto find and kill boss elite',
        })
        v3.Main:AddToggle('ToggleElite', {
            Title = 'Auto Elite Hunter',
            Default = false,
        }):OnChanged(function(p387)
            AutoEliteHunter = p387
        end)
        _Options.ToggleElite:SetValue(false)
        spawn(function()
            while task.wait() do
                if AutoEliteHunter then
                    pcall(function()
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                                local v388, v389, v390 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v391

                                    v390, v391 = v388(v389, v390)

                                    if v390 == nil then
                                        break
                                    end
                                    if v391:FindFirstChild('Humanoid') and (v391:FindFirstChild('HumanoidRootPart') and v391.Humanoid.Health > 0) then
                                        if v391.Name == 'Diablo' or (v391.Name == 'Deandre' or v391.Name == 'Urban') then
                                            repeat
                                                task.wait()
                                                EquipTool(SelectWeapon)
                                                AutoHaki()
                                                Tween(v391.HumanoidRootPart.CFrame * Pos)

                                                MonsterPosition = v391.HumanoidRootPart.CFrame
                                                v391.HumanoidRootPart.CFrame = v391.HumanoidRootPart.CFrame
                                                v391.Humanoid.JumpPower = 0
                                                v391.Humanoid.WalkSpeed = 0
                                                v391.HumanoidRootPart.CanCollide = false

                                                Click()

                                                FarmPos = v391.HumanoidRootPart.CFrame
                                                MonFarm = v391.Name
                                                v391.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                BringMobs = false
                                            until AutoEliteHunter == false or (v391.Humanoid.Health <= 0 or not v391.Parent)
                                        end

                                        BringMobs = true
                                    end
                                end
                            elseif BypassTP then
                                if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                                    BTP(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                                    BTP(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                                    BTP(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(u233, u234, u235))
                            end
                        end
                    end)
                end
            end
        end)
    end
    if Third_Sea then
        v3.Main:AddParagraph({
            Title = 'Sea Beast',
            Content = 'Auto Kill Sea Beast',
        })
        v3.Main:AddToggle('ToggleSeaBeAst', {
            Title = 'Auto Sea Beast',
            Default = false,
        }):OnChanged(function(p392)
            _G.Auto_Seabest = p392
        end)
        _Options.ToggleSeaBeAst:SetValue(false)

        local v393 = getrawmetatable(game)
        local ___namecall2 = v393.__namecall

        setreadonly(v393, false)

        v393.__namecall = newcclosure(function(...)
            local v395 = getnamecallmethod()
            local v396 = {...}

            if tostring(v395) ~= 'FireServer' or (tostring(v396[1]) ~= 'RemoteEvent' or (tostring(v396[2]) == 'true' or (tostring(v396[2]) == 'false' or not Skillaimbot))) then
                return ___namecall2(...)
            end

            v396[2] = AimBotSkillPosition

            return ___namecall2(unpack(v396))
        end)
        Skillz = true
        Skillx = true
        Skillc = true
        Skillv = true

        spawn(function()
            while wait() do
                pcall(function()
                    if AutoSkill then
                        if Skillz then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if Skillx then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if Skillc then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if Skillv then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end
                    end
                end)
            end
        end)
        task.spawn(function()
            while wait() do
                pcall(function()
                    if _G.Auto_Seabest then
                        if game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') then
                            if game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') then
                                local v397, v398, v399 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                                while true do
                                    local v400

                                    v399, v400 = v397(v398, v399)

                                    if v399 == nil then
                                        break
                                    end
                                    if v400:FindFirstChild('HumanoidRootPart') then
                                        repeat
                                            wait()

                                            game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit = false

                                            TPP(v400.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                            EquipAllWeapon()

                                            AutoSkill = true
                                            AimBotSkillPosition = v400.HumanoidRootPart
                                            Skillaimbot = true
                                        until not v400:FindFirstChild('HumanoidRootPart') or _G.Auto_Seabest == false

                                        AutoSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        elseif game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                            if game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                                local v401, v402, v403 = pairs(game:GetService('Workspace').Boats:GetChildren())

                                while true do
                                    local v404

                                    v403, v404 = v401(v402, v403)

                                    if v403 == nil then
                                        break
                                    end
                                    if v404.Name == 'PirateBrigade' and v404:FindFirstChild('VehicleSeat') then
                                        repeat
                                            wait()

                                            game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit = false

                                            TPP(v404.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        until not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') or _G.Auto_Seabest == false
                                    end
                                end
                            end
                        else
                            if not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                                if not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                                    buyb = TPP(CFrame.new(-4569.759765625, 16.420740127563477, -2786.94189453125))

                                    if (CFrame.new(-4485.486328125, 10.883736610412598, -2747.4326171875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        if buyb then
                                            buyb:Stop()
                                        end

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                                            'BuyBoat',
                                            'PirateBrigade',
                                        }))
                                    end
                                end
                                if not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                                end
                                if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == false then
                                    TPP(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                end
                                if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit ~= true then
                                end

                                wait()

                                if (game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                    TPB(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                end
                                if game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') or _G.Auto_Seabest == false then
                                end
                            end
                            if game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                                local v405, v406, v407 = pairs(game:GetService('Workspace').Boats:GetChildren())

                                while true do
                                    local v408

                                    v407, v408 = v405(v406, v407)

                                    if v407 == nil then
                                        break
                                    end
                                    if v408.Name == 'PirateBrigade' and v408:FindFirstChild('VehicleSeat') then
                                        repeat
                                            wait()

                                            game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit = false

                                            TPP(v408.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        until not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') or _G.Auto_Seabest == false
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end)
        v3.Main:AddToggle('ToggleAutoW', {
            Title = 'Auto Press W',
            Default = false,
        }):OnChanged(function(p409)
            _G.AutoW = p409
        end)
        _Options.ToggleAutoW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
                    end
                end)
            end
        end)
        v3.Main:AddParagraph({
            Title = 'Mirage Island',
            Content = 'Auto Summon Mystic Island',
        })
        v3.Main:AddToggle('ToggleMirage', {
            Title = 'Auto Mirage Island',
            Default = false,
        }):OnChanged(function(_)
            if state then
                _G.dao = true
            else
                _G.dao = false
            end
            if _G.dao then
                local v410 = {
                    'requestEntrance',
                    Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125),
                }

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v410))
                wait(1)
                BTPZ(CFrame.new(-5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'BuyBoat',
                    'PirateBrigade',
                }))

                function two(p411)
                    pcall(function()
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    end)

                    if (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - p411.Position).Magnitude > 200 then
                        local _TweenService3 = game:service('TweenService')
                        local u413 = TweenInfo.new((game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - p411.Position).Magnitude / 325, Enum.EasingStyle.Linear)
                        local v415, v416 = pcall(function()
                            local v414 = {CFrame = p411}

                            tweenz = _TweenService3:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, u413, v414)

                            tweenz:Play()
                        end)

                        err = v416
                        tween = v415

                        if not tween then
                            return err
                        end
                    else
                        pcall(function()
                            tweenz:Cancel()
                        end)

                        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = p411
                    end

                    function _TweenCanCle()
                        tweenz:Cancel()
                    end
                end

                two(CFrame.new(-5100.7085, 29.968586, -6792.45459, -0.33648631, -0.0396691673, 0.940852463, -6.40461678e-7, 0.999112308, 0.0421253517, -0.941688359, 0.0141740013, -0.336187631))
                wait(13)

                local v417 = next
                local v418, v419 = workspace.Boats.PirateBrigade:GetDescendants()

                while true do
                    local v420

                    v419, v420 = v417(v418, v419)

                    if v419 == nil then
                        break
                    end
                    if v420.Name:find('VehicleSeat') then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v420.CFrame

                        if game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                            Tween(game:GetService('Workspace').Map:FindFirstChild('MysticIsland').HumanoidRootPart.CFrame * CFrame.new(0, 500, -100))
                        end
                    end
                end
            end
        end)
        _Options.ToggleMirage:SetValue(false)
        v3.Main:AddToggle('AutoW', {
            Title = 'Auto Press W',
            Default = false,
        }):OnChanged(function(p421)
            _G.AutoW = p421
        end)
        _Options.AutoW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
                    end
                end)
            end
        end)
    end

    v3.Main:AddParagraph({
        Title = 'Items',
        Content = 'Auto get items',
    })
    v3.Main:AddToggle('ToggleHallow', {
        Title = 'Auto Hallow Scythe [Fully]',
        Default = false,
    }):OnChanged(function(p422)
        AutoHallowSycthe = p422
    end)
    _Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v423, v424, v425 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v426

                            v425, v426 = v423(v424, v425)

                            if v425 == nil then
                                break
                            end
                            if string.find(v426.Name, 'Soul Reaper') then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v426.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    Tween(v426.HumanoidRootPart.CFrame * Pos)

                                    v426.HumanoidRootPart.Transparency = 1

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                    Click()
                                until v426.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        EquipTool('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait(0.001) do
            if AutoHallowSycthe then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'Bones',
                    'Buy',
                    1,
                    1,
                }))
            end
        end
    end)
    v3.Main:AddToggle('ToggleYama', {
        Title = 'Auto Get Yama',
        Default = false,
    }):OnChanged(function(p427)
        _G.AutoYama = p427
    end)
    _Options.ToggleYama:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoYama and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                wait(0.1)
                fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)

                if not game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Yama') and _G.AutoYama then
                    break
                end
            end
        end
    end)
    v3.Main:AddToggle('ToggleTushita', {
        Title = 'Auto Tushita',
        Default = false,
    }):OnChanged(function(p428)
        _G.Autotushita = p428
    end)
    _Options.ToggleTushita:SetValue(false)

    local u429 = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)

    spawn(function()
        while wait() do
            if _G.Autotushita then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Longma') then
                        local v430, v431, v432 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v433

                            v432, v433 = v430(v431, v432)

                            if v432 == nil then
                                break
                            end
                            if v433.Name == 'Longma' and (v433:FindFirstChild('Humanoid') and (v433:FindFirstChild('HumanoidRootPart') and v433.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v433.HumanoidRootPart.CanCollide = false
                                    v433.Humanoid.WalkSpeed = 0
                                    v433.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    Tween(v433.HumanoidRootPart.CFrame * Pos)
                                    Click()
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Autotushita or (not v433.Parent or v433.Humanoid.Health <= 0)
                            end
                        end
                    else
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u429.Position).Magnitude <= 1500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u429.Position).Magnitude < 1500 then
                                    Tween(u429)
                                end
                            else
                                BTP(u429)
                            end
                        else
                            Tween(u429)
                        end

                        Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Longma') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Longma').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddToggle('ToggleHoly', {
        Title = 'Auto Holy Torch',
        Default = false,
    }):OnChanged(function(p434)
        _G.AutoHolyTorch = p434
    end)
    _Options.ToggleHoly:SetValue(false)
    spawn(function()
        while wait(0.5) do
            pcall(function()
                if _G.AutoHolyTorch and (game.Players.LocalPlayer.Backpack:FindFirstChild('Holy Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Holy Torch')) then
                    repeat
                        wait(0.2)
                        EquipTool('Holy Torch')
                        Tween(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    until (CFrame.new(-10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                    wait(2)

                    repeat
                        wait(0.2)
                        EquipTool('Holy Torch')
                        Tween(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                    until (CFrame.new(-11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                    wait(2)

                    repeat
                        wait(0.2)
                        EquipTool('Holy Torch')
                        Tween(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                    until (CFrame.new(-12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                    wait(2)

                    repeat
                        wait(0.2)
                        EquipTool('Holy Torch')
                        Tween(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                    until (CFrame.new(-13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                    wait(2)
                    EquipTool('Holy Torch')

                    repeat
                        wait(0.2)
                        Tween(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                    until (CFrame.new(-13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                    wait(2)
                    Com()
                    wait(20)
                end
            end)
        end
    end)
    v3.Setting:AddParagraph({
        Title = 'Setting',
        Content = 'Setting Farm',
    })
    v3.Setting:AddToggle('ToggleTurnOnV4', {
        Title = 'Turn On V4',
        Default = true,
    }):OnChanged(function(p435)
        TurnOnV4 = p435
    end)
    task.spawn(function()
        while task.wait() do
            task.wait()

            if TurnOnV4 and (game.Players.LocalPlayer.Character:FindFirstChild('RaceEnergy') and (game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value)) then
                local _VirtualInputManager = game:service('VirtualInputManager')

                _VirtualInputManager:SendKeyEvent(true, 'Y', false, game)
                task.wait()
                _VirtualInputManager:SendKeyEvent(false, 'Y', false, game)
            end
        end
    end)
    v3.Setting:AddToggle('ToggleBringMob', {
        Title = 'Fast Attack',
        Default = true,
    }):OnChanged(function(p437)
        FastAttack = p437
    end)
    v3.Setting:AddToggle('ToggleBringMob', {
        Title = 'Bring Mob',
        Default = true,
    }):OnChanged(function(p438)
        BringMobs = p438
    end)
    _Options.ToggleBringMob:SetValue(true)
    task.spawn(function()
        while task.wait() do
            if BringMobs then
                pcall(function()
                    local v439, v440, v441 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v442

                        v441, v442 = v439(v440, v441)

                        if v441 == nil then
                            break
                        end
                        if not string.find(v442.Name, 'Boss') and (v442.Name == MonFarm and ((v442.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 and (InMyNetWork(v442.HumanoidRootPart) and InMyNetWork(v442.HumanoidRootPart)))) then
                            v442.HumanoidRootPart.CFrame = FarmPos
                            v442.HumanoidRootPart.CanCollide = false
                            v442.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                        end
                    end
                end)
            end
        end
    end)
    task.spawn(function()
        while true do
            wait()

            if setscriptable then
                setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
            end
        end
    end)

    function InMyNetWork(p443)
        if isnetworkowner then
            return isnetworkowner(p443)
        else
            return (p443.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350
        end
    end

    v3.Setting:AddToggle('ToggleBypassTP', {
        Title = 'Bypass Tp',
        Default = false,
    }):OnChanged(function(p444)
        BypassTP = p444
    end)
    _Options.ToggleBypassTP:SetValue(false)
    v3.Setting:AddToggle('ToggleRemove', {
        Title = 'Remove Dame Text',
        Default = true,
    }):OnChanged(function(p445)
        WScriptRemovetext = p445
    end)
    _Options.ToggleRemove:SetValue(true)
    spawn(function()
        while wait() do
            if WScriptRemovetext then
                game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = true
            end
        end
    end)
    v3.Setting:AddParagraph({
        Title = 'Setting Skill',
        Content = 'Skill use for farm mastery',
    })
    v3.Setting:AddToggle('ToggleZ', {
        Title = 'Skill Z',
        Default = true,
    }):OnChanged(function(p446)
        SkillZ = p446
    end)
    _Options.ToggleZ:SetValue(true)
    v3.Setting:AddToggle('ToggleX', {
        Title = 'Skill X',
        Default = true,
    }):OnChanged(function(p447)
        SkillX = p447
    end)
    _Options.ToggleX:SetValue(true)
    v3.Setting:AddToggle('ToggleC', {
        Title = 'Skill C',
        Default = true,
    }):OnChanged(function(p448)
        SkillC = p448
    end)
    _Options.ToggleC:SetValue(true)
    v3.Setting:AddToggle('ToggleV', {
        Title = 'Skill V',
        Default = true,
    }):OnChanged(function(p449)
        SkillV = p449
    end)
    _Options.ToggleV:SetValue(true)
    v3.Setting:AddToggle('ToggleF', {
        Title = 'Skill F',
        Default = true,
    }):OnChanged(function(p450)
        SkillF = p450
    end)
    _Options.ToggleF:SetValue(true)
    v3.Stats:AddToggle('ToggleMelee', {
        Title = 'Auto Melee',
        Default = false,
    }):OnChanged(function(p451)
        _G.Auto_Stats_Melee = p451
    end)
    _Options.ToggleMelee:SetValue(false)
    v3.Stats:AddToggle('ToggleDe', {
        Title = 'Auto Defense',
        Default = false,
    }):OnChanged(function(p452)
        _G.Auto_Stats_Defense = p452
    end)
    _Options.ToggleDe:SetValue(false)
    v3.Stats:AddToggle('ToggleSword', {
        Title = 'Auto Sword',
        Default = false,
    }):OnChanged(function(p453)
        _G.Auto_Stats_Sword = p453
    end)
    _Options.ToggleSword:SetValue(false)
    v3.Stats:AddToggle('ToggleGun', {
        Title = 'Auto Gun',
        Default = false,
    }):OnChanged(function(p454)
        _G.Auto_Stats_Gun = p454
    end)
    _Options.ToggleGun:SetValue(false)
    v3.Stats:AddToggle('ToggleFruit', {
        Title = 'Auto Demon Fruit',
        Default = false,
    }):OnChanged(function(p455)
        _G.Auto_Stats_Devil_Fruit = p455
    end)
    _Options.ToggleFruit:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Devil_Fruit then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'AddPoint',
                    'Demon Fruit',
                    3,
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Gun then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'AddPoint',
                    'Gun',
                    3,
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Sword then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'AddPoint',
                    'Sword',
                    3,
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Defense then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'AddPoint',
                    'Defense',
                    3,
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Melee then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'AddPoint',
                    'Melee',
                    3,
                }))
            end
        end
    end)

    local v456, v457, v458 = pairs(game:GetService('Players'):GetChildren())
    local u459 = {}

    while true do
        local v460

        v458, v460 = v456(v457, v458)

        if v458 == nil then
            break
        end

        table.insert(u459, v460.Name)
    end

    local _SelectedPly = v3.Player:AddDropdown('SelectedPly', {
        Title = 'Select Players List',
        Values = u459,
        Multi = false,
        Default = 1,
    })
    local v462 = _SelectedPly

    _SelectedPly.SetValue(v462, 'nil')

    local v463 = _SelectedPly

    _SelectedPly.OnChanged(v463, function(p464)
        _G.SelectPly = p464
    end)
    v3.Player:AddButton({
        Title = 'Refresh Dropdown',
        Description = 'Refresh player list',
        Callback = function()
            u459 = {}

            _SelectedPly:Clear()

            local v465, v466, v467 = pairs(game:GetService('Players'):GetChildren())

            while true do
                local v468

                v467, v468 = v465(v466, v467)

                if v467 == nil then
                    break
                end

                _SelectedPly:Add(v468.Name)
            end
        end,
    })
    v3.Player:AddToggle('ToggleTeleport', {
        Title = 'Teleport To Player',
        Default = false,
    }):OnChanged(function(p469)
        _G.TeleportPly = p469

        pcall(function()
            if _G.TeleportPly then
                repeat
                    Tween(game:GetService('Players')[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                    wait()
                until _G.TeleportPly == false
            end
        end)
    end)
    _Options.ToggleTeleport:SetValue(false)
    v3.Player:AddToggle('ToggleQuanSat', {
        Title = 'Spectate Player',
        Default = false,
    }):OnChanged(function(p470)
        SpectatePlys = p470

        local _ = game:GetService('Players').LocalPlayer.Character.Humanoid

        game:GetService('Players'):FindFirstChild(_G.SelectPly)

        repeat
            wait(0.1)

            game:GetService('Workspace').Camera.CameraSubject = game:GetService('Players'):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false

        game:GetService('Workspace').Camera.CameraSubject = game:GetService('Players').LocalPlayer.Character.Humanoid
    end)
    _Options.ToggleQuanSat:SetValue(false)
    v3.Teleport:AddParagraph({
        Title = 'World',
        Content = 'Sea1 & Sea2 & Sea3',
    })
    v3.Teleport:AddButton({
        Title = 'First Sea',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
        end,
    })
    v3.Teleport:AddButton({
        Title = 'Second Sea',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
        end,
    })
    v3.Teleport:AddButton({
        Title = 'Third Sea',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
        end,
    })
    v3.Teleport:AddParagraph({
        Title = 'Island',
        Content = 'Teleport to Island',
    })

    if First_Sea then
        IslandList = {
            'WindMill',
            'Marine',
            'Middle Town',
            'Jungle',
            'Pirate Village',
            'Desert',
            'Snow Island',
            'MarineFord',
            'Colosseum',
            'Sky Island 1',
            'Sky Island 2',
            'Sky Island 3',
            'Prison',
            'Magma Village',
            'Under Water Island',
            'Fountain City',
            'Shank Room',
            'Mob Island',
        }
    elseif Second_Sea then
        IslandList = {
            'The Cafe',
            'Frist Spot',
            'Dark Area',
            'Flamingo Mansion',
            'Flamingo Room',
            'Green Zone',
            'Factory',
            'Colossuim',
            'Zombie Island',
            'Two Snow Mountain',
            'Punk Hazard',
            'Cursed Ship',
            'Ice Castle',
            'Forgotten Island',
            'Ussop Island',
            'Mini Sky Island',
        }
    elseif Third_Sea then
        IslandList = {
            'Mansion',
            'Port Town',
            'Great Tree',
            'Castle On The Sea',
            'MiniSky',
            'Hydra Island',
            'Floating Turtle',
            'Haunted Castle',
            'Ice Cream Island',
            'Peanut Island',
            'Cake Island',
            'Cocoa Island',
            'Candy Island',
        }
    end

    local _DropdownIsland = v3.Teleport:AddDropdown('DropdownIsland', {
        Title = 'Select Island',
        Values = IslandList,
        Multi = false,
        Default = 1,
    })

    _DropdownIsland:SetValue('...')
    _DropdownIsland:OnChanged(function(p472)
        _G.SelectIsland = p472
    end)
    v3.Teleport:AddToggle('ToggleIsland', {
        Title = 'Teleport',
        Default = false,
    }):OnChanged(function(p473)
        _G.TeleportIsland = p473

        if _G.TeleportIsland ~= true then
            return
        else
            while true do
                if true then
                    wait()

                    if _G.SelectIsland ~= 'WindMill' then
                        if _G.SelectIsland ~= 'Marine' then
                            if _G.SelectIsland ~= 'Middle Town' then
                                if _G.SelectIsland ~= 'Jungle' then
                                    if _G.SelectIsland ~= 'Pirate Village' then
                                        if _G.SelectIsland ~= 'Desert' then
                                            if _G.SelectIsland ~= 'Snow Island' then
                                                if _G.SelectIsland ~= 'MarineFord' then
                                                    if _G.SelectIsland ~= 'Colosseum' then
                                                        if _G.SelectIsland ~= 'Sky Island 1' then
                                                            if _G.SelectIsland ~= 'Sky Island 2' then
                                                                if _G.SelectIsland ~= 'Sky Island 3' then
                                                                    if _G.SelectIsland ~= 'Prison' then
                                                                        if _G.SelectIsland ~= 'Magma Village' then
                                                                            if _G.SelectIsland ~= 'Under Water Island' then
                                                                                if _G.SelectIsland ~= 'Fountain City' then
                                                                                    if _G.SelectIsland ~= 'Shank Room' then
                                                                                        if _G.SelectIsland ~= 'Mob Island' then
                                                                                            if _G.SelectIsland ~= 'The Cafe' then
                                                                                                if _G.SelectIsland ~= 'Frist Spot' then
                                                                                                    if _G.SelectIsland ~= 'Dark Area' then
                                                                                                        if _G.SelectIsland ~= 'Flamingo Mansion' then
                                                                                                            if _G.SelectIsland ~= 'Flamingo Room' then
                                                                                                                if _G.SelectIsland ~= 'Green Zone' then
                                                                                                                    if _G.SelectIsland ~= 'Factory' then
                                                                                                                        if _G.SelectIsland ~= 'Colossuim' then
                                                                                                                            if _G.SelectIsland ~= 'Zombie Island' then
                                                                                                                                if _G.SelectIsland ~= 'Two Snow Mountain' then
                                                                                                                                    if _G.SelectIsland ~= 'Punk Hazard' then
                                                                                                                                        if _G.SelectIsland ~= 'Cursed Ship' then
                                                                                                                                            if _G.SelectIsland ~= 'Ice Castle' then
                                                                                                                                                if _G.SelectIsland ~= 'Forgotten Island' then
                                                                                                                                                    if _G.SelectIsland ~= 'Ussop Island' then
                                                                                                                                                        if _G.SelectIsland ~= 'Mini Sky Island' then
                                                                                                                                                            if _G.SelectIsland ~= 'Great Tree' then
                                                                                                                                                                if _G.SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                                    if _G.SelectIsland ~= 'MiniSky' then
                                                                                                                                                                        if _G.SelectIsland ~= 'Port Town' then
                                                                                                                                                                            if _G.SelectIsland ~= 'Hydra Island' then
                                                                                                                                                                                if _G.SelectIsland ~= 'Floating Turtle' then
                                                                                                                                                                                    if _G.SelectIsland ~= 'Mansion' then
                                                                                                                                                                                        if _G.SelectIsland ~= 'Haunted Castle' then
                                                                                                                                                                                            if _G.SelectIsland ~= 'Ice Cream Island' then
                                                                                                                                                                                                if _G.SelectIsland ~= 'Peanut Island' then
                                                                                                                                                                                                    if _G.SelectIsland ~= 'Cake Island' then
                                                                                                                                                                                                        if _G.SelectIsland ~= 'Cocoa Island' then
                                                                                                                                                                                                            if _G.SelectIsland == 'Candy Island' then
                                                                                                                                                                                                                Tween(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                                                                                                                                                                                                            end
                                                                                                                                                                                                        else
                                                                                                                                                                                                            Tween(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                                                                                                                                                                                                        end
                                                                                                                                                                                                    else
                                                                                                                                                                                                        Tween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                                                                                                                                                                                                    end
                                                                                                                                                                                                else
                                                                                                                                                                                                    Tween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                                                                                                                                                                                                end
                                                                                                                                                                                            else
                                                                                                                                                                                                Tween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                                                                                                                                                                                            end
                                                                                                                                                                                        else
                                                                                                                                                                                            Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                                                                                                                                                                                        end
                                                                                                                                                                                    else
                                                                                                                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                    Tween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                Tween(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        Tween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    BTPZ(CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                Tween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            Tween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Tween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Tween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Tween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Tween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Tween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                Tween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Tween(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Tween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                                                                                                    end
                                                                                                                else
                                                                                                                    Tween(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                                                                                                                end
                                                                                                            else
                                                                                                                Tween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                                                                                                            end
                                                                                                        else
                                                                                                            Tween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                                                                                                        end
                                                                                                    else
                                                                                                        Tween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                                                                                                    end
                                                                                                else
                                                                                                    Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                                                                                                end
                                                                                            else
                                                                                                Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                                                                                            end
                                                                                        else
                                                                                            Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                                                                                        end
                                                                                    else
                                                                                        Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                                                                                    end
                                                                                else
                                                                                    Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                                                                                end
                                                                            else
                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                            end
                                                                        else
                                                                            Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                                                                        end
                                                                    else
                                                                        Tween(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                                                                    end
                                                                else
                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                                end
                                                            else
                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                            end
                                                        else
                                                            Tween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                                                        end
                                                    else
                                                        Tween(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                                                    end
                                                else
                                                    Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                                                end
                                            else
                                                Tween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                                            end
                                        else
                                            Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                                        end
                                    else
                                        Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                                    end
                                else
                                    Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                                end
                            else
                                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                            end
                        else
                            Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                        end
                    else
                        Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                    end
                end
                if not _G.TeleportIsland then
                end
            end
        end
    end)
    _Options.ToggleIsland:SetValue(false)

    function BTPZ(p474)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p474

        task.wait()

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p474
    end

    local _GetFruits = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

    Table_DevilFruitSniper = {}
    ShopDevilSell = {}

    local v476 = next
    local u477 = _GetFruits
    local v478 = nil

    while true do
        local v479

        v478, v479 = v476(_GetFruits, v478)

        if v478 == nil then
            break
        end

        table.insert(Table_DevilFruitSniper, v479.Name)

        if v479.OnSale then
            table.insert(ShopDevilSell, v479.Name)
        end
    end

    _G.SelectFruit = ''

    local _DropdownFruit = v3.Fruit:AddDropdown('DropdownFruit', {
        Title = 'Select Fruit Snipers',
        Values = Table_DevilFruitSniper,
        Multi = false,
        Default = 1,
    })

    _DropdownFruit:SetValue('...')
    _DropdownFruit:OnChanged(function(p481)
        _G.SelectFruit = p481
    end)
    v3.Fruit:AddButton({
        Title = 'Check Devil Fruit Seller',
        Description = '',
        Callback = function()
            ShopDevilSell = {}

            local v482 = next
            local v483 = u477
            local v484 = nil

            while true do
                local v485

                v484, v485 = v482(v483, v484)

                if v484 == nil then
                    break
                end
                if v485.OnSale then
                    table.insert(ShopDevilSell, v485.Name)
                end
            end

            local v486 = table.concat(ShopDevilSell, ',')
            local v487 = u2
            local _Dialog = v487.Dialog
            local v489 = {
                Title = 'Devil Fruit Sell',
                Content = 'Fruit : ' .. v486 .. ' ',
                Buttons = {
                    {
                        Title = 'Ok',
                        Callback = function() end,
                    },
                },
            }

            _Dialog(v487, v489)
        end,
    })
    v3.Fruit:AddToggle('ToggleFruit', {
        Title = 'Buy Fruit Sniper',
        Default = false,
    }):OnChanged(function(p490)
        _G.AutoBuyFruitSniper = p490
    end)
    _Options.ToggleFruit:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoBuyFruitSniper then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', '_G.SelectFruit', false)
                end
            end
        end)
    end)
    v3.Fruit:AddToggle('ToggleStore', {
        Title = 'Store Fruit',
        Default = false,
    }):OnChanged(function(p491)
        _G.AutoStoreFruit = p491
    end)
    _Options.ToggleStore:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.AutoStoreFruit then
                pcall(function()
                    if _G.AutoStoreFruit then
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bomb Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bomb Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Bomb-Bomb', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bomb Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spike Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spike Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spike-Spike', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spike Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Chop Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chop Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Chop-Chop', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chop Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spring Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spring Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spring-Spring', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spring Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rocket Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Kilo Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rocket-Rocket', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Kilo Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Smoke Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Smoke Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Smoke-Smoke', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Smoke Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spin Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spin Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spin-Spin', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spin Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flame Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Flame-Flame', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Falcon Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Falcon Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Bird-Bird: Falcon', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Falcon Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ice Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Ice-Ice', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sand Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Sand-Sand', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dark Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dark-Dark', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ghost Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Revive Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Ghost-Ghost', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Revive Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Diamond Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Diamond Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Diamond-Diamond', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Diamond Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Light Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Light-Light', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Love Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Love Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Love-Love', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Love Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rubber Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rubber Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rubber-Rubber', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rubber Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Barrier Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Barrier Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Barrier-Barrier', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Barrier Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Magma Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Magma-Magma', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Portal Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Door Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Door-Door', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Portal Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Quake Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Quake-Quake', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Human-Human: Buddha Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Human-Human: Buddha Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Human-Human: Buddha', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Human-Human: Buddha Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spider Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spider Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spider-Spider', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spider Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Phoenix Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Phoenix Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Bird-Bird: Phoenix', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Phoenix Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rumble Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rumble-Rumble', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Pain Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Paw Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Pain-Pain', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Paw Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Gravity Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Gravity-Gravity', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dough Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dough-Dough', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Shadow Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shadow Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Shadow-Shadow', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shadow Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Venom Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Venom-Venom', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Control Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Control-Control', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spirit Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Soul Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Soul-Soul', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spirit Fruit'))
                        end
                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dragon-Dragon', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit'))

                            if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Leopard Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Leopard Fruit') then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Leopard-Leopard', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Leopard Fruit'))
                            end
                        end
                    end
                end)
            end

            wait(0.3)
        end
    end)
    v3.Fruit:AddToggle('ToggleRandomFruit', {
        Title = 'Random Fruit',
        Default = false,
    }):OnChanged(function(p492)
        _G.Random_Auto = p492
    end)
    _Options.ToggleRandomFruit:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.Random_Auto then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
                end
            end
        end)
    end)
    v3.Fruit:AddToggle('ToggleCollect', {
        Title = 'Collect Devil Fruit',
        Default = false,
    }):OnChanged(function(p493)
        _G.Tweenfruit = p493
    end)
    _Options.ToggleCollect:SetValue(false)
    spawn(function()
        while wait(0.1) do
            if _G.Tweenfruit then
                local v494, v495, v496 = pairs(game.Workspace:GetChildren())

                while true do
                    local v497

                    v496, v497 = v494(v495, v496)

                    if v496 == nil then
                        break
                    end
                    if string.find(v497.Name, 'Fruit') then
                        TP2(v497.Handle.CFrame)
                    end
                end
            end
        end
    end)
    v3.Fruit:AddParagraph({
        Title = 'Esp',
        Content = '',
    })
    v3.Fruit:AddToggle('ToggleEspPlayer', {
        Title = 'Esp Player',
        Default = false,
    }):OnChanged(function(p498)
        ESPPlayer = p498

        UpdatePlayerChams()
    end)
    _Options.ToggleEspPlayer:SetValue(false)
    v3.Fruit:AddToggle('ToggleEspFruit', {
        Title = 'Esp Devil Fruit',
        Default = false,
    }):OnChanged(function(p499)
        DevilFruitESP = p499

        while DevilFruitESP do
            wait()
            UpdateDevilChams()
        end
    end)
    _Options.ToggleEspFruit:SetValue(false)
    v3.Fruit:AddToggle('ToggleEspIsland', {
        Title = 'Esp Island',
        Default = false,
    }):OnChanged(function(p500)
        IslandESP = p500

        while IslandESP do
            wait()
            UpdateIslandESP()
        end
    end)
    _Options.ToggleEspIsland:SetValue(false)
    v3.Fruit:AddToggle('ToggleEspFlower', {
        Title = 'Esp Flower',
        Default = false,
    }):OnChanged(function(p501)
        FlowerESP = p501

        UpdateFlowerChams()
    end)
    _Options.ToggleEspFlower:SetValue(false)
    spawn(function()
        while wait(2) do
            if FlowerESP then
                UpdateFlowerChams()
            end
            if DevilFruitESP then
                UpdateDevilChams()
            end
            if ChestESP then
                UpdateChestChams()
            end
            if ESPPlayer then
                UpdatePlayerChams()
            end
            if RealFruitESP then
                UpdateRealFruitChams()
            end
        end
    end)

    local _DropdownRaid = v3.Raid:AddDropdown('DropdownRaid', {
        Title = 'Select Raid List',
        Values = {
            'Flame',
            'Ice',
            'Quake',
            'Light',
            'Dark',
            'Spider',
            'Rumble',
            'Magma',
            'Human: Buddha',
            'Sand',
            'Bird: Phoenix',
            'Dough',
        },
        Multi = false,
        Default = 1,
    })

    _DropdownRaid:SetValue('...')
    _DropdownRaid:OnChanged(function(p503)
        SelectChip = p503
    end)
    v3.Raid:AddToggle('ToggleBuy', {
        Title = 'Buy Chip',
        Default = false,
    }):OnChanged(function(p504)
        _G.Auto_Buy_Chips_Dungeon = p504
    end)
    _Options.ToggleBuy:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Buy_Chips_Dungeon then
                pcall(function()
                    local v505 = {
                        'RaidsNpc',
                        'Select',
                        SelectChip,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v505))
                end)
            end
        end
    end)
    v3.Raid:AddToggle('ToggleStart', {
        Title = 'Start Raid',
        Default = false,
    }):OnChanged(function(p506)
        _G.Auto_StartRaid = p506
    end)
    _Options.ToggleStart:SetValue(false)
    spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Auto_StartRaid and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                    if Second_Sea then
                        fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif Third_Sea then
                        fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end)
        end
    end)
    v3.Raid:AddToggle('ToggleKillAura', {
        Title = 'Kill Aura [Beta]',
        Default = false,
    }):OnChanged(function(p507)
        KillAura = p507
    end)
    _Options.ToggleKillAura:SetValue(false)
    game.Workspace.Enemies:GetChildren()
    spawn(function()
        while wait() do
            if KillAura then
                local v508, v509, v510 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local u511

                    v510, u511 = v508(v509, v510)

                    if v510 == nil then
                        break
                    end

                    pcall(function()
                        while true do
                            wait(0.1)

                            if u511.Humanoid then
                                u511.Humanoid.Health = 0
                                u511.HumanoidRootPart.CanCollide = false

                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            end
                            if not (KillAura and u511.Parent) then
                                return
                            end
                        end
                    end)
                end
            end
        end
    end)
    spawn(function()
        while wait() do
            if KillAura then
                local v512, v513, v514 = pairs(game.Workspace.Enemies:GetDescendants())

                while true do
                    local v515

                    v514, v515 = v512(v513, v514)

                    if v514 == nil then
                        break
                    end
                    if v515:FindFirstChild('Humanoid') and (v515:FindFirstChild('HumanoidRootPart') and ((v515.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and v515.Humanoid.Health > 0)) then
                        v515.Humanoid.Health = 0
                    end
                end
            end
        end
    end)
    v3.Raid:AddToggle('ToggleNextIsland', {
        Title = 'Next Island',
        Default = false,
    }):OnChanged(function(p516)
        AutoNextIsland = p516
    end)
    _Options.ToggleNextIsland:SetValue(false)

    function IsIslandRaid(p517)
        if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island ' .. p517) then
            min = 4500

            local v518, v519, v520 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

            while true do
                local v521

                v520, v521 = v518(v519, v520)

                if v520 == nil then
                    break
                end
                if v521.Name == 'Island ' .. p517 and (v521.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min then
                    min = (v521.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end

            local v522, v523, v524 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

            while true do
                local v525

                v524, v525 = v522(v523, v524)

                if v524 == nil then
                    break
                end
                if v525.Name == 'Island ' .. p517 and (v525.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min then
                    return v525
                end
            end
        end
    end
    function getNextIsland()
        TableIslandsRaid = {
            5,
            4,
            3,
            2,
            1,
        }

        local v526, v527, v528 = pairs(TableIslandsRaid)

        while true do
            local v529

            v528, v529 = v526(v527, v528)

            if v528 == nil then
                break
            end
            if IsIslandRaid(v529) and (IsIslandRaid(v529).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
                return IsIslandRaid(v529)
            end
        end
    end

    spawn(function()
        while wait() do
            if AutoNextIsland and getNextIsland() then
                spawn(Tween(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
            end
        end
    end)
    v3.Raid:AddToggle('ToggleAwake', {
        Title = 'Auto Awake',
        Default = false,
    }):OnChanged(function(p530)
        AutoAwakenAbilities = p530
    end)
    _Options.ToggleAwake:SetValue(false)
    spawn(function()
        while task.wait() do
            if AutoAwakenAbilities then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
                end)
            end
        end
    end)
    v3.Raid:AddToggle('ToggleGetFruit', {
        Title = 'Get Fruit Low Bely',
        Default = false,
    }):OnChanged(function(p531)
        _G.Autofruit = p531
    end)
    spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Autofruit then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Rocket-Rocket',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Spin-Spin',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Chop-Chop',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Spring-Spring',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Bomb-Bomb',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Smoke-Smoke',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Spike-Spike',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Flame-Flame',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Falcon-Falcon',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Ice-Ice',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Sand-Sand',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Dark-Dark',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Ghost-Ghost',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Diamond-Diamond',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Light-Light',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Rubber-Rubber',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        'Barrier-Barrier',
                    }))
                end
            end)
        end
    end)

    if Second_Sea then
        v3.Raid:AddButton({
            Title = 'Raid Lab',
            Description = '',
            Callback = function()
                TP2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end,
        })
    elseif Third_Sea then
        v3.Raid:AddButton({
            Title = 'Raid Lab',
            Description = '',
            Callback = function()
                TP2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-8, -0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, -0.925743818))
            end,
        })
    end

    v3.Raid:AddParagraph({
        Title = 'Raid Law',
        Content = '',
    })
    v3.Raid:AddToggle('ToggleLaw', {
        Title = 'Auto Law',
        Default = false,
    }):OnChanged(function(p532)
        Auto_Law = p532
    end)
    _Options.ToggleLaw:SetValue(false)
    spawn(function()
        pcall(function()
            while wait() do
                if Auto_Law and not (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') or (game:GetService('Workspace').Enemies:FindFirstChild('Order') or game:GetService('ReplicatedStorage'):FindFirstChild('Order')))) then
                    wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '1')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '2')
                end
            end
        end)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if Auto_Law then
                    if not game:GetService('Workspace').Enemies:FindFirstChild('Order') and (not game:GetService('ReplicatedStorage'):FindFirstChild('Order') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip'))) then
                        fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                    if game:GetService('ReplicatedStorage'):FindFirstChild('Order') or game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                            local v533, v534, v535 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v536

                                v535, v536 = v533(v534, v535)

                                if v535 == nil then
                                    break
                                end
                                if v536.Name == 'Order' then
                                    repeat
                                        game:GetService('RunService').Heartbeat:wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v536.HumanoidRootPart.CFrame * Pos)

                                        v536.HumanoidRootPart.CanCollide = false
                                        v536.HumanoidRootPart.Size = Vector3.new(120, 120, 120)

                                        Click()
                                    until not v536.Parent or (v536.Humanoid.Health <= 0 or Auto_Law == false)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order') then
                            Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                        end
                    end
                end
            end
        end)
    end)
    v3.Race:AddButton({
        Title = 'Timple Of Time',
        Description = '',
        Callback = function()
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        end,
    })
    v3.Race:AddButton({
        Title = 'Lever Pull',
        Description = '',
        Callback = function()
            TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end,
    })
    v3.Race:AddButton({
        Title = 'Acient One',
        Description = '',
        Callback = function()
            TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end,
    })
    v3.Race:AddParagraph({
        Title = 'Auto Race',
        Content = '',
    })
    v3.Race:AddButton({
        Title = 'Race Door',
        Description = '',
        Callback = function()
            Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

            wait(0.1)

            Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

            wait(0.1)

            Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

            wait(0.1)

            Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

            wait(0.5)

            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                                if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                    TP2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                                end
                            else
                                TP2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                            end
                        else
                            TP2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                        end
                    else
                        TP2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    end
                else
                    TP2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                end
            else
                TP2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
            end
        end,
    })
    v3.Race:AddToggle('ToggleHumanandghoul', {
        Title = 'Auto [ Human / Ghoul ] Trial',
        Default = false,
    }):OnChanged(function(p537)
        KillAura = p537
    end)
    _Options.ToggleHumanandghoul:SetValue(false)
    v3.Race:AddToggle('ToggleAutotrial1', {
        Title = 'Auto Kill Players Trial',
        Default = false,
    }):OnChanged(function(p538)
        KillPlayer = p538
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if KillPlayer then
                    local v539, v540, v541 = pairs(game:GetService('Workspace').Characters:GetChildren())

                    while true do
                        local v542

                        v541, v542 = v539(v540, v541)

                        if v541 == nil then
                            break
                        end
                        if v542.Name ~= game.Players.LocalPlayer.Name and ((v542.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and v542.Humanoid.Health > 0) then
                            repeat
                                wait()
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                Tween(v542.HumanoidRootPart.CFrame * Pos)

                                v542.HumanoidRootPart.CanCollide = false
                                v542.HumanoidRootPart.Size = Vector3.new(120, 120, 120)

                                Click()
                            until not KillPlayer or (not v542.Parent or v542.Humanoid.Health <= 0)
                        end
                    end
                end
            end)
        end
    end)
    v3.Race:AddToggle('ToggleAutotrial', {
        Title = 'Auto Trial',
        Default = false,
    }):OnChanged(function(p543)
        _G.AutoQuestRace = p543
    end)
    _Options.ToggleAutotrial:SetValue(false)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoQuestRace then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                                        if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                            local v544, v545, v546 = pairs(game:GetService('Workspace'):GetDescendants())

                                            while true do
                                                local v547

                                                v546, v547 = v544(v545, v546)

                                                if v546 == nil then
                                                    break
                                                end
                                                if v547.Name == 'StartPoint' then
                                                    Tween(v547.CFrame * CFrame.new(0, 10, 0))
                                                end
                                            end
                                        end
                                    else
                                        local v548, v549, v550 = pairs(game.Workspace.Enemies:GetDescendants())

                                        while true do
                                            local u551

                                            v550, u551 = v548(v549, v550)

                                            if v550 == nil then
                                                break
                                            end
                                            if u551:FindFirstChild('Humanoid') and (u551:FindFirstChild('HumanoidRootPart') and u551.Humanoid.Health > 0) then
                                                pcall(function()
                                                    repeat
                                                        wait(0.1)

                                                        u551.Humanoid.Health = 0
                                                        u551.HumanoidRootPart.CanCollide = false

                                                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                                    until not _G.AutoQuestRace or (not u551.Parent or u551.Humanoid.Health <= 0)
                                                end)
                                            end
                                        end
                                    end
                                else
                                    Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                                end
                            else
                                local v552, v553, v554 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                                while true do
                                    local v555

                                    v554, v555 = v552(v553, v554)

                                    if v554 == nil then
                                        break
                                    end
                                    if v555.Name == 'HumanoidRootPart' then
                                        Tween(v555.CFrame * Pos)

                                        local v556, v557, v558 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                        while true do
                                            local v559

                                            v558, v559 = v556(v557, v558)

                                            if v558 == nil then
                                                break
                                            end
                                            if v559:IsA('Tool') and v559.ToolTip == 'Melee' then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v559)
                                            end
                                        end

                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

                                        local v560, v561, v562 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                        while true do
                                            local v563

                                            v562, v563 = v560(v561, v562)

                                            if v562 == nil then
                                                break
                                            end
                                            if v563:IsA('Tool') and v563.ToolTip == 'Blox Fruit' then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v563)
                                            end
                                        end

                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.5)

                                        local v564, v565, v566 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                        while true do
                                            local v567

                                            v566, v567 = v564(v565, v566)

                                            if v566 == nil then
                                                break
                                            end
                                            if v567:IsA('Tool') and v567.ToolTip == 'Sword' then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v567)
                                            end
                                        end

                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.5)

                                        local v568, v569, v570 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                        while true do
                                            local v571

                                            v570, v571 = v568(v569, v570)

                                            if v570 == nil then
                                                break
                                            end
                                            if v571:IsA('Tool') and v571.ToolTip == 'Gun' then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v571)
                                            end
                                        end

                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    end
                                end
                            end
                        else
                            local _FinishPart = game:GetService('Workspace').Map.SkyTrial.Model.FinishPart

                            if (_FinishPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                wait(2)
                                Tween(_FinishPart.CFrame)
                                wait(3)
                                print('Success Trial')
                            end
                        end
                    else
                        local v573, v574, v575 = pairs(game.Workspace.Enemies:GetDescendants())

                        while true do
                            local u576

                            v575, u576 = v573(v574, v575)

                            if v575 == nil then
                                break
                            end
                            if u576:FindFirstChild('Humanoid') and (u576:FindFirstChild('HumanoidRootPart') and u576.Humanoid.Health > 0) then
                                pcall(function()
                                    repeat
                                        wait(0.1)

                                        u576.Humanoid.Health = 0
                                        u576.HumanoidRootPart.CanCollide = false

                                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                    until not _G.AutoQuestRace or (not u576.Parent or u576.Humanoid.Health <= 0)
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
    v3.Race:AddParagraph({
        Title = 'Misc Race',
        Content = 'Auto Farm Acient Quest',
    })
    v3.Race:AddToggle('ToggleAutoAcientQuest', {
        Title = 'Auto Acient Quest',
        Default = false,
    }):OnChanged(function(p577)
        AutoFarmAcient = p577
    end)
    _Options.ToggleAutoAcientQuest:SetValue(false)

    local u578 = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

    spawn(function()
        while wait() do
            if AutoFarmAcient then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cocoa Warrior') or (game:GetService('Workspace').Enemies:FindFirstChild('Chocolate Bar Battler') or (game:GetService('Workspace').Enemies:FindFirstChild('Sweet Thief') or game:GetService('Workspace').Enemies:FindFirstChild('Candy Rebel'))) then
                        local v579, v580, v581 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v582

                            v581, v582 = v579(v580, v581)

                            if v581 == nil then
                                break
                            end
                            if (v582.Name == 'Cocoa Warrior' or (v582.Name == 'Chocolate Bar Battler' or (v582.Name == 'Sweet Thief' or v582.Name == 'Candy Rebel'))) and (v582:FindFirstChild('Humanoid') and (v582:FindFirstChild('HumanoidRootPart') and v582.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    BringAcient = true
                                    v582.HumanoidRootPart.CanCollide = false
                                    v582.Humanoid.WalkSpeed = 0
                                    v582.Head.CanCollide = false
                                    FarmPos = v582.HumanoidRootPart.CFrame

                                    Tween(v582.HumanoidRootPart.CFrame * Pos)
                                    Click()
                                until not AutoFarmAcient or (not v582.Parent or v582.Humanoid.Health <= 0)

                                BringAcient = false
                            end
                        end
                    else
                        if BypassTP then
                            BTP(u578)
                        else
                            Tween(u578)
                        end

                        local v583, v584, v585 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                        while true do
                            local v586

                            v585, v586 = v583(v584, v585)

                            if v585 == nil then
                                break
                            end
                            if v586.Name ~= 'Cocoa Warrior' then
                                if v586.Name ~= 'Chocolate Bar Battler' then
                                    if v586.Name ~= 'Sweet Thief' then
                                        if v586.Name == 'Candy Rebel' then
                                            Tween(v586.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        end
                                    else
                                        Tween(v586.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    end
                                else
                                    Tween(v586.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                end
                            else
                                Tween(v586.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if AutoFarmAcient and game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmAcient then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Y', false, game)
                    wait(0.1)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Y', false, game)
                end
            end)
        end
    end)
    v3.Shop:AddButton({
        Title = 'Buy Soul Guitar',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('soulGuitarBuy', true)
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('soulGuitarBuy')
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('getInventory')
        end,
    })
    v3.Shop:AddParagraph({
        Title = 'Acient Shop',
        Content = '',
    })
    v3.Shop:AddButton({
        Title = 'Buy Acient Quest',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
        end,
    })
    v3.Shop:AddParagraph({
        Title = 'Bone Shop',
        Content = '',
    })
    v3.Shop:AddButton({
        Title = 'Random Bone',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
        end,
    })
    v3.Shop:AddToggle('AutoRandomBones', {
        Title = 'Auto Random Bone',
        Default = false,
    }):OnChanged(function()
        AutoRandomBones = _Options.AutoRandomBones.Value
    end)
    spawn(function()
        while wait() do
            if AutoRandomBones then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
            end
        end
    end)
    v3.Shop:AddParagraph({
        Title = 'Race Shop',
        Content = '',
    })
    v3.Shop:AddButton({
        Title = 'Buy Race Ghoul',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'BuyCheck', 4)
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'Change', 4)
        end,
    })
    v3.Shop:AddButton({
        Title = 'Buy Race Cyborg',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CyborgTrainer', 'Buy')
        end,
    })
    v3.Shop:AddButton({
        Title = 'Random Race',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer(unpack({
                'BlackbeardReward',
                'Reroll',
                '2',
            }))
        end,
    })
    v3.Shop:AddButton({
        Title = 'Reset Stats',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', 2)
        end,
    })
    v3.Misc:AddButton({
        Title = 'Join Team',
        Description = '',
        Callback = function()
            u2:Dialog({
                Title = 'Join Team',
                Content = '',
                Buttons = {
                    {
                        Title = 'Pirates',
                        Callback = function()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress')
                        end,
                    },
                    {
                        Title = 'Marines',
                        Callback = function()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress')
                        end,
                    },
                },
            })
        end,
    })

    local function u593()
        for v587 = 1, 100 do
            if ChooseRegion == nil or ChooseRegion == '' then
                ChooseRegion = 'Singapore'
            else
                game:GetService('Players').LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
            end

            local v588 = game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer(v587)
            local v589, v590, v591 = pairs(v588)

            while true do
                local v592

                v591, v592 = v589(v590, v591)

                if v591 == nil then
                    break
                end
                if v591 ~= game.JobId and v592.Count < bO then
                    if not bM[v591] or tick() - bM[v591].Time > 600 then
                        bM[v591] = {
                            Time = tick(),
                        }

                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.InCombat.Visible then
                            Notify('Script Status', 'Founded Server But InCombat', 15, '[W-Script]')

                            repeat
                                wait()
                                AntiLowHealth(math.random(8500, 10000))
                            until not (game:GetService('Players').LocalPlayer and game:GetService('Players').LocalPlayer.PlayerGui.Main.InCombat.Visible)

                            Notify('Script Status', 'Joining Server ID: ' .. v591 .. '\nRegion: ' .. v592.Region, 15, '[W-Script]')
                        else
                            Notify('Script Status', 'Joining Server ID: ' .. v591 .. '\nRegion: ' .. v592.Region, 15, '[W-Script]')
                        end

                        game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer('teleport', v591)

                        return true
                    end
                    if tick() - bM[v591].Time > 3600 then
                        bM[v591] = nil
                    end
                end
            end
        end

        return false
    end

    function Rejoin()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end

    v3.Misc:AddButton({
        Title = 'Server',
        Description = '',
        Callback = function()
            u2:Dialog({
                Title = 'Server',
                Content = '',
                Buttons = {
                    {
                        Title = 'Rejoin',
                        Callback = function()
                            Rejoin()
                        end,
                    },
                    {
                        Title = 'Hop',
                        Callback = function()
                            u593()
                        end,
                    },
                },
            })
        end,
    })
    v3.Misc:AddDropdown('SelectUI', {
        Title = 'Select UI',
        Values = {
            'Devil Fruit Shop',
            'Titles',
            'Haki Color',
            'Awakening Toggler',
        },
        Multi = false,
        Default = 1,
    }):OnChanged(function(p594)
        _G.SelectUISSS = p594
    end)
    v3.Misc:AddButton({
        Title = 'Open UI',
        Description = '',
        Callback = function()
            if _G.SelectUISSS ~= 'Devil Fruit Shop' then
                if _G.SelectUISSS ~= 'Titles' then
                    if _G.SelectUISSS ~= 'Haki Color' then
                        if _G.SelectUISSS == 'Awakening Toggler' then
                            game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
                        end
                    else
                        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getTitles')

                    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')

                game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
            end
        end,
    })

    local _WhiteScreens = v3.Misc:AddToggle('WhiteScreens', {
        Title = 'White Screen',
        Default = false,
    })
    local v596 = _WhiteScreens

    _WhiteScreens.OnChanged(v596, function()
        _WhiteScreens = _Options.WhiteScreens.Value
    end)
    spawn(function()
        while wait() do
            if _WhiteScreens then
                game:GetService('RunService'):Set3dRenderingEnabled(false)
            else
                game:GetService('RunService'):Set3dRenderingEnabled(true)
            end
        end
    end)
    v3.Misc:AddToggle('Remove_Fog', {
        Title = 'Remove Fog',
        Default = false,
    }):OnChanged(function()
        _G.Remove_Fog = _Options.Remove_Fog.Value

        if _G.Remove_Fog then
            while _G.Remove_Fog do
                wait()

                game.Lighting.FogEnd = 9000000000

                if not _G.Remove_Fog then
                    game.Lighting.FogEnd = 2500
                end
            end
        end
    end)

    function FpsBoost()
        local v597 = game
        local _Workspace2 = v597.Workspace
        local _Lighting2 = v597.Lighting
        local _Terrain2 = _Workspace2.Terrain

        _Terrain2.WaterWaveSize = 0
        _Terrain2.WaterWaveSpeed = 0
        _Terrain2.WaterReflectance = 0
        _Terrain2.WaterTransparency = 0
        _Lighting2.GlobalShadows = false
        _Lighting2.FogEnd = 9000000000
        _Lighting2.Brightness = 0
        settings().Rendering.QualityLevel = 'Level01'

        local v601, v602, v603 = pairs(v597:GetDescendants())
        local v604 = true

        while true do
            local v605

            v603, v605 = v601(v602, v603)

            if v603 == nil then
                break
            end
            if v605:IsA('Part') or (v605:IsA('Union') or (v605:IsA('CornerWedgePart') or v605:IsA('TrussPart'))) then
                v605.Material = 'Plastic'
                v605.Reflectance = 0
            elseif v605:IsA('Decal') or v605:IsA('Texture') and v604 then
                v605.Transparency = 1
            elseif v605:IsA('ParticleEmitter') or v605:IsA('Trail') then
                v605.Lifetime = NumberRange.new(0)
            elseif v605:IsA('Explosion') then
                v605.BlastPressure = 1
                v605.BlastRadius = 1
            elseif v605:IsA('Fire') or (v605:IsA('SpotLight') or (v605:IsA('Smoke') or v605:IsA('Sparkles'))) then
                v605.Enabled = false
            elseif v605:IsA('MeshPart') then
                v605.Material = 'Plastic'
                v605.Reflectance = 0
                v605.TextureID = 1.0385902758728955e16
            end
        end

        local v606, v607, v608 = pairs(_Lighting2:GetChildren())

        while true do
            local v609

            v608, v609 = v606(v607, v608)

            if v608 == nil then
                break
            end
            if v609:IsA('BlurEffect') or (v609:IsA('SunRaysEffect') or (v609:IsA('ColorCorrectionEffect') or (v609:IsA('BloomEffect') or v609:IsA('DepthOfFieldEffect')))) then
                v609.Enabled = false
            end
        end
    end
    function WaterRemvoe()
        local v610, v611, v612 = pairs(workspace:GetDescendants())

        while true do
            local v613

            v612, v613 = v610(v611, v612)

            if v612 == nil then
                break
            end
            if string.find(v613.Name, 'Water') then
                v613:Destroy()
            end
        end
    end
    function ObjectRemvoe()
        local v614, v615, v616 = pairs(workspace:GetDescendants())

        while true do
            local v617

            v616, v617 = v614(v615, v616)

            if v616 == nil then
                break
            end
            if string.find(v617.Name, 'Tree') or (string.find(v617.Name, 'House') or (string.find(v617.Name, 'BoatFlower_FlowerBoat') or (string.find(v617.Name, 'LavaParts') or (string.find(v617.Name, 'bloxfruits_bossarea_Cylinder') or string.find(v617.Name, 'bloxfruits_skull2_Cone'))))) then
                v617:Destroy()
            end
        end
    end
    function InvisibleObject()
        local v618, v619, v620 = pairs(game:GetService('Workspace'):GetDescendants())

        while true do
            local v621

            v620, v621 = v618(v619, v620)

            if v620 == nil then
                break
            end
            if (v621:IsA('Part') or (v621:IsA('MeshPart') or v621:IsA('BasePart'))) and v621.Transparency then
                v621.Transparency = 1
            end
        end
    end

    v3.Misc:AddButton({
        Title = 'Fps Boost',
        Description = '',
        Callback = function()
            FpsBoost()
        end,
    })
    v3.Misc:AddButton({
        Title = 'Fps Boost 1',
        Description = '',
        Callback = function()
            WaterRemvoe()
            ObjectRemvoe()
            InvisibleObject()
        end,
    })
    v3.Misc:AddInput('JobIDInput', {
        Title = 'Put Job Id',
        Default = 'None',
        Placeholder = 'Placeholder',
        Numeric = false,
        Finished = false,
        Callback = function(p622)
            _G.JobId = p622
        end,
    })
    v3.Misc:AddButton({
        Title = 'Join Job ID',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer('teleport', tostring(_G.JobId))
        end,
    })

    local _LocalPlayer = game.Players.LocalPlayer
    local u624 = require(_LocalPlayer.PlayerScripts.CombatFramework.Particle)
    local u625 = require(game:GetService('ReplicatedStorage').CombatFramework.RigLib)

    spawn(function()
        while task.wait() do
            pcall(function()
                if not shared.orl then
                    shared.orl = u625.wrapAttackAnimationAsync
                end
                if not shared.cpc then
                    shared.cpc = u624.play
                end

                function u625.wrapAttackAnimationAsync(p626, p627, p628, p629, p630)
                    local v631 = u625.getBladeHits(p627, p628, p629)

                    if v631 then
                        if FastAttack then
                            function u624.play() end

                            p626:Play(0.01, 0.01, 0.01)
                            p630(v631)

                            u624.play = shared.cpc

                            wait(p626.length * 0.5)
                            p626:Stop()
                        else
                            p626:Play()
                        end
                    end
                end
            end)
        end
    end)

    function CheckKick(p632)
        if p632.Name == 'ErrorPrompt' then
            if p632.Visible and p632.TitleFrame.ErrorTitle.Text ~= 'Teleport Failed' then
                game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
            end

            p632:GetPropertyChangedSignal('Visible'):Connect(function()
                if p632.Visible and p632.TitleFrame.ErrorTitle.Text ~= 'Teleport Failed' then
                    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                end
            end)
        end
    end

    game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(CheckKick)

    local _VirtualUser = game:GetService('VirtualUser')

    game:GetService('Players').LocalPlayer.Idled:connect(function()
        _VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        _VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

    local _ScreenGui = Instance.new('ScreenGui')
    local _ImageButton = Instance.new('ImageButton')
    local _UICorner = Instance.new('UICorner')

    _ScreenGui.Name = ''
    _ScreenGui.Parent = game.CoreGui or game.Players.LocalPlayer.PlayerGui
    _ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    _ImageButton.Parent = _ScreenGui
    _ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    _ImageButton.BackgroundTransparency = 1
    _ImageButton.BorderSizePixel = 0
    _ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    _ImageButton.Size = UDim2.new(0, 50, 0, 50)
    _ImageButton.Draggable = true
    _ImageButton.Image = 'https://www.roblox.com/asset/?id=15468926036'
    _UICorner.Parent = _ImageButton

    _ImageButton.MouseButton1Down:connect(function()
        game:GetService('VirtualInputManager'):SendKeyEvent(true, 305, false, game)
        game:GetService('VirtualInputManager'):SendKeyEvent(false, 305, false, game)
    end)
    loadstring(game:HttpGet('https://unfoldedunrulylanguage.phamducan.repl.co/'))()

    return
end
