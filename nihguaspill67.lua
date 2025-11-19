return function(env)
    local Window = env.Window
    local triplesixxx = env.triplesixxx

   
    env.config = {
        autoFishV1Enabled = false,
        autoFishV2Enabled = false,
        autoInstantFishEnabled = false,
        autoLockPositionEnabled = false,
        autoDeepseaQuestEnabled = false,
        autoElementQuestEnabled = false,
        artifactCollected = 0,
        artifactCurrentSpot = 1,
        AutoEquipRod = false,
        AutoEquipRodCooldown = 1,
        artifactFarmEnabled = false,
        UltraFPS = false,
        WalkOnWater = false,
        ReduceLag = false,
        Theme = "Crimson",
        TransparentMode = true,
        RemoveEffect = false,
        DisableNotiffish = false,
        IdleAnimation = false,
        AutoCutscene = false,
        SpeedHack = 18,
        InfinityJump = false,
        Noclip = false,
        FlyLittle = false,
        PlayerESP = false,
        FishingRadar = false,
        DivingGear = false,
        HideNameAndAnonChat = false,
        RemoveRod = false,
        WebhookEnabled = false,
        WebhookURL = "",
        WebhookCategories = {"SECRET"},
        TagEveryone = false,
        AntiKickEnabled = true,
        AutoClaimHalloween = false,
        AutoRejoinEnabled = true,
        spamDelay = 0.001,
        autoSellEnabled = false,
        sellThreshold = 50,
        fishCount = 0,
        AutoReExecute = false,
        AutoTotemEnabled = false,
        SelectedTotem = "",
        TotemCheckInterval = 5,
        LegitFishing = false,
        ZoomMin = 0.5,
        ZoomMax = 9999,
        UnlimitedZoom = false,
        BlackoutEnabled = false,
        AutoFishInstant = false,
        AutoFishHighQuality = false,
        FinishDelay = 1,
        AntiStuckTimeout = 10,
        ObtainedLimit = 30,
    }

    local config = env.config
    local configName = "Walvy Community"

    
    function env.saveConfig()
        if Window and Window.ConfigManager then
            local cfg = Window.ConfigManager:CreateConfig(configName)
            for key, value in pairs(config) do
                cfg:Set(key, value)
            end
            cfg:Save()
            if triplesixxx then
                triplesixxx("Configuration saved!")
            end
        else
            _G.WalvyCommunityConfig = config
        end
    end

    
    function env.loadConfig()
        if Window and Window.ConfigManager then
            local cfg = Window.ConfigManager:CreateConfig(configName):Load()
            if cfg then
                for key, value in pairs(cfg) do
                    if config[key] ~= nil then
                        config[key] = value
                    end
                end
                if triplesixxx then
                    triplesixxx("Configuration loaded!")
                end
            end
        elseif _G.WalvyCommunityConfig then
            for key, value in pairs(_G.WalvyCommunityConfig) do
                if config[key] ~= nil then
                    config[key] = value
                end
            end
        end
    end

    env.loadConfig()


    env.autoFishV1Enabled = config.autoFishV1Enabled
    env.autoFishV2Enabled = config.autoFishV2Enabled
    env.autoInstantFishEnabled = config.autoInstantFishEnabled
    env.autoElementQuestEnabled = config.autoElementQuestEnabled
    env.autoLockPositionEnabled = config.autoLockPositionEnabled
    env.autoSellEnabled = config.autoSellEnabled
    env.autoDeepseaQuestEnabled = config.autoDeepseaQuestEnabled
    env.LegitFishingEnabled = config.LegitFishing

    env.UltraFPSEnabled = config.UltraFPS
    env.ReduceLagEnabled = config.ReduceLag

    env.clickThread = nil
    env.waitingFishCaught = false
    env.FishCaughtHooked = false
    env.InitialCFrame = nil
    env.PositionLockConnection = nil
    env.CharacterAddedConnection = nil
    env.fishCount = 0
    env.autoSellToggle = nil
    env.animTracks = {}
    env.idleAnim = nil
    env.deepSeaAutoFish5XRunning = false
    env.elementAutoFish5XRunning = false

    return env
end
