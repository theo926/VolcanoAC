--Loadstring is recommended for automatic updates. 
-- ServerScriptService


local Htpps = game:GetService("HttpService")
local Players = game:GetService("Players")



local inited, result = pcall(function()
    return loadstring(Htpps:GetAsync("https://raw.githubusercontent.com/theo926/VolcanoAC/refs/heads/main/SourceCode/MovementChecks/MovementChecks.luau"))()
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

    warn("Failed to load VolcanoAC: " .. tostring(result))
    warn("Shutting down server")
    

end


