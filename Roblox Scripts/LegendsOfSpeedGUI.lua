--[[
$$\      $$\                 $$\                 $$\                                 $$\                                              
$$$\    $$$ |                $$ |                $$ |                                $$ |                                             
$$$$\  $$$$ | $$$$$$\   $$$$$$$ | $$$$$$\        $$$$$$$\  $$\   $$\        $$$$$$$\ $$$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$\  $$$$$$$\  
$$\$$\$$ $$ | \____$$\ $$  __$$ |$$  __$$\       $$  __$$\ $$ |  $$ |      $$  _____|$$  __$$\ $$  __$$\ \____$$  |\____$$\ $$  __$$\ 
$$ \$$$  $$ | $$$$$$$ |$$ /  $$ |$$$$$$$$ |      $$ |  $$ |$$ |  $$ |      \$$$$$$\  $$ |  $$ |$$$$$$$$ |  $$$$ _/ $$$$$$$ |$$ |  $$ |
$$ |\$  /$$ |$$  __$$ |$$ |  $$ |$$   ____|      $$ |  $$ |$$ |  $$ |       \____$$\ $$ |  $$ |$$   ____| $$  _/  $$  __$$ |$$ |  $$ |
$$ | \_/ $$ |\$$$$$$$ |\$$$$$$$ |\$$$$$$$\       $$$$$$$  |\$$$$$$$ |      $$$$$$$  |$$ |  $$ |\$$$$$$$\ $$$$$$$$\\$$$$$$$ |$$ |  $$ |
\__|     \__| \_______| \_______| \_______|      \_______/  \____$$ |      \_______/ \__|  \__| \_______|\________|\_______|\__|  \__|
                                                           $$\   $$ |                                                                 
                                                           \$$$$$$  |                                                                 
                                                            \______/                                                                  
]]

local Library = loadstring(game:HttpGet("https://github.com/shezan78/Kavo-UI-Lib-Remake/blob/main/Kavo%20UI%20Library%20main%20source.lua"))()
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
