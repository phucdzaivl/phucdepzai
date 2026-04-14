-- Load Rayfield

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Window

local Window = Rayfield:CreateWindow({

    Name = "Haidepzai hub",

    LoadingTitle = "Loading...",

    LoadingSubtitle = "by Hai",

    ConfigurationSaving = {

        Enabled = true,

        FolderName = "Haidepzai hub",

        FileName = "Config"

    }

})

-- Tabs

local Tab1 = Window:CreateTab("Tổng hợp", 4483362458)

local Tab2 = Window:CreateTab("VIP", 4483362458)

------------------ TỔNG HỢP ------------------

Tab1:CreateButton({

    Name = "Haidepzai hub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Dev-HaiDepZaiHub/refs/heads/main/mainv1"))()

    end

})

Tab1:CreateButton({

    Name = "longhihi",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Devs-LongHiHiV2/refs/heads/main/MainV2.txt"))()

    end

})

Tab1:CreateButton({

    Name = "longhihi v4.1",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Devs-LongHiHiV4.1.0/refs/heads/main/MainV4.1.0"))()

    end

})

Tab1:CreateButton({

    Name = "longhihi Auto chest",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Auto-Chest/refs/heads/main/MainV1.Luau"))()

    end

})

Tab1:CreateButton({

    Name = "Tổng hợp script by.longhihi",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/TongHopMain/refs/heads/main/main.lua"))()

    end

})

Tab1:CreateButton({

    Name = "6_7 hub tổng hợp",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/67HubDev/all/refs/heads/main/67hub.vn.lua"))()

    end

})

Tab1:CreateButton({

    Name = "RUBU V6",

    Callback = function()

        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/RUBU/refs/heads/main/RUBUV6.lua"))()

    end

})

Tab1:CreateButton({

    Name = "quantum hub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()

    end

})

Tab1:CreateButton({

    Name = "Gravity hub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()

    end

})

Tab1:CreateButton({

    Name = "Maru premium fake by.longhihi",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/MaruHubV1/refs/heads/main/MainV1.Lua"))()

    end

})

Tab1:CreateButton({

    Name = "Redz hub 2026",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))()

    end

})

Tab1:CreateButton({

    Name = "Orange hub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/HieuDepTrai-Z/Dev_Orange/refs/heads/main/OrangeHub.lua"))()

    end

})

Tab1:CreateButton({

    Name = "kaitun 2026",

    Callback = function()

        getgenv().Config = {

            Team = "Pirates",

            Configuration = {

                HopWhenIdle = true,

                AutoHop = true,

                AutoHopDelay = 60 * 60,

                FpsBoost = false,

                BlackScreen = true

            },

            Items = {

                AutoFullyMelees = true,

                Saber = true,

                CursedDualKatana = false,

                SoulGuitar = false,

                RaceV2 = true

            },

            Settings = {

                StayInSea2UntilHaveDarkFragments = false

            }

        }

        loadstring(game:HttpGet("https://raw.githubusercontent.com/hhl29042008-ops/script/refs/heads/main/cac"))()

    end

})

Tab1:CreateButton({

    Name = "NaNaTVHub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNacuti/nanabeo/refs/heads/main/NaNaTVHub.lua"))()

    end

})

Tab1:CreateButton({

    Name = "hdanh banana hub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/hdanhvip/hdanhhub/refs/heads/main/BananaHub.lua.txt"))()

    end

})

Tab1:CreateButton({

    Name = "Xeter V4",

    Callback = function()

        getgenv().Version = "V4"

        getgenv().Team = "Marines"

        loadstring(game:HttpGet("https://raw.githubusercontent.com/TIDinhKhoi/Xeter/refs/heads/main/Main.lua"))()

    end

})

-- ✅ ANDepZai HUB (MỚI THÊM)

Tab1:CreateButton({

    Name = "Andepzai hub",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()

    end

})

------------------ VIP ------------------

Tab2:CreateLabel("✨ Khu VIP ✨")

Tab2:CreateButton({

    Name = "MARU PREMIUM",

    Callback = function()

        getgenv().Key = "MARU-120K/vv-muamadung-kofree"

        getgenv().id = "1326057199134314590"

        loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()

    end

})
