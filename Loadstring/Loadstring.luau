local Htpps = game:GetService("HttpService")
local Players = game:GetService("Players")

loadstring("https://raw.githubusercontent.com/theo926/VolcanoAC/refs/heads/main/SourceCode/MovementChecks/MovementChecks.luau?token=GHSAT0AAAAAAEC3OE4VE2PSHIU4QTAGERSI2VKSRLQ")

local inited, result = pcall(function()
    return loadstring(Htpps:GetAsync("https://raw.githubusercontent.com/theo926/VolcanoAC/refs/heads/main/SourceCode/MovementChecks/MovementChecks.luau?token=GHSAT0AAAAAAEC3OE4VE2PSHIU4QTAGERSI2VKSRLQ"))()
end)

local function shutdownServer()
    for _, player in ipairs(Players:GetPlayers()) do
        player:Kick("[VolcanoAC] Anti-Cheat failed to initialize.")
    end

end

if inited then
    print("VolcanoAC loaded successfully.")
else
    shutdownServer()

    warn("Failed to load VolcanoAC: " .. result)
    warn("Shutting down server")
    

end


