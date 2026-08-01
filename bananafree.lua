local Library = loadstring(game:HttpGet("https://pastefy.app/kyYdSx0A/raw"))()

local W = Library:CreateWindow({
    Title = "Banana Cat Hub",
    Subtitle = "Made By Phuc Ngo",
    Image = "rbxassetid://5009915795"
})

local Shop = W:AddTab("Shop")
local Svr = W:AddTab("Server")
local Main = W:AddTab("Main")
local Teleport = W:AddTab("Teleport")
local Set = W:AddTab("Config")

-- Shop
local SG = Shop:AddLeftGroupbox("Fighting Styles")
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
            if d[3] then
                pcall(function()
                    ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(d[3]))
                end)
            end
            if d[4] then
                pcall(function()
                    ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(d[4]))
                end)
            end
        end
    })
end

local AutoHakiGroup = Shop:AddLeftGroupbox("Auto Buy Haki")
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
local IG = Svr:AddLeftGroupbox("Player Info")
IG:AddLabel("Player: " .. Player.Name)
local gn = "Unknown"
pcall(function() gn = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name or "Unknown" end)
IG:AddLabel("Game: " .. gn)

local SG2 = Svr:AddLeftGroupbox("Server Tools")
SG2:AddButton({Name = "Copy Game ID", Callback = function() if setclipboard then setclipboard(tostring(game.PlaceId)) end end})
SG2:AddButton({Name = "Rejoin", Callback = function() SaveConfig(); game:GetService("TeleportService"):Teleport(game.PlaceId, Player) end})

-- Main
local FG = Main:AddLeftGroupbox("Main Farms")
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
        if v then
            getgenv().BringMob = true
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
            if h then
                h.Anchored = false
                h.Velocity = Vector3.zero
                h.AssemblyLinearVelocity = Vector3.zero
            end
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
        if p == "Sky" then
            cf = Vector3.new(-7894, 5547, -380)
        elseif p == "UnderWater" then
            cf = Vector3.new(61163, 11, 1819)
        elseif p == "SwanRoom" then
            cf = Vector3.new(2285, 15, 905)
        elseif p == "Cursed Ship" then
            cf = Vector3.new(923, 126, 32852)
        elseif p == "Castle On The Sea" then
            cf = Vector3.new(-5097.93164, 316.447021, -3142.66602)
        elseif p == "Mansion Cafe" then
            cf = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
        elseif p == "Hydra Teleport" then
            cf = Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625)
        elseif p == "Canvendish Room" then
            cf = Vector3.new(5314.5463867188, 22.562219619751, -127.06755065918)
        elseif p == "Temple of Time" then
            cf = Vector3.new(28310.0234, 14895.1123, 109.456741)
        end
        if cf then
            pcall(function() ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", cf) end)
            topos(CFrame.new(cf))
        end
    end
})

-- Config
local SG3 = Set:AddLeftGroupbox("UI Settings")
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
        if h then
            h.Anchored = false
            h.Velocity = Vector3.zero
        end
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
                if v then
                    water.Size = Vector3.new(1000, 112, 1000)
                else
                    water.Size = Vector3.new(1000, 80, 1000)
                end
            end
        end)
        SaveConfig()
    end
})
SG3:AddButton({Name = "Save Config", Callback = function() SaveConfig() end})
SG3:AddButton({Name = "Destroy GUI", Callback = function() if Library.DestroyUI then Library:DestroyUI() end end})

pcall(function()
    Library:Notify({
        Title = "Loaded!",
        Description = "Press V to toggle GUI",
        Duration = 5
    })
end)
