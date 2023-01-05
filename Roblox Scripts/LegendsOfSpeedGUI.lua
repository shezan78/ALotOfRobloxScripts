local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Shezan's Gui", "Synapse")
local Tab = Window:NewTab("Legends Of Speed")
local Section = Tab:NewSection("Scripts ↓")

Section:NewToggle("Speed Farm", "On/off", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/LegendsOfSpeedSpeedAutofarm.lua"))()
    else
        _G.autotap = false
    end
end)

Section:NewToggle("Gem Farm", "On/off", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/LegendsOfSpeedGemAutofarm.lua"))()
    else
        _G.autotap = false
    end
end)

Section:NewKeybind("Press E to close GUI", "KeybindInfo", Enum.KeyCode.E, function()
	Library:ToggleUI()
end)
