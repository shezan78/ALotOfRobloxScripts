--[[
███▄ ▄███▓ ▄▄▄      ▓█████▄ ▓█████     ▄▄▄▄ ▓██   ██▓     ██████  ██░ ██ ▓█████ ▒███████▒ ▄▄▄       ███▄    █ 
▓██▒▀█▀ ██▒▒████▄    ▒██▀ ██▌▓█   ▀    ▓█████▄▒██  ██▒   ▒██    ▒ ▓██░ ██▒▓█   ▀ ▒ ▒ ▒ ▄▀░▒████▄     ██ ▀█   █ 
▓██    ▓██░▒██  ▀█▄  ░██   █▌▒███      ▒██▒ ▄██▒██ ██░   ░ ▓██▄   ▒██▀▀██░▒███   ░ ▒ ▄▀▒░ ▒██  ▀█▄  ▓██  ▀█ ██▒
▒██    ▒██ ░██▄▄▄▄██ ░▓█▄   ▌▒▓█  ▄    ▒██░█▀  ░ ▐██▓░     ▒   ██▒░▓█ ░██ ▒▓█  ▄   ▄▀▒   ░░██▄▄▄▄██ ▓██▒  ▐▌██▒
▒██▒   ░██▒ ▓█   ▓██▒░▒████▓ ░▒████▒   ░▓█  ▀█▓░ ██▒▓░   ▒██████▒▒░▓█▒░██▓░▒████▒▒███████▒ ▓█   ▓██▒▒██░   ▓██░
░ ▒░   ░  ░ ▒▒   ▓▒█░ ▒▒▓  ▒ ░░ ▒░ ░   ░▒▓███▀▒ ██▒▒▒    ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░▒▒ ▓░▒░▒ ▒▒   ▓▒█░░ ▒░   ▒ ▒ 
░  ░      ░  ▒   ▒▒ ░ ░ ▒  ▒  ░ ░  ░   ▒░▒   ░▓██ ░▒░    ░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░░░▒ ▒ ░ ▒  ▒   ▒▒ ░░ ░░   ░ ▒░
░      ░     ░   ▒    ░ ░  ░    ░       ░    ░▒ ▒ ░░     ░  ░  ░   ░  ░░ ░   ░   ░ ░ ░ ░ ░  ░   ▒      ░   ░ ░ 
       ░         ░  ░   ░       ░  ░    ░     ░ ░              ░   ░  ░  ░   ░  ░  ░ ░          ░  ░         ░ 
                      ░                      ░░ ░                                ░                             
]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shezan78/Orion-Ui-Lib/main/OrionMainSource')))()
local Window = OrionLib:MakeWindow({Name = "Shezans GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Color Picker",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Color picker"
})

Tab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(0, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "Fps game lock",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Fpsgame%20aimbot.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Universal Silent aim",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/UniversalSilentAim.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Universal Aimbot",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/UniversalAimbot.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Universal Aimlock Fov",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/UniversalAimlockFov.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Autoclicker",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/auto%20clicker.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Bloxfruits Mukuro Hub",
	Callback = function()
      		 loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/BloxMukuroHub.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Bloxfruits HoHoHub",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/BloxHoHoHub.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Sword Reach",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/SwordReach.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "SimpleSpy",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/SimpleSpySource.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Inf Yeild",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/InfYeild.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Highlight ESP on",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/HighLightEspOn.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Highlight ESP off",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/HighLightEspOff.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Anti AFK scripts",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/RobloxAntiAfk.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Legends Of Speed GUI",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/LegendsOfSpeedGUI.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Treasure Hunting Sim GUI",
	Callback = function()
      		  loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/TreasureHuntingSim.lua", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Fe Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "FE Neko Anims V1.6",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/FE%20Neko%20Anims%20V1.6.lua"))()
  	end    
})


local Tab = Window:MakeTab({
	Name = "Da Hood",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Da hood"
})

Tab:AddButton({
	Name = "Da Hood Basic Locking GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/Quick-DH-script/main/GUI%20dont%20use%2C%20use%20the%20loadstring%20attached%20to%20readme.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Azure.lua",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Azure.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Azure.Rewrite",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/AzureRewrite.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "100+ Ping DH script",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/100%2B%20ping%20da%20hood%20aimlock.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Green dot lock",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/GreenDotlock.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Pink dot lock 1 - Q/C To toggle",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Pink%20Dot%20Lock%202.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Pink Dot Lock 2 - Q to toggle",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Pink%20Dot%20lock%201.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "ValientSilentAim",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/DHvalientsilentaim.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "DahoodAimTrainer",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Dahoodaimtrainer.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Free Anims pack",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Dahoodfreeanimationpack.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Silent aim GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Dahoodsilentaimui.lua", true))()
  	end    
})


Tab:AddButton({
	Name = "Azure",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Azure.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "HoodCustom Silent Aim",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/HoodCustomSilent.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "KAI private lock",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/KalPrivate.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "MoonGodV3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/MoonGodv3.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "SmoothLock",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/SmoothLock.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "PingSpoofer",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/PingSpoofer.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Repeatable Animations",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/RepeatableAnimations.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Swagmode GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Swagmode.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Resolver 1",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Resolver1.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Resolver 2",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Resolver2.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 1 - Working",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE_1.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 2 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE_2.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 3 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/GuizzyisbackV2LOL/LegitVersionLua/main/LuaRoblox", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 4 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE_8.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 5 - Working",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE_9%20very%20blatant%20be%20careful.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 6 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE12.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 7 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE12.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 8 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE_15.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Streamable 9 - Broken",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/STREAMABLE_4.lua", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Avatar",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Avatar Stuff"
})

Tab:AddButton({
	Name = "Headless",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/Headless.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Hat GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/ALotOfRobloxScripts/main/Roblox%20Scripts/Hat%20Gui.lua", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Destroy Interface",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Destroy UI Interface"
})

Tab:AddButton({
	Name = "Destroy UI Interface",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

OrionLib:MakeNotification({
	Name = "Checking Whitelist",
	Content = "Whitelisted",
	Image = "rbxassetid://4483345998",
	Time = 15
})

OrionLib:Init()
