if table.find({2753915549, 4442272183, 7449423635}, game.PlaceId) then
    -- Set chữ và logo UI trước khi load UI
    getgenv().BFInfoTopText = "Kaitun Auto Farm | By Chiriku"
    getgenv().BFInfoLogoId = "rbxassetid://16451257326"

    -- Load UI
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Chiriku2013/BFInfoUi/refs/heads/main/BFInfoUi.lua"))()

    -- Set Config Kaitun
    getgenv().ConfigsKaitun = {
        ["Safe Mode"] = false,
        ["Melee"] = {
            ["Death Step"] = true,
            ["Electric Claw"] = true,
            ["Dragon Talon"] = true,
            ["Sharkman Karate"] = true,
            ["Superhuman"] = true,
            ["God Human"] = true,
        },
        ["Sword"] = {
            ["Saber"] = true,
            ["Pole"] = true,
            ["Midnight Blade"] = false,
            ["Shisui"] = false,
            ["Saddi"] = false,
            ["Wando"] = false,
            ["Rengoku"] = true,
            ["True Triple Katana"] = false,
            ["Yama"] = true,
            ["Tushita"] = true,
            ["Canvander"] = true,
            ["Buddy Sword"] = true,
            ["Twin Hooks"] = true,
            ["Hallow Scythe"] = true,
            ["Cursed Dual Katana"] = true,
        },
        ["Gun"] = {
            ["Kabucha"] = false,
            ["Venom Bow"] = true,
            ["Skull Guitar"] = true,
        },
        ["Mastery"] = {
            ["Melee"] = true,
            ["Sword"] = true,
            ["Devil Fruits"] = false,
            ["Configs"] = {
                ["Selected All Sword"] = true,
                ["Select Sword"] = {"Cursed Dual Katana"},
            }
        },
        ["Race"] = {
            ["v2"] = true,
            ["v3"] = true,
            ["Locked"] = {
                ["Mink"] = true,
                ["Human"] = true,
                ["Skypiea"] = true,
                ["Fishman"] = false,
            },
        },
        ["Fruit"] = {
            ["Main Fruit"] = {"Dragon-Dragon"},
            ["Sec Fruit"] = {"Dragon-Dragon"},
            ["Safe Fruit"] = {"Dough-Dough", "Dragon-Dragon"},
        },
        ["Quest"] = {
            ["Rainbow Haki"] = true,
            ["Pull Lever"] = true,
            ["Musketeer Hat"] = true,
            ["Dough Mirror"] = true,
            ["Shark Anchor"] = {
                ["Enable"] = false,
                ["Money"] = 25_000_000,
            },
        },
        ["Currency"] = {
            ["Lock Fragment"] = 25_000,
        },
        ["Performance"] = {
            ["White Screen"] = false,
            ["Booster FPS"] = false,
            ["Lock FPS"] = 240,
            ["AFK Timeout"] = 150,
        },
    }

    -- Đợi UI load xong rồi mới chạy Kaitun
    repeat task.wait() until _G.BFInfoUI_Loaded

    -- Load Kaitun
    loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
else
    warn("Script chỉ hoạt động ở Sea 1, 2, 3!")
end
