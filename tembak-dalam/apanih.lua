return function(env)
    local config = env.config
    local saveConfig = env.saveConfig
    local triplesixxx = env.triplesixxx

    config = {
        autoFishV1Enabled = false,
        autoFishV2Enabled = false,
        autoInstantFishEnabled = false,
        autoLockPositionEnabled = false,
        autoSellEnabled = false,
        sellThreshold = 50,
        fishCount = 0,
        autoDeepseaQuestEnabled = false,
        autoElementQuestEnabled = false,
        artifactCollected = 0,
        artifactCurrentSpot = 1,
        artifactFarmEnabled = false,
        UltraFPS = false,
        ReduceLag = false,
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
        AutoEquipRod = false,
        AutoEquipRodCooldown = 1,
        spamDelay = 0.001,
        AutoReExecute = false,
        LegitFishing = false,
        ZoomMin = 0.5,
        ZoomMax = 9999,
        WalkOnWater = false,
        UnlimitedZoom = false,
        BlackoutEnabled = false,
        AutoFishInstant = false,
        AutoFishHighQuality = false,
        FinishDelay = 1,
        AntiStuckTimeout = 10,
        ObtainedLimit = 30,
    }

    saveConfig()

    triplesixxx("All settings restored to default", 5, Color3.fromRGB(0,255,0), "Reset Config", "Success")
end
