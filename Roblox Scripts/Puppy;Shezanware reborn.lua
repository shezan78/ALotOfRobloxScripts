getgenv().SilentKeyy = 'q'
getgenv().PredictionAmmount = 0.137

--// Main Libarys \\--
local libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/Uilibvariables%20splix.lua"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/notify%20lib%20for%20puppyreborn.lua"))()
local Notify = NotifyLibrary.Notify

--// Service Handler \\--
local GetService = setmetatable({}, {
    __index = function(self, key)
        return game:GetService(key)
    end
})
--// Services \\--
local RunService = GetService.RunService
local Players = GetService.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera
local UserInputService = GetService.UserInputService
local Unpack = table.unpack
local GuiInset = GetService.GuiService:GetGuiInset()
local Insert = table.insert
local Network = GetService.NetworkClient
local StarterGui = GetService.StarterGui
local tweenService = GetService.TweenService
local ReplicatedStorage = GetService.ReplicatedStorage
local http = GetService.HttpService
local lighting = GetService.Lighting
makefolder("puppywarereborn")

--// Start \\--
local PuppySettings = {
    SilentAim = {
        Enabled = false,
        UseFOV = false,
        ShowFOV = false,
        FOVColor = Color3.new(0.603921, 0.011764, 1),
		DOTColor = Color3.fromRGB(0, 71, 212),
        WallCheck = false,
        KnockedCheck = false,
		PingPred1 = false,
		PingPred2 = false,
        GrabbedCheck = false,
        ShowHitbox = false,
        NotificationMode = false,
        AirShotMode = false,
        UseNearestDistance = false,
		RandomHitbox = false,
        Hitboxes = "HumanoidRootPart",
		Selected = nil
    },
    SilentAimSettings = {
        MovementPrediction = false,
        MovementPredictionAmount = getgenv().PredictionAmmount,
        HitChance = false,
        HitChanceAmount = {
            HitPercent = 100,
            NotHitPercent = 0
        }
    },
	Aimbot = {
		Enabled = false,
		Prediction = false,
		Hitboxes = "HumanoidRootPart"
	},
    AimbotSettings = {
		Mode = "Camera",
		Smoothness = false,
		SmoothnessAmmount = 0.0334,
		PredictionVelocity = 10
    },
	AntiAim = {
		Enabled = false,
		Desync = false,
		Legit = false,
		FPSUnlocked = false,
		LegitAAKey = Enum.KeyCode.Z,
		DesyncValues = {
			Velocity = -100,
			CFrame = -100
		}
	},
	BackTracking = {
		Enabled = false
	},
	AutoPeak = {
		Enabled = false,
		APKey = Enum.KeyCode.N,
	},
	AutoClicker = {
		Enabled = false,
		Keybind = Enum.KeyCode.B
	},
	Misc = {
	CFrameSpeed = {
		Enabled = false,
		Bhop = false,
		Keybind = Enum.KeyCode.V,
		Speed = 1,
	},
	Strafe = false,
	Antislow = false,
	},
    FOV = {
        FOVFilled = false,
        Transparency = 9,
        SilentAimSize = 100,
        Thickness = 2
    },
	Esp = {
		Enabled = false,
		Bones = false,
	},
	TriggerBot = {
        Enabled = false,
		DelayAmount = 0
    },
    TargetGui = {
        Enabled = false
    },
    Whitelist = {
        Players = {},
        Friends = {},
        Holder = "",
        Enabled = false,
        CrewEnabled = false,
        FriendsWhitelist = false
    },
}
local PuppyStorage = {
    GetStrafeAngle = 0,
    BHoping = false,
    Side = "Right",
    StoredRange = 10,
    HeldSpace = false,
    GetPrediction = 0.165,
    Instance = {},
    Equipable = false,
    FPSBeat = 0,
    GetTime = 0,
    Macro = false
}
local PuppyModule = {
    Instance = {}
}

local Window = libary:new({name = "Shezanware Reborn", accent = Color3.fromRGB(244, 95, 115), textsize = 13})
local AimingTab = Window:page({name = "Legit"})
local RageTab = Window:page({name = "Rage"})
local VisualTab = Window:page({name = "Visauls"})
local MiscTab = Window:page({name = "Misc"})

local SAimSection = AimingTab:section({name = "Silent Aim", side = "left",size = 320})

local AAMainSection = RageTab:section({name = "Main", side = "left", size = 200})
local AASettings = RageTab:section({name = "Settings", side = "right", size = 200})

local VisualMainSection = VisualTab:section({name = "Main",side = "left", size = 200})

local MiscMoveSettings = MiscTab:section({name = "Movement Cheats",side = "left", size = 200})
local MiscToolSettings = MiscTab:section({name = "Tool Cheats",side = "left", size = 50})
local MiscCharSettings = MiscTab:section({name = "Character Cheats",side = "left", size = 50})
local MiscNorSettings = MiscTab:section({name = "Normal Cheats",side = "left", size = 100})

local ConfigSection = MiscTab:section({name = "Config",side = "right", size = 250})
local ConfigLoader = ConfigSection:configloader({folder = "puppywarereborn"})

SAimSection:toggle({name = "Silent Aim Enabled", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.Enabled = Boolean
end})

SAimSection:toggle({name = "Use FOV", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.UseFOV = Boolean
end})

 SAimSection:toggle({name = "Show FOV", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.ShowFOV = Boolean
end})

SAimSection:colorpicker({name = "Dot Color", cpname = "", def = Color3.new(0.603921, 0.011764, 1), callback = function(color)
    PuppySettings.SilentAim.DOTColor = color
end})

SAimSection:toggle({name = "Wall Check", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.WallCheck = Boolean
end})

SAimSection:toggle({name = "Knocked Check", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.KnockedCheck = Boolean
end})

SAimSection:toggle({name = "Grabbed Check", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.GrabbedCheck = Boolean
end})

SAimSection:toggle({name = "Blatant Mode", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.ShowHitbox = Boolean
end})

SAimSection:toggle({name = "Notification Mode", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.NotificationMode = Boolean
end})

SAimSection:toggle({name = "Hit Airshots", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.AirShotMode = Boolean
end})

SAimSection:toggle({name = "Use Nearest Distance", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.UseNearestDistance = Boolean
end})

SAimSection:dropdown({name = "Hitbox", def = "HumanoidRootPart", max = 4, options = {"Head","UpperTorso","HumanoidRootPart"}, callback = function(part)
    PuppySettings.SilentAim.Hitboxes = part
end})

SAimSection:toggle({name = "Random Hitbox", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.RandomHitbox = Boolean
end})

-- Aimbot Section --
local AimbotSection = AimingTab:section({name = "AimBot", side = "right",size = 113})
AimbotSection:toggle({name = "Aimbot Enabled", def = false, callback = function(Boolean)
    PuppySettings.Aimbot.Enabled = Boolean
end})

AimbotSection:toggle({name = "Prediction", def = false, callback = function(Boolean)
    PuppySettings.Aimbot.Prediction = Boolean
end})

AimbotSection:dropdown({name = "Aim Hitbox", def = "HumanoidRootPart", max = 4, options = {"Head","UpperTorso","HumanoidRootPart"}, callback = function(part)
    PuppySettings.Aimbot.Hitboxes = part
end})

-- Silent FOV Section --
local AimbotFOVSection = AimingTab:section({name = "FOV", side = "right",size = 150})
AimbotFOVSection:toggle({name = "FOV Filled", def = false, callback = function(Boolean)
    PuppySettings.FOV.FOVFilled = Boolean
end})

AimbotFOVSection:slider({name = "Silent FOV Size", def = 100, max = 500, min = 10, rounding = true, callback = function(Value)
    PuppySettings.FOV.SilentAimSize = Value
end})

AimbotFOVSection:slider({name = "Silent FOV Transparency", def = 9, max = 9, min = 1, rounding = true, callback = function(Value)
    PuppySettings.FOV.Transparency = tonumber("0." .. Value)
end})

AimbotFOVSection:slider({name = "FOV Thickness", def = 2, max = 10, min = 1, rounding = true, callback = function(Value)
    PuppySettings.FOV.Thickness = Value
end})

AimbotFOVSection:colorpicker({name = "FOV Color", cpname = "", def = Color3.new(0.603921, 0.011764, 1), callback = function(color)
    PuppySettings.SilentAim.FOVColor = color
end})

-- Aimbot Settings Section --

local AimbotSettings = AimingTab:section({name = "Aimbot Settings", side = "right",size = 150})

AimbotSettings:dropdown({name = "Aim Assist Type", def = "Camera", max = 4, options = {"Camera","Mouse",}, callback = function(part)
    PuppySettings.AimbotSettings.Mode = part
end})

AimbotSettings:toggle({name = "Smoothness", def = false, callback = function(Boolean)
    PuppySettings.AimbotSettings.Smoothness = Boolean
end})

AimbotSettings:slider({name = "Smoothness Ammount", def = 2, max = 10, min = 1, rounding = true, callback = function(Value)
    PuppySettings.AimbotSettings.SmoothnessAmmount = Value
end})

AimbotSettings:slider({name = "Prediction Velocity", def = 10, max = 60, min = 10, rounding = true, callback = function(Value)
    PuppySettings.AimbotSettings.PredictionVelocity = Value
end})

-- Silent Aim Settings Section --
local SilentAimSettings = AimingTab:section({name = "Silent Aim Settings", side = "left",size = 130})

SilentAimSettings:toggle({name = "Hit Chance", def = false, callback = function(Boolean)
    PuppySettings.SilentAimSettings.HitChance = Boolean
end})

SilentAimSettings:toggle({name = "Ping Prediction (1)", def = false, callback = function(Boolean)
    PuppySettings.SilentAimSettings.PingPred1 = Boolean
end})

SilentAimSettings:toggle({name = "Ping Prediction (2)", def = false, callback = function(Boolean)
    PuppySettings.SilentAimSettings.PingPred2 = Boolean
end})

SilentAimSettings:slider({name = "Hit Chnace Amm", def = 100, max = 100, min = 0, rounding = true, callback = function(Value)
    PuppySettings.SilentAimSettings.HitChanceAmount.HitPercent = tonumber(Value)
    PuppySettings.SilentAimSettings.HitChanceAmount.NotHitPercent = tonumber(100 - PuppySettings.SilentAimSettings.HitChanceAmount.HitPercent)
end})

-- Trigger Bo…
