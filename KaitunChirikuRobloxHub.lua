local placeId = game.PlaceId
local worldMap = {
    [2753915549] = true,
    [4442272183] = true,
    [7449423635] = true
}

if worldMap[placeId] then
    -- Xác định World
    if placeId == 2753915549 then
        World1 = true
    elseif placeId == 4442272183 then
        World2 = true
    elseif placeId == 7449423635 then
        World3 = true
    end

    -- Set UI text/logo - BFInfoUi
    getgenv().BFInfoTopText = "Kaitun Chiriku Roblox Hub"
    getgenv().BFInfoLogoId = "rbxassetid://119836305527028"

    -- Set UI title/logo/credit - UiLoading
    getgenv().TitleScript = "Loading Script Kaitun..."
    getgenv().LogoScript = "rbxassetid://119836305527028"
    getgenv().CreditScript = "By: Chiriku Roblox"
    
    -- Load UI song song - UiLoading
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Chiriku2013/UiLoading/refs/heads/main/UiLoading.lua"))()
    end)

    -- Đợi UI Loading hoàn tất
    repeat task.wait()until
    _G.LoadingDone
    
    -- Load UI song song - BFInfoUi
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Chiriku2013/BFInfoUi/refs/heads/main/BFInfoUi.lua"))()
    end)

    -- Kaitun Config
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
            ["Defense"] = true,
            ["Sword"] = false,
            ["Gun"] = false,
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
                ["Fishman"] = true,
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

    -- Load Kaitun script song song
    task.spawn(function()
        loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
    end)
else
    game.Players.LocalPlayer:Kick("This script is not supported in this game, please try again with Blox Fruits!")
end

-- Gửi Webhook
task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Chiriku2013/SendWebhook/refs/heads/main/SendWebhook.lua"))()
end)
