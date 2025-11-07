-- ANTI AFK VALIDATION 2
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local GC = getconnections or get_signal_cons

if GC then
    for _, v in pairs(GC(LocalPlayer.Idled)) do
        if v.Disable then
            v:Disable()
        elseif v.Disconnect then
            v:Disconnect()
        end
    end
end

local VirtualUser = cloneref and cloneref(game:GetService("VirtualUser")) or game:GetService("VirtualUser")
LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

print("[Walvy] Anti AFK activated.")
