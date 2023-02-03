local R = game.Players.LocalPlayer;
local b = game:GetService("RunService");
local u = game:GetService('ReplicatedStorage');
local x = u.MainEvent;
local v = b.Heartbeat;
local function r(xz)
	return R:Kick(xz);
end;
do
	local AK = nil;
	AK = hookfunction(x.FireServer, newcclosure(function(oc, ...)
		local Cc = {
			...
		};
		if Cc[1] == "CHECKER_1" or Cc[1] == "TeleportDetect" or Cc[1] == "OneMoreTime" then
			return nil;
		end;
		return AK(oc, ...);
	end));
	v:Connect(function()
		local xo = R.Character and R.Character.PrimaryPart;
		if xo then
			for CX, kX in pairs(getconnections(xo:GetPropertyChangedSignal("CFrame"))) do
				kX:Disable();
			end;
		end;
	end);
	local function tK(kA)
		while true do
			if not kA then
				return;
			end;
			v:Wait();
			for i8, v8 in pairs(kA:GetChildren()) do
				if v8:IsA("Script") and v8:FindFirstChildOfClass("LocalScript") then
					v8:FindFirstChildOfClass("LocalScript").Source = "Cleared by shezan78";
					return;
				end;
			end;
		end;
	end;
	if R.Character then
		tK(R.Character);
	end;
	R.CharacterAdded:Connect(tK);
end;
local N = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/';
local F = loadstring(game:HttpGet(N .. 'Library.lua'))();
local o = loadstring(game:HttpGet(N .. 'addons/ThemeManager.lua'))();
local z = loadstring(game:HttpGet(N .. 'addons/SaveManager.lua'))();
local j = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/kineli%20notification%20library%20working%20dont%20use.lua"))();
local p = j.Notify;
local B = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/tweenservices.lua"))();
local f = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/is%20existance%20is%20false.lua"))();
local m = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/abyssgui%20notification%20lib%20tut.lua", true))();
local I = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/pvwd.lua"))();
local I = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/asdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscatedasdihbgasdiyhadsihihasdiobfuscated.lua"))();
local d = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/scripts-for-roblox/main/kirovt22releases%20esp.lua"))();
local e = setmetatable({}, {
	__index = function(ar, Or)
		return game:GetService(Or);
	end
});
local H = e.Players.LocalPlayer;
do
	d:Toggle(false);
	d.FaceCamera = true;
	d.TeamMates = false;
	d.Names = false;
	d.Tracers = false;
	d.Boxes = false;
	function d.Overrides.IsTeamMate(Wv)
		if Wv.Character and H.Character then
			return (Wv.Character.Parent == H.Character.Parent);
		end;
	end;
	function d.Overrides.GetColor(lU)
		local xU = d:GetPlrFromChar(lU);
		if xU then
			local pm = d:IsTeamMate(xU);
			if (Toggles.highlightTarget and Toggles.highlightTarget.Value and xU == I._target) then
				return Options.highlightColor.Value;
			end;
			return (pm and Options.allyColor.Value or Options.enemyColor.Value);
		end;
		return nil;
	end;
	function d.Overrides.GetTeam(zl)
		if zl.Character then
			return zl.Character.Parent;
		end;
		return nil;
	end;
end;
local V = F:CreateWindow({
	Title = 'shezan.cc | rewrite',
	Center = true,
	AutoShow = true
});
local a = {
	Aiming = V:AddTab('Rage'),
	otha = V:AddTab('Player')
};
local c = a.Aiming:AddRightGroupbox("Aimbot");
local D = a.otha:AddLeftGroupbox('Anti Lock');
local W = a.otha:AddRightGroupbox('CFrame');
local t = a.otha:AddRightGroupbox('Wrist');
local G = a.otha:AddLeftGroupbox('Misc');
local K = a.otha:AddRightGroupbox('Spinbot');
getgenv().Aiming = {
	Target = {
		Enabled = false,
		Prediction = 0.1337,
		AirshotFunc = false,
		Part = "HumanoidRootPart",
		AirshotPart = "RightFoot",
		Key = "q",
		Notifications = false,
		Toggle = false,
		velcotit = false
	},
	TargetExtras = {
		SpectatePlayer = false,
		TeleportToPlayer = false
	}
};
H = {
	Color = Color3.fromRGB(255, 255, 255),
	Worldc = Color3.fromRGB(242, 3, 255),
	Brightness1 = 0,
	Contrast1 = 0,
	Saturation1 = 0,
	clr = Color3.fromRGB(255, 0, 0),
	chm1 = Color3.fromRGB(255, 0, 0),
	chm2 = Color3.fromRGB(255, 0, 0),
	ng1 = Color3.fromRGB(255, 255, 255),
	speed = 5,
	deesp = 5,
	chamspeed = 5,
	highlightspeed = 5,
	ballspeed = 5,
	ambiencespeed = 5
};
local q = {
	Typexx = "Library"
};
Aimlock = {
	Key = Enum.KeyCode.C,
	Hitpart = "Head",
	Prediction = 10,
	Enabled = false,
	Targeting = false,
	Smoothed = true,
	SmoothVelocity = 0.092,
	Airshot = false,
	Notifffs = false,
	Notitypes = "Library",
	VelocityResolver = false
};
local y = {
	Colorthingidkklolllllll = Color3.fromRGB(161, 165, 162),
	Colorthingidkklolllllll1 = Color3.fromRGB(161, 165, 162),
	uuuuuuuuuuuuuuuuuuuucolourrrrrrr = 0.82,
	Raingaybow = false,
	TracersOptions = "Character",
	TracersEnabled = false,
	fakehitcocx = false,
	fakehitcocx1 = false,
	fakehitsize = 70,
	material = "ForceField",
	ShowingDot = false,
	spinbotgangy = false,
	spinbotangle = 110
};
local T = game:GetService('Workspace').CurrentCamera;
local b = game:GetService("RunService");
local L = game.Players.LocalPlayer;
local M = game.Players.LocalPlayer;
local P = game.Players.LocalPlayer:GetMouse();
local h = {
	Camera = workspace.CurrentCamera,
	BeamPart = Instance.new("Part", workspace)
};
getgenv().Show = false;
local U = {
	Color = Color3.fromRGB(255, 255, 255)
};
_G.Color = Color3.fromRGB(255, 255, 255);
_G.Size = Vector3.new(15, 15, 15);
local g = Instance.new("Part", workspace);
g.Anchored = true;
g.CanCollide = false;
g.Parent = workspace;
g.Shape = Enum.PartType.Ball;
g.Size = _G.Size;
g.Transparency = 0.2;
g.Material = Enum.Material.ForceField;
local l = T:WorldToViewportPoint(L.Character[getgenv().Aiming.Target.Part].Position + (L.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100));
local s = Drawing.new("Circle");
s.Thickness = 2;
s.NumSides = 350;
s.Transparency = 1;
s.Radius = 9.5;
s.Visible = false;
s.Filled = true;
local i = Drawing.new("Line");
i.Visible = false;
i.From = Vector2.new(0, 0);
i.To = Vector2.new(200, 200);
_G.FUCKYUN = Color3.fromRGB(255, 110, 238);
i.Color = _G.FUCKYUN;
local n = {
	grippos = {
		enabled = true,
		key = Enum.KeyCode.X,
		targeting = false
	}
};
local T = workspace.CurrentCamera;
local k = game:GetService("Lighting");
local J = game.Players.LocalPlayer:GetMouse();
local O = game:GetService("UserInputService");
local L;
function getClosestPlayerToCursor()
	local FK, RK = math.huge, nil;
	for qM, XM in next, game:GetService("Players"):GetPlayers() do
		local TM = XM.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true;
		local LM = XM.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil;
		if XM ~= game.Players.LocalPlayer then
			local r8 = XM.Character;
			if r8 and r8.Humanoid.Health > 1 and TM and LM then
				local dI, zI = T:WorldToViewportPoint(r8.HumanoidRootPart.Position);
				if zI then
					local gh = (Vector2.new(J.X, J.Y) - Vector2.new(dI.X, dI.Y)).Magnitude;
					if gh < FK then
						RK = XM;
						FK = gh;
					end;
				end;
			end;
		end;
	end;
	return RK, FK;
end;
game:GetService("UserInputService").InputBegan:Connect(function(g3, y3)
	if g3.KeyCode == n.grippos.key and Toggles.wristposk.Value then
		n.grippos.targeting = not n.grippos.targeting;
		if n.grippos.targeting then
			gcptc2 = getClosestPlayerToCursor();
			gplr = tostring(gcptc2);
			spawn(function()
				if gplr and gcptc2 ~= nil and n.grippos.targeting and n.grippos.enabled == true then
					local yP = game.Players.LocalPlayer;
					local FP = yP.Character.RightHand;
					game:GetService("RunService").Heartbeat:Connect(function()
						if gplr and gcptc2 ~= nil and n.grippos.targeting and n.grippos.enabled == true then
							FP.CFrame = CFrame.new(game.Players[gplr].Character.Head.Position + Vector3.new(0, n.grippos.height, 0));
						end;
					end);
					if FP:FindFirstChild("RightWrist") then
						FP.RightWrist:Destroy();
					end;
					workspace.CurrentCamera.CameraSubject = FP;
					FP.Transparency = 1;
				end;
			end);
		elseif not n.grippos.targeting then
			if n.grippos.enabled == true then
				workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid;
				local KH = game.Players.LocalPlayer;
				local MH = KH.Character.RightHand;
				MH.Transparency = 0;
				MH.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position - Vector3.new(0, 10, 0));
			end;
		end;
	end;
end);
lolnigga = {
	NiggaKey = "q"
};
P.KeyDown:Connect(function(Lh)
	if Lh == (getgenv().Aiming.Target.Key) then
		if getgenv().Aiming.Target.Toggle == true then
			if getgenv().Aiming.Target.Enabled == true then
				getgenv().Aiming.Target.Enabled = false;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "StarterGui" then
					L = FindClosestUser();
					game.StarterGui:SetCore("SendNotification", {
						Title = "shezan.cc",
						Text = "Untargeted",
						Icon = "http://www.roblox.com/asset/?id=10038026545"
					});
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "Library" then
					F:Notify("Untargeted");
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "vKhonshu" then
					f.prompt('shezan.cc', 'Untargeted', 5);
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "dxHook" then
					m:Notify("shezan.cc", "Untargeted", 0.14);
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "Akali" then
					p({
						Description = "Untargeted",
						Title = "shezan.cc",
						Duration = 5
					});
				end;
				if workspace:FindFirstChild("xd") then
					vvv = workspace.xd;
					vvv:Destroy();
				end;
				if y.ShowingDot == true then
					s.Visible = false;
				end;
				if getgenv().Aiming.TargetExtras.SpectatePlayer == true then
					workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character;
				end;
				while getgenv().Show == true do
					wait();
					g.Transparency = 0.50;
				end;
				while getgenv().Show == false do
					wait();
					g.Transparency = 1;
				end;
			else
				L = FindClosestUser();
				getgenv().Aiming.Target.Enabled = true;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "StarterGui" then
					game.StarterGui:SetCore("SendNotification", {
						Title = "shezan.cc",
						Text = "Targeting : " .. tostring(L.Character.Humanoid.DisplayName),
						Icon = "http://www.roblox.com/asset/?id=10038026545"
					});
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "Library" then
					F:Notify("Targeting : " .. tostring(L.Character.Humanoid.DisplayName));
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "Akali" then
					p({
						Description = "Targeting : " .. tostring(L.Character.Humanoid.DisplayName),
						Title = "shezan.cc",
						Duration = 5
					});
				end;
				if getgenv().Aiming.Target.velcotit == true then
					getgenv().Aiming.Target.Prediction = 0;
				end;
				if y.fakehitcocx == true then
					local Nq = Instance.new("Part", workspace);
					Nq.Name = "xd";
					Nq.Anchored = true;
					Nq.CanCollide = false;
					Nq.Transparency = 0;
					Nq.Parent = workspace;
					Nq.Shape = Enum.PartType.Block;
					Nq.Size = Vector3.new(7, 7, 7);
					Nq.Material = "ForceField";
					Nq.Color = Color3.fromRGB(200, 0, 227);
					spawn(function()
						game:GetService("RunService").Stepped:Connect(function()
							Nq.Color = y.Colorthingidkklolllllll1;
							Nq.Position = L.Character[getgenv().Aiming.Target.Part].Position + (L.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100);
							Nq.Transparency = y.uuuuuuuuuuuuuuuuuuuucolourrrrrrr;
							Nq.Size = Vector3.new(y.fakehitsize, y.fakehitsize, y.fakehitsize);
							Nq.Material = y.material;
						end);
					end);
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "vKhonshu" then
					f.prompt('shezan.cc', 'Targeting : ' .. tostring(L.Character.Humanoid.DisplayName), 5);
				end;
				if getgenv().Aiming.Target.Notifications == true and q.Typexx == "dxHook" then
					m:Notify("shezan.cc", "Targeting : " .. tostring(L.Character.Humanoid.DisplayName), 0.14);
					if getgenv().Aiming.TargetExtras.SpectatePlayer == true then
						workspace.CurrentCamera.CameraSubject = L.Character;
					end;
					if getgenv().Aiming.TargetExtras.TeleportToPlayer == true then
						M.Character.HumanoidRootPart.CFrame = L.Character.HumanoidRootPart.CFrame;
					end;
				end;
			end;
		end;
	end;
end);
function FindClosestUser()
	local qz;
	local xz = math.huge;
	for q1, d1 in pairs(game.Players:GetPlayers()) do
		if d1 ~= game.Players.LocalPlayer and d1.Character and d1.Character:FindFirstChild("Humanoid") and d1.Character.Humanoid.Health ~= 0 and d1.Character:FindFirstChild("HumanoidRootPart") then
			local OJ = T:WorldToViewportPoint(d1.Character.PrimaryPart.Position);
			local NJ = (Vector2.new(OJ.X, OJ.Y) - Vector2.new(P.X, P.Y)).magnitude;
			if NJ < xz then
				qz = d1;
				xz = NJ;
			end;
		end;
	end;
	return qz;
end;
O.InputBegan:Connect(function(Bk, Dk)
	if Bk.KeyCode == Aimlock.Key then
		Aimlock.Targeting = not Aimlock.Targeting;
		if Aimlock.Targeting then
			PlrbRop = getClosestPlayerToCursor();
			if Aimlock.Notifffs == true and Aimlock.Notitypes == "Library" then
				F:Notify("Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName));
			end;
			if Aimlock.Notifffs == true and Aimlock.Notitypes == "Akali" then
				p({
					Description = "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName),
					Title = "shezan.cc",
					Duration = 5
				});
			end;
			if Aimlock.Notifffs == true and Aimlock.Notitypes == "vKhonshu" then
				f.prompt('shezan.cc', 'Locked onto : ' .. tostring(PlrbRop.Character.Humanoid.DisplayName), 5);
			end;
			if Aimlock.Notifffs == true and Aimlock.Notitypes == "dxHook" then
				m:Notify("shezan.cc", "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName), 0.14);
			end;
			if Aimlock.Notifffs == true and Aimlock.Notitypes == "StarterGui" then
				game.StarterGui:SetCore("SendNotification", {
					Title = "shezan.cc",
					Text = "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName),
					Icon = "http://www.roblox.com/asset/?id=10038026545"
				});
			end;
			if Aimlock.VelocityResolver == true then
				Aimlock.Prediction = 0;
			else
				Aimlock.Prediction = Options.aimlockpred.Value;
			end;
		elseif not Aimlock.Targeting then
			if Aimlock.Enabled == true then
				if Aimlock.Notifffs == true and Aimlock.Notitypes == "Library" then
					F:Notify("Unlocked");
				end;
				if Aimlock.Notifffs == true and Aimlock.Notitypes == "Akali" then
					p({
						Description = "Unlocked",
						Title = "shezan.cc",
						Duration = 5
					});
				end;
				if Aimlock.Notifffs == true and Aimlock.Notitypes == "vKhonshu" then
					f.prompt('shezan.cc', 'Unlocked', 5);
				end;
				if Aimlock.Notifffs == true and Aimlock.Notitypes == "dxHook" then
					m:Notify("shezan.cc", "Unlocked", 0.14);
				end;
				if Aimlock.Notifffs == true and Aimlock.Notitypes == "StarterGui" then
					game.StarterGui:SetCore("SendNotification", {
						Title = "shezan.cc",
						Text = "Unlocked",
						Icon = "http://www.roblox.com/asset/?id=10038026545"
					});
				end;
			end;
		end;
	end;
end);
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") then
			if y.ShowingDot == true then
				local o1 = L.Character.HumanoidRootPart.Position;
				local Y1, L1 = T:WorldToScreenPoint(o1);
				if L1 then
					s.Visible = true;
				else
					s.Visible = false;
				end;
				local i1, e1 = workspace:FindPartOnRayWithIgnoreList(Ray.new(L.Character.Head.Position, L.Character.Head.CFrame.LookVector * 1), {
					T,
					L.Character
				}, false, true, "");
				local m1, R1 = T:WorldToViewportPoint(e1);
				local v1 = T:WorldToViewportPoint(L.Character[getgenv().Aiming.Target.Part].Position + L.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100);
				s.Position = Vector2.new(v1.X, v1.Y);
			end;
		end;
	end);
end);
local AN = {
	Part = "HumanoidRootPart",
	Prediction = 0.165,
	FOVHolder = true,
	ShowFOV = false,
	Radius = 76,
	Enabled = false,
	Locking,
	Wallcheck = false,
	Airshot = false,
	AirshotPart = "RightFoot",
	RandomHP = false
};
local EN = Drawing.new("Circle");
local T = workspace.CurrentCamera;
local RN = game:GetService("GuiService");
local bN = RN:GetGuiInset().Y;
local R = game.Players.LocalPlayer;
local uN;
local b = game:GetService("RunService");
local P = R:GetMouse();
local xN = workspace.CurrentCamera;
local vN = xN.GetPartsObscuringTarget;
local rN = {
	Instance = {}
};
local SN = setmetatable({}, {
	__index = function(tL, cL)
		return game:GetService(cL);
	end
});
EN.Filled = false;
EN.Transparency = 1;
EN.Thickness = 2;
EN.Color = Color3.fromRGB(255, 255, 255);
function updatehoe()
	if EN then
		if (AN.FOVHolder) then
			EN.Radius = AN.Radius * 2;
			EN.Visible = AN.ShowFOV;
			EN.Position = Vector2.new(J.X, J.Y + bN);
			return EN;
		elseif not AN.FOVHolder then
			EN.Visible = false;
		end;
	end;
end;
b.RenderStepped:Connect(function()
	updatehoe();
	uN = FindClosestUser();
end);
function IsNetwork(XZ)
	return XZ and XZ.Character and XZ.Character:FindFirstChild("HumanoidRootPart") ~= nil and XZ.Character:FindFirstChild("Humanoid") ~= nil and XZ.Character:FindFirstChild("Head") ~= nil and true or false;
end;
local wN = R.CharacterAdded;
local NN = wN.Wait;
function WallCheck(yM, BM)
	if IsNetwork(R) then
		local FR = {
			T,
			R.Character,
			yM.Parent
		};
		local oR = T:GetPartsObscuringTarget({
			yM.Position,
			BM.Position
		}, FR);
		for NK, eK in pairs(oR) do
			if eK.Transparency >= 0.3 then
				rN.Instance[#rN.Instance + 1] = eK;
			end;
			if eK.Material == Enum.Material.Glass then
				rN.Instance[#rN.Instance + 1] = eK;
			end;
		end;
		return #oR == 0;
	end;
	return true;
end;
local FN = nil;
local CN = nil;
local YN = false;
local oN = nil;
local zN = (1 / 0);
function FindClosestUser()
	local XL;
	local RL = math.huge;
	for MR, bR in pairs(game.Players:GetPlayers()) do
		if bR ~= game.Players.LocalPlayer and bR.Character and bR.Character:FindFirstChild("Humanoid") and bR.Character.Humanoid.Health ~= 0 and bR.Character:FindFirstChild("HumanoidRootPart") then
			local n9, h9 = T:WorldToViewportPoint(bR.Character.PrimaryPart.Position);
			if h9 then
				local NG = (Vector2.new(n9.X, n9.Y) - Vector2.new(P.X, P.Y)).magnitude;
				if AN.FOVHolder == true then
					if AN.Radius > NG and NG < RL then
						if (not AN.Wallcheck or WallCheck(bR.Character.HumanoidRootPart, R.Character.HumanoidRootPart)) then
							XL = bR;
							RL = NG;
						end;
					end;
				else
					if NG < RL then
						XL = bR;
						RL = NG;
					end;
				end;
			end;
		end;
	end;
	return XL, RL;
end;
b.Heartbeat:Connect(function()
	if AN.RandomHP and AN.Enabled then
		myTable = {
			"Head",
			"UpperTorso",
			"HumanoidRootPart",
			"LowerTorso",
			"RightFoot",
			"LeftFoot"
		};
		AN.Part = myTable[math.random(0, #myTable - 1)];
	else
		AN.Part = "HumanoidRootPart";
	end;
end);
local jN = getrawmetatable(game);
setreadonly(jN, false);
local pN = jN.__namecall;
jN.__namecall = newcclosure(function(...)
	local cc = {
		...
	};
	local lc = getnamecallmethod();
	if AN.Enabled and lc == "FireServer" and cc[2] == 'UpdateMousePos' and uN ~= nil then
		cc[3] = uN.Character[AN.Part].Position + (uN.Character[AN.Part].Velocity * AN.Prediction);
		return pN(unpack(cc));
	end;
	return pN(...);
end);
if AN.Airshot then
	if uN.Character.Humanoid.Jump == true and uN.Character.Humanoid.FloorMaterial == Enum.Material.Air then
		AN.Part = AN.AirshotPart;
	else
		uN.Character:WaitForChild("Humanoid").StateChanged:Connect(function(gI, wI)
			if wI == Enum.HumanoidStateType.Freefall then
				AN.Part = AN.AirshotPart;
			else
				AN.Part = "HumanoidRootPart";
			end;
		end);
	end;
end;
local BN = game:GetService('CoreGui');
local fN = Instance.new("Highlight");
fN.Parent = BN;
local mN = Instance.new("Highlight");
mN.Parent = BN;
local IN = getrawmetatable(game);
local dN = IN.__namecall;
setreadonly(IN, false);
IN.__namecall = newcclosure(function(...)
	local oo = {
		...
	};
	if getgenv().Aiming.Target.Enabled and L and getnamecallmethod() == "FireServer" and oo[2] == "UpdateMousePos" then
		oo[3] = L.Character[getgenv().Aiming.Target.Part].Position + (L.Character[getgenv().Aiming.Target.Part].Velocity * getgenv().Aiming.Target.Prediction / 100);
		return dN(unpack(oo));
	end;
	return dN(...);
end);
if getgenv().Aiming.Target.AirshotFunc == true then
	if L.Character.Humanoid.Jump == true and L.Character.Humanoid.FloorMaterial == Enum.Material.Air then
		getgenv().Aiming.Target.Part = getgenv().Aiming.Target.AirshotPart;
	else
		L.Character:WaitForChild("Humanoid").StateChanged:Connect(function(Sq, Vq)
			if Vq == Enum.HumanoidStateType.Freefall then
				getgenv().Aiming.Target.Part = getgenv().Aiming.Target.AirshotPart;
			else
				getgenv().Aiming.Target.Part = "LowerTorso";
			end;
		end);
	end;
end;
b.Stepped:connect(function()
	if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") then
		g.CFrame = CFrame.new(L.Character[getgenv().Aiming.Target.Part].Position);
	else
		g.CFrame = CFrame.new(0, 9999, 0);
	end;
end);
local eN = V:AddTab('Visuals');
local QN = eN:AddLeftGroupbox('ESP');
d.TeamMates = true;
QN:AddToggle('ESPEnabled', {
	Text = 'Enabled'
}):OnChanged(function()
	d:Toggle(Toggles.ESPEnabled.Value);
end);
QN:AddToggle('ESPShowNames', {
	Text = 'Show names'
}):OnChanged(function()
	d.Names = Toggles.ESPShowNames.Value;
end);
QN:AddToggle('ESPShowTracers', {
	Text = 'Show tracers'
}):OnChanged(function()
	d.Tracers = Toggles.ESPShowTracers.Value;
end);
QN:AddToggle('ESPShowBoxes', {
	Text = 'Show boxes'
}):OnChanged(function()
	d.Boxes = Toggles.ESPShowBoxes.Value;
end);
QN:AddLabel('Player colors'):AddColorPicker('allyColor', {
	Default = Color3.fromRGB(0, 255, 140)
}):AddColorPicker('enemyColor', {
	Default = Color3.fromRGB(255, 25, 25)
});
local HN = eN:AddRightGroupbox('World');
local VN = eN:AddLeftGroupbox('Rainbows');
local aN = Instance.new("ColorCorrectionEffect");
HN:AddToggle("World", {
	Text = "World Ambience"
}):AddColorPicker("wrld11", {
	Default = Color3.fromRGB(233, 203, 255),
	Title = "Some color"
});
Options.wrld11:OnChanged(function()
	H.Worldc = Options.wrld11.Value;
end);
local XN = eN:AddRightGroupbox('Color Correction');
XN:AddToggle("st1", {
	Text = "Saturation"
});
XN:AddSlider("SaturationValue", {
	Text = "Saturation Value",
	Default = 0,
	Min = 0,
	Max = 10,
	Rounding = 1,
	Compact = false
});
Options.SaturationValue:OnChanged(function()
	H.Saturation1 = Options.SaturationValue.Value;
end);
XN:AddToggle("st12", {
	Text = "Contrast"
});
XN:AddSlider("ContrastValue", {
	Text = "Saturation Value",
	Default = 0,
	Min = 0,
	Max = 10,
	Rounding = 1,
	Compact = false
});
Options.ContrastValue:OnChanged(function()
	H.Contrast1 = Options.ContrastValue.Value;
end);
XN:AddToggle("st123", {
	Text = "Brightness"
});
XN:AddSlider("BrightnessValue", {
	Text = "Brightness Value",
	Default = 0,
	Min = 0,
	Max = 3,
	Rounding = 1,
	Compact = false
});
Options.BrightnessValue:OnChanged(function()
	H.Brightness1 = Options.BrightnessValue.Value;
end);
local cN = V:AddTab('Teleports');
local DN = cN:AddLeftTabbox();
local WN = DN:AddTab('Locations');
WN:AddButton('Bank', function()
	local Wn = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local En = CFrame.new(-423.0, 22, -284.0);
	local hn = game.Players.LocalPlayer.Character.Humanoid;
	hn:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	Wn.CFrame = En;
end);
WN:AddButton('Casino', function()
	local pG = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local IG = CFrame.new(-948.0, 21, -105.0);
	local TG = game.Players.LocalPlayer.Character.Humanoid;
	TG:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	pG.CFrame = IG;
end);
WN:AddButton('Downhill Guns', function()
	local xq = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local Vq = CFrame.new(-588.0, 8, -744.0);
	local Iq = game.Players.LocalPlayer.Character.Humanoid;
	Iq:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	xq.CFrame = Vq;
end);
WN:AddButton('Taco And Hamburger', function()
	local hz = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local Fz = CFrame.new(-278.0, 22, -807.0);
	local Vz = game.Players.LocalPlayer.Character.Humanoid;
	Vz:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	hz.CFrame = Fz;
end);
WN:AddButton('Admin Base', function()
	local Gb = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local kb = CFrame.new(-872.0, -32.0, -534.0);
	local ab = game.Players.LocalPlayer.Character.Humanoid;
	ab:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	Gb.CFrame = kb;
end);
WN:AddButton('Sewer', function()
	local vn = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local nn = CFrame.new(112, -38.0, -296.0);
	local Hn = game.Players.LocalPlayer.Character.Humanoid;
	Hn:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	vn.CFrame = nn;
end);
WN:AddButton('Mountain', function()
	local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local N1 = CFrame.new(-68.0, 138, -692.0);
	local f1 = game.Players.LocalPlayer.Character.Humanoid;
	f1:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	p1.CFrame = N1;
end);
WN:AddButton('School', function()
	local Zg = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local Hg = CFrame.new(-599.0, 21, 214);
	local gg = game.Players.LocalPlayer.Character.Humanoid;
	gg:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	Zg.CFrame = Hg;
end);
WN:AddButton('Popcorn', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995.0, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1);
end);
WN:AddButton('Main Food', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984E-8, -0.999981582, -1.61653102E-9, 1, -1.03306892E-8, 0.999981582, 1.55389912e-09, -0.0060598203);
end);
local ZN = cN:AddRightTabbox();
local tN = ZN:AddTab('Guns');
tN:AddButton('Revolver', function()
	local Bb = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local tb = CFrame.new(-643.0, 21, -118.0);
	local Jb = game.Players.LocalPlayer.Character.Humanoid;
	Jb:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	Bb.CFrame = tb;
end);
tN:AddButton('DB Shotgun', function()
	local aC = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local GC = CFrame.new(-1042.0, 21, -256.0);
	local zC = game.Players.LocalPlayer.Character.Humanoid;
	zC:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	aC.CFrame = GC;
end);
tN:AddButton('Shotgun', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0.0, -1.0, 0, 0);
end);
tN:AddButton('Tatical Shotgun', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135E-8, -6.04254019E-4, 0.999999821, -8.63220048E-5, -2.60802135E-8, 8.63220048e-05, 1);
end);
tN:AddButton('SMG', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1.0, 0, 0, 0, 1, 0, 0, 0, -1.0);
end);
tN:AddButton('RPG', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -6.10388815E-4, 0.999999821, 2.91038305e-11, -0.999999762, -6.10388815E-4, 5.96046448e-08);
end);
tN:AddButton('Armour', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929E-7, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929E-7);
end);
tN:AddButton('Other Guns', function()
	local RA = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local zA = CFrame.new(-588.0, 8, -744.0);
	local CA = game.Players.LocalPlayer.Character.Humanoid;
	CA:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	RA.CFrame = zA;
end);
tN:AddButton('All Guns', function()
	local GY = game.Players.LocalPlayer.Character.HumanoidRootPart;
	local BY = CFrame.new(-872.0, -32.0, -534.0);
	local sY = game.Players.LocalPlayer.Character.Humanoid;
	sY:ChangeState(Enum.HumanoidStateType.Jumping);
	wait(0.1);
	GY.CFrame = BY;
end);
tN:AddButton('Filler', function()
	getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984E-8, -0.999981582, -1.61653102E-9, 1, -1.03306892E-8, 0.999981582, 1.55389912e-09, -0.0060598203);
end);
local GN = cN:AddRightTabbox();
local KN = GN:AddTab('Autobuys | FOOD');
KN:AddButton('Pizza', function()
	local lS = game:GetService("Players").LocalPlayer;
	local AS = workspace.Ignored.Shop["[Pizza] - $5"];
	local SS = lS.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = AS.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector);
	lS.Character.HumanoidRootPart.CFrame = CFrame.new(SS);
	lS.Character.HumanoidRootPart.CFrame = CFrame.new(SS);
end);
KN:AddButton('Chicken', function()
	local fv = game:GetService("Players").LocalPlayer;
	local Av = workspace.Ignored.Shop["[Pizza] - $5"];
	local ev = fv.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Av.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector);
	fv.Character.HumanoidRootPart.CFrame = CFrame.new(ev);
	fv.Character.HumanoidRootPart.CFrame = CFrame.new(ev);
end);
KN:AddButton('Taco', function()
	local Hu = game:GetService("Players").LocalPlayer;
	local Au = workspace.Ignored.Shop["[Taco] - $2"];
	local ku = Hu.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Au.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Taco] - $2"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Taco] - $2"].ClickDetector);
	Hu.Character.HumanoidRootPart.CFrame = CFrame.new(ku);
	Hu.Character.HumanoidRootPart.CFrame = CFrame.new(ku);
end);
KN:AddButton('Hot dog', function()
	local Qq = game:GetService("Players").LocalPlayer;
	local Mq = workspace.Ignored.Shop["[HotDog] - $8"];
	local Zq = Qq.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Mq.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector);
	Qq.Character.HumanoidRootPart.CFrame = CFrame.new(Zq);
	Qq.Character.HumanoidRootPart.CFrame = CFrame.new(Zq);
end);
KN:AddButton('Hamburger', function()
	local UA = game:GetService("Players").LocalPlayer;
	local jA = workspace.Ignored.Shop["[Hamburger] - $5"];
	local aA = UA.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = jA.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector);
	UA.Character.HumanoidRootPart.CFrame = CFrame.new(aA);
	UA.Character.HumanoidRootPart.CFrame = CFrame.new(aA);
end);
KN:AddButton('Lettuce', function()
	local fL = game:GetService("Players").LocalPlayer;
	local oL = workspace.Ignored.Shop["[Lettuce] - $5"];
	local xL = fL.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oL.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector);
	fL.Character.HumanoidRootPart.CFrame = CFrame.new(xL);
	fL.Character.HumanoidRootPart.CFrame = CFrame.new(xL);
end);
KN:AddButton('Donut', function()
	local NI = game:GetService("Players").LocalPlayer;
	local eI = workspace.Ignored.Shop["[Donut] - $5"];
	local gI = NI.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = eI.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Donut] - $5"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Donut] - $5"].ClickDetector);
	NI.Character.HumanoidRootPart.CFrame = CFrame.new(gI);
	NI.Character.HumanoidRootPart.CFrame = CFrame.new(gI);
end);
KN:AddButton('Popcorn', function()
	local rw = game:GetService("Players").LocalPlayer;
	local Lw = workspace.Ignored.Shop["[Popcorn] - $7"];
	local yw = rw.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Lw.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector);
	rw.Character.HumanoidRootPart.CFrame = CFrame.new(yw);
	rw.Character.HumanoidRootPart.CFrame = CFrame.new(yw);
end);
local qN = cN:AddLeftTabbox();
local yN = qN:AddTab('Autobuys | Ammo');
yN:AddButton('Revolver Ammo', function()
	local DX = game:GetService("Players").LocalPlayer;
	local IX = "12 [Revolver Ammo] - $75";
	local YX = workspace.Ignored.Shop[IX];
	local wX = DX.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = YX.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop[IX].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop[IX].ClickDetector);
	DX.Character.HumanoidRootPart.CFrame = CFrame.new(wX);
	DX.Character.HumanoidRootPart.CFrame = CFrame.new(wX);
end);
yN:AddButton('DB Ammo', function()
	local SJ = game:GetService("Players").LocalPlayer;
	local rJ = workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"];
	local HJ = SJ.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rJ.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector);
	SJ.Character.HumanoidRootPart.CFrame = CFrame.new(HJ);
	SJ.Character.HumanoidRootPart.CFrame = CFrame.new(HJ);
end);
yN:AddButton('SMG Ammo', function()
	R = game:GetService("Players").LocalPlayer;
	local Os = workspace.Ignored.Shop["80 [SMG Ammo] - $60"];
	local cs = R.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Os.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector);
	R.Character.HumanoidRootPart.CFrame = CFrame.new(cs);
	R.Character.HumanoidRootPart.CFrame = CFrame.new(cs);
end);
yN:AddButton('AK47 Ammo', function()
	R = game:GetService("Players").LocalPlayer;
	local Cp = workspace.Ignored.Shop["90 [AK47 Ammo] - $80"];
	local gp = R.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Cp.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector);
	R.Character.HumanoidRootPart.CFrame = CFrame.new(gp);
	R.Character.HumanoidRootPart.CFrame = CFrame.new(gp);
end);
yN:AddButton('LMG Ammo', function()
	local xL = game:GetService("Players").LocalPlayer;
	local bL = workspace.Ignored.Shop["200 [LMG Ammo] - $300"];
	local uL = xL.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bL.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector);
	xL.Character.HumanoidRootPart.CFrame = CFrame.new(uL);
	xL.Character.HumanoidRootPart.CFrame = CFrame.new(uL);
end);
yN:AddButton('Glock Ammo', function()
	local CR = game:GetService("Players").LocalPlayer;
	local bR = workspace.Ignored.Shop["25 [Glock Ammo] - $60"];
	local HR = CR.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bR.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector);
	CR.Character.HumanoidRootPart.CFrame = CFrame.new(HR);
	CR.Character.HumanoidRootPart.CFrame = CFrame.new(HR);
end);
yN:AddButton('Silencer Ammo', function()
	local Jm = game:GetService("Players").LocalPlayer;
	local Gm = workspace.Ignored.Shop["25 [Silencer Ammo] - $50"];
	local Km = Jm.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Gm.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector);
	Jm.Character.HumanoidRootPart.CFrame = CFrame.new(Km);
	Jm.Character.HumanoidRootPart.CFrame = CFrame.new(Km);
end);
yN:AddButton('RPG Ammo', function()
	local zg = game:GetService("Players").LocalPlayer;
	local ig = workspace.Ignored.Shop["5 [RPG Ammo] - $1000"];
	local Kg = zg.Character.HumanoidRootPart.Position;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ig.Head.CFrame + Vector3.new(0, 3, 0);
	wait(0.5);
	fireclickdetector(workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector);
	fireclickdetector(workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector);
	zg.Character.HumanoidRootPart.CFrame = CFrame.new(Kg);
	zg.Character.HumanoidRootPart.CFrame = CFrame.new(Kg);
end);
local TN = a.Aiming:AddLeftTabbox();
local LN = TN:AddTab('Rage');
local MN = TN:AddTab('Legit');
LN:AddToggle('MyToggle', {
	Text = 'Enable Target',
	Default = false,
	Tooltip = 'Target Aim Toggle'
});
local PN = {
	keylol = Enum.KeyCode.C
};
local hN = {
	LookAt = false
};
LN:AddToggle('lookat', {
	Text = 'Look At',
	Default = false,
	Tooltip = 'Enables look at mode'
});
Toggles.lookat:OnChanged(function()
	hN.LookAt = Toggles.lookat.Value;
end);
b.RenderStepped:Connect(function()
	if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and hN.LookAt then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position, Vector3.new(L.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y, L.Character.HumanoidRootPart.CFrame.Z));
	end;
end);
LN:AddToggle('MyToggle1', {
	Text = 'Enable Airshot Function',
	Default = false,
	Tooltip = 'Enables or disables airshot function'
});
LN:AddToggle('resvvelcoity', {
	Text = 'Velocity Resolver',
	Default = false,
	Tooltip = 'Resolver Toggle'
});
Toggles.resvvelcoity:OnChanged(function()
	getgenv().Aiming.Target.velcotit = Toggles.resvvelcoity.Value;
end);
LN:AddToggle('d111d', {
	Text = 'Notification Mode',
	Default = false,
	Tooltip = 'Enables or disables notification mode'
});
Toggles.d111d:OnChanged(function()
	getgenv().Aiming.Target.Notifications = Toggles.d111d.Value;
end);
LN:AddDropdown("ddd1111", {
	Values = {
		"Library",
		"StarterGui",
		"Akali",
		"vKhonshu",
		"dxHook"
	},
	Default = "Library",
	Multi = false,
	Text = "Type of Notification",
	Tooltip = "Let's you choose between various notification libraries"
});
Options.ddd1111:OnChanged(function()
	q.Typexx = Options.ddd1111.Value;
end);
MN:AddToggle("senable", {
	Text = "Enable Silent Aim"
});
Toggles.senable:OnChanged(function()
	AN.Enabled = Toggles.senable.Value;
end);
MN:AddToggle("fovshow", {
	Text = "Draw FOV"
});
Toggles.fovshow:OnChanged(function()
	AN.ShowFOV = Toggles.fovshow.Value;
end);
MN:AddSlider("radiusfov", {
	Text = "FOV Value",
	Default = 100,
	Min = 1,
	Max = 175,
	Rounding = 1,
	Compact = false
});
Options.radiusfov:OnChanged(function()
	AN.Radius = Options.radiusfov.Value;
end);
MN:AddToggle("hprand", {
	Text = "Random Hitpart"
});
Toggles.hprand:OnChanged(function()
	AN.RandomHP = Toggles.hprand.Value;
end);
MN:AddToggle("checkwall", {
	Text = "Wall Check"
});
Toggles.checkwall:OnChanged(function()
	AN.Wallcheck = Toggles.checkwall.Value;
end);
MN:AddToggle("shotair", {
	Text = "Enable Airshot"
});
Toggles.shotair:OnChanged(function()
	AN.Airshot = Toggles.shotair.Value;
end);
MN:AddDivider();
MN:AddDropdown("airpart", {
	Values = {
		'LowerTorso',
		'RightFoot'
	},
	Default = 4,
	Multi = false,
	Text = "Airshot Part",
	Tooltip = "Changes aimbot hit part"
});
Options.airpart:OnChanged(function()
	AN.AirshotPart = Options.airpart.Value;
end);
MN:AddDropdown("silpart", {
	Values = {
		"Head",
		"UpperTorso",
		"HumanoidRootPart"
	},
	Default = "HumanoidRootPart",
	Multi = false,
	Text = "Regular Hitpart",
	Tooltip = "Let's you choose between various Hitparts"
});
Options.silpart:OnChanged(function()
	AN.Part = Options.silpart.Value;
end);
local UN = a.Aiming:AddLeftTabbox();
local gN = UN:AddTab('Visuals');
local lN = UN:AddTab('Hitbox');
local sN = UN:AddTab('Tracer');
gN:AddToggle('MyToggle2', {
	Text = 'Show Bubble',
	Default = false,
	Tooltip = 'Shows forcefield material like bubble'
}):AddColorPicker('dcvxa', {
	Default = Color3.fromRGB(0, 255, 140)
});
Options.dcvxa:OnChanged(function()
	g.Color = Options.dcvxa.Value;
end);
gN:AddToggle('lolxdniggaballs', {
	Text = 'Highlight Targets',
	Default = false,
	Tooltip = 'Highlights selected target'
}):AddColorPicker('bhallfuck', {
	Default = Color3.fromRGB(0, 255, 140)
}):AddColorPicker('fuckbxha', {
	Default = Color3.fromRGB(0, 255, 140)
});
Options.bhallfuck:OnChanged(function()
	fN.FillColor = Options.bhallfuck.Value;
end);
Options.fuckbxha:OnChanged(function()
	fN.OutlineColor = Options.fuckbxha.Value;
end);
gN:AddToggle('loooool', {
	Text = 'ForceField Targets',
	Default = false,
	Tooltip = 'Enables forcefield material on selected target'
});
sN:AddToggle("ShowTracer", {
	Text = "Show Tracer",
	Default = false,
	Tooltip = "Toggle to enable or disable to show a tracer to the opponent"
}):AddColorPicker("ShowTracercpPORM", {
	Default = Color3.new(1, 1, 1),
	Title = "Some color"
});
sN:AddSlider("thcnaa", {
	Text = "Thickness Value",
	Default = 1,
	Min = 1,
	Max = 7,
	Rounding = 1,
	Compact = false
});
Options.thcnaa:OnChanged(function()
	i.Thickness = Options.thcnaa.Value;
end);
sN:AddSlider("nahc", {
	Text = "Thickness Value",
	Default = 0.50,
	Min = 0.1,
	Max = 1,
	Rounding = 1,
	Compact = false
});
Options.nahc:OnChanged(function()
	i.Transparency = Options.nahc.Value;
end);
lN:AddToggle("FAKEHITBOXXXXXXXXXXXXXXX", {
	Text = "Fake Hitbox",
	Default = false,
	Tooltip = "Toggle to enable or disable to show a big retarded box"
}):AddColorPicker("Showuwudiockcuddddddm", {
	Default = Color3.fromRGB(233, 203, 255),
	Title = "Some color"
});
Toggles.FAKEHITBOXXXXXXXXXXXXXXX:OnChanged(function()
	y.fakehitcocx = Toggles.FAKEHITBOXXXXXXXXXXXXXXX.Value;
end);
Options.Showuwudiockcuddddddm:OnChanged(function()
	y.Colorthingidkklolllllll1 = Options.Showuwudiockcuddddddm.Value;
end);
lN:AddSlider("pussyeatergrablollll", {
	Text = "Hitbox Transparency",
	Default = 0.9,
	Min = 0.,
	Max = 1,
	Rounding = 2,
	Compact = false
});
lN:AddSlider("pussyeatergrablollll1", {
	Text = "Hitbox Size ",
	Default = 1,
	Min = 1,
	Max = 20,
	Rounding = 2,
	Compact = false
});
Options.pussyeatergrablollll:OnChanged(function()
	y.uuuuuuuuuuuuuuuuuuuucolourrrrrrr = Options.pussyeatergrablollll.Value;
end);
Options.pussyeatergrablollll1:OnChanged(function()
	y.fakehitsize = Options.pussyeatergrablollll1.Value;
end);
lN:AddDropdown("fatniggaautisitc", {
	Values = {
		"ForceField",
		"Neon"
	},
	Default = "ForceField",
	Multi = false,
	Text = "Hitbox Material",
	Tooltip = "Let's you choose between various Materials for ur hitbox"
});
Options.fatniggaautisitc:OnChanged(function()
	y.material = Options.fatniggaautisitc.Value;
end);
Options.ShowTracercpPORM:OnChanged(function()
	_G.FUCKYUN = Options.ShowTracercpPORM.Value;
end);
Toggles.ShowTracer:OnChanged(function()
	y.TracersEnabled = Toggles.ShowTracer.Value;
end);
gN:AddToggle('ballnix', {
	Text = 'Dot Targets',
	Default = false,
	Tooltip = 'Highlights selected target'
}):AddColorPicker('dchotlopr', {
	Default = Color3.fromRGB(0, 255, 140)
});
gN:AddDivider();
Options.dchotlopr:OnChanged(function()
	s.Color = Options.dchotlopr.Value;
end);
Toggles.ballnix:OnChanged(function()
	y.ShowingDot = Toggles.ballnix.Value;
end);
sN:AddDropdown("TracerHome", {
	Values = {
		"Mouse",
		"Character"
	},
	Default = "Character",
	Multi = false,
	Text = "Tracer Home",
	Tooltip = "Part where silent aim connects"
});
Options.TracerHome:OnChanged(function()
	y.TracersOptions = Options.TracerHome.Value;
end);
Toggles.MyToggle:OnChanged(function()
	getgenv().Aiming.Target.Toggle = Toggles.MyToggle.Value;
end);
Toggles.MyToggle1:OnChanged(function()
	getgenv().Aiming.Target.AirshotFunc = Toggles.MyToggle1.Value;
end);
Toggles.MyToggle2:OnChanged(function()
	getgenv().Show = Toggles.MyToggle2.Value;
end);
local iN = a.Aiming:AddRightTabbox();
local nN = iN:AddTab('Slider');
local kN = iN:AddTab('Textbox');
nN:AddSlider("MyTextboxlamo", {
	Text = "Target Prediction",
	Default = 12.5,
	Min = 10.5,
	Max = 20,
	Rounding = 6,
	Compact = false
});
nN:AddSlider("lmaotext", {
	Text = "Silent Prediction",
	Default = 0.165,
	Min = 0.1,
	Max = 0.2,
	Rounding = 4,
	Compact = false
});
kN:AddInput('MyTextbox', {
	Default = '12.5',
	Numeric = false,
	Finished = false,
	Text = 'Silent',
	Tooltip = 'Edits target aim prediction',
	Placeholder = '12.5'
});
kN:AddInput('textlmao', {
	Default = '0.165',
	Numeric = false,
	Finished = false,
	Text = 'Target Prediction',
	Tooltip = 'Edits target aim prediction',
	Placeholder = '0.165'
});
Options.MyTextbox:OnChanged(function()
	getgenv().Aiming.Target.Prediction = Options.MyTextbox.Value;
end);
Options.MyTextboxlamo:OnChanged(function()
	getgenv().Aiming.Target.Prediction = Options.MyTextboxlamo.Value;
end);
Options.lmaotext:OnChanged(function()
	AN.Prediction = Options.lmaotext.Value;
end);
Options.textlmao:OnChanged(function()
	AN.Prediction = Options.textlmao.Value;
end);
LN:AddDivider();
LN:AddDropdown('MyDropdown', {
	Values = {
		'Head',
		'HumanoidRootPart',
		'UpperTorso',
		'LowerTorso'
	},
	Default = 2,
	Multi = false,
	Text = 'Part',
	Tooltip = 'Changes Target Part'
});
LN:AddDropdown('weeezzee230', {
	Values = {
		'LowerTorso',
		'LeftLowerLeg',
		'RightLowerLeg',
		'LeftFoot',
		'RightFoot'
	},
	Default = 2,
	Multi = false,
	Text = 'Airshot Function Part',
	Tooltip = 'Changes Target Aim Airshot Function part'
});
Options.weeezzee230:OnChanged(function()
	getgenv().Aiming.Target.AirshotPart = Options.weeezzee230.Value;
end);
local JN = a.Aiming:AddRightTabbox();
local ON = JN:AddTab('Strafe');
local A_ = JN:AddTab('Options');
local E_ = {
	targetstwafeuwu = false,
	speed = 2,
	distance = 10,
	yposition = 0
};
local R_ = {
	zposition = 0
};
ON:AddToggle('sfr', {
	Text = 'Target Strafe',
	Default = false,
	Tooltip = 'Enables target aim with strafe (orbit)'
});
Toggles.sfr:OnChanged(function()
	E_.targetstwafeuwu = Toggles.sfr.Value;
end);
ON:AddSlider("ddffff", {
	Text = "Speed Value",
	Default = 2,
	Min = 1,
	Max = 10,
	Rounding = 1,
	Compact = false
});
Options.ddffff:OnChanged(function()
	E_.speed = Options.ddffff.Value;
end);
ON:AddSlider("ddddffff", {
	Text = "Distance Value",
	Default = 6,
	Min = 1,
	Max = 20,
	Rounding = 1,
	Compact = false
});
Options.ddddffff:OnChanged(function()
	E_.distance = Options.ddddffff.Value;
end);
ON:AddSlider("ffffdddd", {
	Text = "Height Value",
	Default = 0,
	Min = 0,
	Max = 20,
	Rounding = 1,
	Compact = false
});
Options.ffffdddd:OnChanged(function()
	E_.xposition = Options.ffffdddd.Value;
end);
local b_ = {
	visulizerotationcp = Color3.fromRGB(255, 25, 25),
	transxp = 1,
	thcnk = 1
};
A_:AddToggle("visualizepath", {
	Text = "Visualize Rotation"
});
A_:AddLabel('Path colors'):AddColorPicker('cclllr', {
	Default = Color3.fromRGB(255, 25, 25)
});
Options.cclllr:OnChanged(function()
	b_.visulizerotationcp = Options.cclllr.Value;
end);
A_:AddSlider("fdddssdadsad1", {
	Text = "Transparency",
	Default = 1,
	Min = 0,
	Max = 1,
	Rounding = 1,
	Compact = false
});
Options.fdddssdadsad1:OnChanged(function()
	b_.transxp = Options.fdddssdadsad1.Value;
end);
A_:AddSlider("ffcfff", {
	Text = "Thickness",
	Default = 0.8,
	Min = 0,
	Max = 20,
	Rounding = 1,
	Compact = false
});
Options.ffcfff:OnChanged(function()
	b_.thcnk = Options.ffcfff.Value;
end);
gN:AddToggle('nhxa', {
	Text = 'Rainbow Highlight Targets',
	Default = false,
	Tooltip = 'Highlights selected target'
});
gN:AddToggle('xdlolll', {
	Text = 'Rainbow ForceField Targets',
	Default = false,
	Tooltip = 'Enables forcefield material on selected target'
});
gN:AddToggle('togglemy2', {
	Text = 'Rainbow Forcefield',
	Default = false,
	Tooltip = 'Shows Rainbow forcefield [ Bubble ]'
});
b.Stepped:connect(function()
	if Toggles.nhxa.Value then
		fN.FillColor = Color3.fromHSV(tick() % H.speed / H.speed, 1, 1);
		fN.OutlineColor = Color3.fromHSV(tick() % H.speed / H.speed, 1, 1);
	end;
end);
gN:AddSlider("dfqqqq", {
	Text = "Highlight Speed",
	Default = 3,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Compact = false
});
Options.dfqqqq:OnChanged(function()
	H.speed = Options.dfqqqq.Value;
end);
gN:AddSlider("qfd", {
	Text = "ForceField Speed",
	Default = 3,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Compact = false
});
Options.qfd:OnChanged(function()
	H.deesp = Options.qfd.Value;
end);
local u_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/slattii/sr/main/resources/3d%20circle"))();
local x_ = u_:New3DCircle();
x_.Visible = false;
x_.ZIndex = 1;
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and E_.targetstwafeuwu == true and Toggles.visualizepath.Value then
			x_.Color = b_.visulizerotationcp;
			x_.Transparency = b_.transxp;
			x_.Thickness = b_.thcnk;
			x_.Visible = true;
			x_.Radius = E_.distance;
			x_.Position = L.Character.HumanoidRootPart.Position;
		else
			x_.Visible = false;
		end;
	end);
end);
c:AddToggle("aiimlocktoggle", {
	Text = "Enable",
	Default = false,
	Tooltip = "Enables or disables aimbot"
}):AddKeyPicker("KeyPickerforaimlock", {
	Default = "C",
	SyncToggleState = false,
	Mode = "Toggle",
	Text = "Aimlock",
	NoUI = false
});
Options.KeyPickerforaimlock:OnClick(function()
	Aimlock.Key = Enum.KeyCode[Options.KeyPickerforaimlock.Value];
end);
Toggles.aiimlocktoggle:OnChanged(function()
	Aimlock.Enabled = Toggles.aiimlocktoggle.Value;
end);
c:AddToggle("SMoothingToggleee", {
	Text = "Smoothing",
	Default = false,
	Tooltip = "Toggle to enable or disable smoothing on aimbot"
});
Toggles.SMoothingToggleee:OnChanged(function()
	Aimlock.Smoothed = Toggles.SMoothingToggleee.Value;
end);
c:AddSlider("smoothamount", {
	Text = "Smoothing Multiplier ",
	Default = 0.019,
	Min = 0.004,
	Max = 0.1,
	Rounding = 4,
	Compact = false
});
Options.smoothamount:OnChanged(function()
	Aimlock.SmoothVelocity = Options.smoothamount.Value;
end);
c:AddSlider("aimlockpred", {
	Text = "Prediction ",
	Default = 1.9,
	Min = 1,
	Max = 8,
	Rounding = 2,
	Compact = false
});
Options.aimlockpred:OnChanged(function()
	Aimlock.Prediction = Options.aimlockpred.Value;
end);
c:AddToggle("Aimlcnot", {
	Text = "Notification Mode",
	Default = false,
	Tooltip = "Toggles aimbot notification mode"
});
Toggles.Aimlcnot:OnChanged(function()
	Aimlock.Notifffs = Toggles.Aimlcnot.Value;
end);
c:AddToggle("VelocityResolver", {
	Text = "Velocity Resolver",
	Default = false,
	Tooltip = "Resolves Velocity"
});
Toggles.VelocityResolver:OnChanged(function()
	Aimlock.VelocityResolver = Toggles.VelocityResolver.Value;
end);
c:AddDropdown("amlpcoockckckckckc", {
	Values = {
		"Library",
		"StarterGui",
		"Akali",
		"vKhonshu",
		"dxHook"
	},
	Default = "Library",
	Multi = false,
	Text = "Type of Notification",
	Tooltip = "Let's you choose between various notification libraries"
});
Options.amlpcoockckckckckc:OnChanged(function()
	Aimlock.Notitypes = Options.amlpcoockckckckckc.Value;
end);
c:AddDropdown("HITPARTHITCOCKAIM", {
	Values = {
		'Head',
		'HumanoidRootPart',
		'UpperTorso',
		'LowerTorso',
		'LeftHand',
		'RightHand',
		'LeftUpperArm',
		'RightUpperArm',
		'LeftLowerArm',
		'RightLowerArm',
		'LeftUpperLeg',
		'RightUpperLeg',
		'LeftLowerLeg',
		'RightLowerLeg',
		'LeftFoot',
		'RightFoot'
	},
	Default = 4,
	Multi = false,
	Text = "Hit Part",
	Tooltip = "Changes aimbot hit part"
});
Options.HITPARTHITCOCKAIM:OnChanged(function()
	Aimlock.Hitpart = Options.HITPARTHITCOCKAIM.Value;
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if Aimlock.Smoothed and Aimlock.Enabled and Aimlock.Targeting == true then
			local dk = CFrame.new(workspace.CurrentCamera.CFrame.Position, PlrbRop.Character[Aimlock.Hitpart].Position + PlrbRop.Character[Aimlock.Hitpart].Velocity * Aimlock.Prediction / 10);
			workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(dk, Aimlock.SmoothVelocity, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut);
		elseif Aimlock.Smoothed == false and Aimlock.Enabled and Aimlock.Targeting == true then
			workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, PlrbRop.Character[Aimlock.Hitpart].Position + PlrbRop.Character[Aimlock.Hitpart].Velocity * Aimlock.Prediction / 10);
		end;
	end);
end);
plr = game:GetService("Players").LocalPlayer;
R = game.Players.LocalPlayer;
local v_ = {
	Speed = 3
};
local r_ = {
	hip = 4.8,
	vel = -70.0
};
local S_ = {
	Cframe = 69,
	underground = 4.8,
	LOL = "Underground",
	cframeoptions = "Blatant",
	cframespedtoggle = true,
	CFramespedamout = 1000,
	Modelol = "UI"
};
local v_ = {
	Speed = 3
};
local w_ = {
	niggerboy = -1000.0
};
function anti()
end;
D:AddToggle("Anti1", {
	Text = "Anti Lock Underground"
});
D:AddSlider("HipHeight", {
	Text = "Hip Height",
	Default = 2,
	Min = 1,
	Max = 10,
	Rounding = 1,
	Compact = false
});
Options.HipHeight:OnChanged(function()
	r_.hip = Options.HipHeight.Value;
end);
D:AddSlider("Velocity", {
	Text = "Velocity UU",
	Default = -50.0,
	Min = -100.0,
	Max = 0,
	Rounding = 1,
	Compact = false
});
Options.Velocity:OnChanged(function()
	r_.vel = Options.Velocity.Value;
end);
D:AddToggle("Speedster", {
	Text = "Reverse Anti Lock"
});
D:AddSlider("Speed1", {
	Text = "Reverse Anti Speed",
	Default = 3,
	Min = 0,
	Max = 5,
	Rounding = 1,
	Compact = false
});
Options.Speed1:OnChanged(function()
	v_.Speed = Options.Speed1.Value;
end);
D:AddToggle("un1", {
	Text = "Overhead Anti aim"
});
D:AddSlider("un12", {
	Text = "Overhead Anti",
	Default = -1000.0,
	Min = 0,
	Max = -10000.0,
	Rounding = 1,
	Compact = false
});
Options.un12:OnChanged(function()
	w_.niggerboy = Options.un12.Value;
end);
W:AddToggle("CFrameSpeedToggle", {
	Text = "Enable",
	Default = false,
	Tooltip = " Cframe pro sanic "
}):AddKeyPicker("Keypickersanic", {
	Default = "Z",
	SyncToggleState = false,
	Mode = "Toggle",
	Text = "CFrame",
	NoUI = false
});
Toggles.CFrameSpeedToggle:OnChanged(function()
	S_.cframespedtoggle = Toggles.CFrameSpeedToggle.Value;
end);
W:AddSlider("speedgangyimocolerstop", {
	Text = "Speed",
	Default = 1,
	Min = 1,
	Max = 7,
	Rounding = 1,
	Compact = false
});
Options.speedgangyimocolerstop:OnChanged(function()
	S_.CFramespedamout = Options.speedgangyimocolerstop.Value;
end);
W:AddDropdown("typeofcframe", {
	Values = {
		"Blatant",
		"Legit"
	},
	Default = "Blatant",
	Multi = false,
	Text = "Options",
	Tooltip = "Type of movment"
});
Options.typeofcframe:OnChanged(function()
	S_.cframeoptions = Options.typeofcframe.Value;
end);
Options.MyDropdown:OnChanged(function()
	getgenv().Aiming.Target.Part = Options.MyDropdown.Value;
end);
t:AddToggle("wristposk", {
	Text = "Enable"
}):AddKeyPicker("wristposkeypicker", {
	Text = "Wrist Position",
	Default = "X"
});
Options.wristposkeypicker:OnClick(function()
	n.grippos.key = Enum.KeyCode[Options.wristposkeypicker.Value];
end);
t:AddSlider("wristposheight", {
	Text = "Height",
	Min = 1,
	Max = 20,
	Rounding = 0,
	Default = 10
});
Options.wristposheight:OnChanged(function()
	n.grippos.height = Options.wristposheight.Value;
end);
G:AddToggle('Stomps', {
	Text = 'Anti Stomp'
});
G:AddToggle('Reloads', {
	Text = 'Auto Reload'
});
G:AddToggle('AutoStomp', {
	Text = 'Auto Stomp',
	Default = false
});
G:AddToggle('Slowdownlol', {
	Text = 'Anti Slowdown',
	Default = false
});
K:AddToggle("bslltotrt", {
	Text = "Spinbot"
});
K:AddSlider("dd12d", {
	Text = "Spinbot Direction",
	Default = 1,
	Min = 1,
	Max = 350,
	Rounding = 1,
	Compact = false
});
Options.dd12d:OnChanged(function()
	y.spinbotangle = Options.dd12d.Value;
end);
Toggles.bslltotrt:OnChanged(function()
	y.spinbotgangy = Toggles.bslltotrt.Value;
end);
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if y.spinbotgangy == true then
			task.wait();
			local OM = game.Players.LocalPlayer;
			local tM = Speed or math.random(30, 90);
			OM.Character.HumanoidRootPart.CFrame = CFrame.new(OM.Character.HumanoidRootPart.CFrame.Position) * CFrame.Angles(0, math.rad(y.spinbotangle) + math.rad((math.random(1, 2) == 1 and tM or -tM)), 0);
		end;
	end);
end);
HN:AddToggle("Body", {
	Text = "Body Chams"
}):AddColorPicker("chamthingg", {
	Default = Color3.fromRGB(233, 203, 255),
	Title = "Some color"
});
Options.chamthingg:OnChanged(function()
	H.Color = Options.chamthingg.Value;
end);
BulletTracers = true;
HN:AddToggle("cln", {
	Text = "Highlight Chams"
}):AddColorPicker('fuckvhaa', {
	Default = Color3.fromRGB(0, 255, 140)
}):AddColorPicker('vhafhck', {
	Default = Color3.fromRGB(0, 255, 140)
});
Options.fuckvhaa:OnChanged(function()
	mN.FillColor = Options.fuckvhaa.Value;
end);
Options.vhafhck:OnChanged(function()
	mN.OutlineColor = Options.vhafhck.Value;
end);
HN:AddLabel('Highlight Colors');
VN:AddToggle("raonbiwo", {
	Text = "Rainbow Body Chams"
});
VN:AddSlider("raib", {
	Text = "Rainbow Chams Speed Value",
	Default = 3,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Compact = false
});
Options.raib:OnChanged(function()
	H.chamspeed = Options.raib.Value;
end);
VN:AddToggle("rnbnb", {
	Text = "Rainbow Highlight Chams"
});
b.Stepped:connect(function()
	if Toggles.rnbnb.Value then
		mN.FillColor = Color3.fromHSV(tick() % H.highlightspeed / H.highlightspeed, 1, 1);
		mN.OutlineColor = Color3.fromHSV(tick() % H.highlightspeed / H.highlightspeed, 1, 1);
	end;
end);
VN:AddSlider("brai", {
	Text = "Rainbow Highlight Speed Value",
	Default = 3,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Compact = false
});
Options.brai:OnChanged(function()
	H.highlightspeed = Options.brai.Value;
end);
VN:AddToggle("Rainbowworld", {
	Text = "Rainbow World Ambience"
});
VN:AddSlider("ddddaaaffgggg", {
	Text = "Rainbow Ambience Speed Value",
	Default = 3,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Compact = false
});
Options.ddddaaaffgggg:OnChanged(function()
	H.ambiencespeed = Options.ddddaaaffgggg.Value;
end);
local a = {
	['UI Settings'] = V:AddTab('UI Settings')
};
local N_ = a['UI Settings']:AddLeftGroupbox('Menu');
local F_ = a['UI Settings']:AddRightGroupbox('Menu');
F:SetWatermark("shezan.cc | rewrite > paid build | v1.1.0");
F.KeybindFrame.Visible = false;
N_:AddButton('Unload', function()
	F:Unload();
end);
N_:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', {
	Default = 'RightShift',
	NoUI = true,
	Text = 'Menu keybind'
});
F_:AddToggle("Rainbow", {
	Text = "Rainbow Accent Color"
});
F_:AddToggle("Keybinds", {
	Text = "Show Keybinds Menu",
	Default = true
}):OnChanged(function()
	F.KeybindFrame.Visible = Toggles.Keybinds.Value;
end);
F_:AddToggle("Watermark", {
	Text = "Show Watermark",
	Default = true
}):OnChanged(function()
	F:SetWatermarkVisibility(Toggles.Watermark.Value);
end);
F.ToggleKeybind = Options.MenuKeybind;
o:SetLibrary(F);
z:SetLibrary(F);
z:IgnoreThemeSettings();
z:SetIgnoreIndexes({
	'MenuKeybind'
});
o:SetFolder('MyScriptHub');
z:SetFolder('MyScriptHub/specific-game');
z:BuildConfigSection(a['UI Settings']);
o:ApplyToTab(a['UI Settings']);
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if y.TracersOptions == "Character" then
			if L ~= nil and y.TracersEnabled and getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and L.Character.Humanoid.health > 0 then
				local iM, lM = workspace:FindPartOnRayWithIgnoreList(Ray.new(L.Character[getgenv().Aiming.Target.Part].Position, L.Character[getgenv().Aiming.Target.Part].CFrame.LookVector * 1), {
					T,
					L.Character
				}, false, true, "");
				local tM, dM = T:WorldToViewportPoint(lM);
				local rM = T:WorldToViewportPoint(L.Character[getgenv().Aiming.Target.Part].Position + (L.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100));
				local qM, EM = workspace:FindPartOnRayWithIgnoreList(Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 1), {
					T,
					game.Players.LocalPlayer.Character
				}, false, true, "");
				local oM, xM = T:WorldToViewportPoint(lM);
				local vM = T:WorldToViewportPoint(game.Players.LocalPlayer.Character.LowerTorso.Position + (game.Players.LocalPlayer.Character.LowerTorso.Velocity * 0.007));
				i.To = Vector2.new(rM.X, rM.Y);
				i.From = Vector2.new(vM.X, vM.Y);
				local OM = L.Character.HumanoidRootPart.Position;
				local SM, VM = T:WorldToScreenPoint(OM);
				if VM then
					i.Visible = true;
				else
					i.Visible = false;
				end;
				if y.Raingaybow == true then
				else
					i.Color = _G.FUCKYUN;
				end;
			else
				i.Visible = false;
			end;
		elseif y.TracersOptions == "Mouse" then
			if L ~= nil and y.TracersEnabled and getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and L.Character.Humanoid.health > 0 then
				idx = 10;
				local f7, q7 = workspace:FindPartOnRayWithIgnoreList(Ray.new(L.Character[getgenv().Aiming.Target.Part].Position, L.Character[getgenv().Aiming.Target.Part].CFrame.LookVector * idx), {
					T,
					L.Character
				}, false, true, "");
				local u7, s7 = T:WorldToViewportPoint(q7);
				local a7 = T:WorldToViewportPoint(L.Character[getgenv().Aiming.Target.Part].Position + (L.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100));
				i.To = Vector2.new(a7.X, a7.Y);
				i.From = Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y + 35);
				i.Visible = true;
				if y.Raingaybow == true then
				else
					i.Color = _G.FUCKYUN;
				end;
			else
				i.Visible = false;
			end;
		end;
	end);
end);
getgenv().xdstrafekey = Enum.KeyCode.Q;
local C_ = game:GetService('CoreGui');
O.InputBegan:Connect(function(BM, bM)
	if (not bM) then
		if (BM.KeyCode == getgenv().xdstrafekey) then
			if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and E_.targetstwafeuwu == true then
				spawn(function()
					repeat
						task.wait();
						for Lx = 0, 360, E_.speed do
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(L.Character.HumanoidRootPart.Position) * CFrame.Angles(0, math.rad(Lx), 0) * CFrame.new(E_.distance, E_.xposition, R_.zposition);
							task.wait();
						end;
					until L.Character.Humanoid.health < 1 or getgenv().Aiming.Target.Enabled == false or E_.targetstwafeuwu == false;
				end);
			end;
		end;
	end;
end);
game:GetService("RunService").Heartbeat:Connect(function()
	if Toggles.cln.Value then
		mN.Adornee = R.Character;
	else
		mN.Adornee = nil;
	end;
	if Toggles.Anti1.Value and S_.LOL == "Underground" then
		task.wait();
		local ex = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity;
		game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(ex.X, r_.vel, ex.Z);
		game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(ex.X, ex.Y, ex.Z);
		game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(ex.X, r_.vel, ex.Z);
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = r_.hip;
	elseif Toggles.Anti1.Value == false then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2;
	end;
	if Toggles.Speedster.Value then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * v_.Speed;
	end;
	if Toggles.CFrameSpeedToggle.Value and S_.cframeoptions == "Blatant" then
		local Vq = Options.Keypickersanic:GetState();
		if Vq then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * S_.CFramespedamout;
		end;
	end;
	if Toggles.CFrameSpeedToggle.Value and S_.cframeoptions == "Legit" then
		local DT = Options.Keypickersanic:GetState();
		if DT then
			local Rs = plr.Character;
			Rs.HumanoidRootPart.Velocity = Rs.HumanoidRootPart.CFrame.lookVector * 190;
		end;
	end;
	if Toggles.Body.Value then
		game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField";
		game.Players.LocalPlayer.Character.RightHand.Material = "ForceField";
		game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField";
		game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField";
		game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField";
		game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField";
		game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField";
		game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField";
		game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField";
		game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField";
		game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField";
		game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField";
		game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField";
		game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField";
		game.Players.LocalPlayer.Character.Head.Material = "ForceField";
		R.Character.LeftHand.Color = H.Color;
		R.Character.RightHand.Color = H.Color;
		R.Character.LeftLowerArm.Color = H.Color;
		R.Character.RightLowerArm.Color = H.Color;
		R.Character.LeftUpperArm.Color = H.Color;
		R.Character.RightUpperArm.Color = H.Color;
		R.Character.LeftFoot.Color = H.Color;
		R.Character.RightFoot.Color = H.Color;
		R.Character.LeftLowerLeg.Color = H.Color;
		R.Character.RightLowerLeg.Color = H.Color;
		R.Character.UpperTorso.Color = H.Color;
		R.Character.LowerTorso.Color = H.Color;
		R.Character.LeftUpperLeg.Color = H.Color;
		R.Character.RightUpperLeg.Color = H.Color;
		R.Character.Head.Color = H.Color;
	else
		game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic";
		game.Players.LocalPlayer.Character.RightHand.Material = "Plastic";
		game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic";
		game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic";
		game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic";
		game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic";
		game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic";
		game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic";
		game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic";
		game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic";
		game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic";
		game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic";
		game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic";
		game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic";
		game.Players.LocalPlayer.Character.Head.Material = "Plastic";
	end;
	if Toggles.Body.Value and Toggles.raonbiwo.Value then
		R.Character.LeftHand.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.RightHand.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.LeftLowerArm.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.RightLowerArm.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.LeftUpperArm.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.RightUpperArm.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.LeftFoot.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.RightFoot.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.LeftLowerLeg.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.RightLowerLeg.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.UpperTorso.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.LowerTorso.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.LeftUpperLeg.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.RightUpperLeg.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
		R.Character.Head.Color = Color3.fromHSV(tick() % H.chamspeed / H.chamspeed, 1, 1);
	end;
	if Toggles.World.Value then
		game:GetService("Lighting").ColorCorrection.TintColor = H.Worldc;
	else
		if Toggles.Rainbowworld.Value then
			game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromHSV(tick() % H.ambiencespeed / H.ambiencespeed, 1, 1);
		else
			game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255);
		end;
	end;
	if Toggles.st1.Value then
		game:GetService("Lighting").ColorCorrection.Saturation = H.Saturation1;
	else
		game:GetService("Lighting").ColorCorrection.Saturation = 0;
	end;
	if Toggles.st12.Value then
		game:GetService("Lighting").ColorCorrection.Contrast = H.Contrast1;
	else
		game:GetService("Lighting").ColorCorrection.Contrast = 0;
	end;
	if Toggles.st123.Value then
		game:GetService("Lighting").ColorCorrection.Brightness = H.Brightness1;
	else
		game:GetService("Lighting").ColorCorrection.Brightness = 0;
	end;
	if Toggles.Reloads.Value then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
					game:GetService('ReplicatedStorage').MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"));
				end;
			end;
		end;
	end;
	if Toggles.Stomps.Value then
		if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
			for IE, CE in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if CE:IsA("BasePart") then
					CE:Destroy();
				end;
			end;
		end;
	end;
	if Toggles.Slowdownlol.Value then
		local Nw = game.Players.LocalPlayer;
		local ww = Nw.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or Nw.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or Nw.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed");
		if ww then
			ww:Destroy();
		end;
		if Nw.Character.BodyEffects.Reload.Value == true then
			Nw.Character.BodyEffects.Reload.Value = false;
		end;
	end;
	if Toggles.AutoStomp.Value then
		game:GetService('ReplicatedStorage').MainEvent:FireServer("Stomp");
		wait(0.2);
	end;
end);
game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and Toggles.lolxdniggaballs.Value then
		fN.Adornee = L.Character;
	else
		fN.Adornee = nil;
	end;
	if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and Toggles.loooool.Value then
		L.Character.Head.Material = "ForceField";
		L.Character.LeftHand.Material = "ForceField";
		L.Character.RightHand.Material = "ForceField";
		L.Character.LeftLowerArm.Material = "ForceField";
		L.Character.RightLowerArm.Material = "ForceField";
		L.Character.LeftUpperArm.Material = "ForceField";
		L.Character.RightUpperArm.Material = "ForceField";
		L.Character.LeftFoot.Material = "ForceField";
		L.Character.RightFoot.Material = "ForceField";
		L.Character.LeftLowerLeg.Material = "ForceField";
		L.Character.RightLowerLeg.Material = "ForceField";
		L.Character.UpperTorso.Material = "ForceField";
		L.Character.LowerTorso.Material = "ForceField";
		L.Character.LeftUpperLeg.Material = "ForceField";
		L.Character.RightUpperLeg.Material = "ForceField";
	else
		L.Character.Head.Material = "Plastic";
		L.Character.LeftHand.Material = "Plastic";
		L.Character.RightHand.Material = "Plastic";
		L.Character.LeftLowerArm.Material = "Plastic";
		L.Character.RightLowerArm.Material = "Plastic";
		L.Character.LeftUpperArm.Material = "Plastic";
		L.Character.RightUpperArm.Material = "Plastic";
		L.Character.LeftFoot.Material = "Plastic";
		L.Character.RightFoot.Material = "Plastic";
		L.Character.LeftLowerLeg.Material = "Plastic";
		L.Character.RightLowerLeg.Material = "Plastic";
		L.Character.UpperTorso.Material = "Plastic";
		L.Character.LowerTorso.Material = "Plastic";
		L.Character.LeftUpperLeg.Material = "Plastic";
		L.Character.RightUpperLeg.Material = "Plastic";
	end;
	if getgenv().Aiming.Target.Enabled and L.Character and L.Character:FindFirstChild("LowerTorso") and Toggles.loooool.Value and Toggles.xdlolll.Value then
		L.Character.LeftHand.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.RightHand.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.LeftLowerArm.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.RightLowerArm.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.LeftUpperArm.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.RightUpperArm.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.LeftFoot.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.RightFoot.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.LeftLowerLeg.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.RightLowerLeg.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.UpperTorso.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.LowerTorso.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.LeftUpperLeg.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.RightUpperLeg.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
		L.Character.Head.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
	end;
	if Toggles.togglemy2.Value then
		g.Color = Color3.fromHSV(tick() % H.deesp / H.deesp, 1, 1);
	end;
end);
spawn(function()
	while task.wait() do
		if Toggles.un1.Value then
			while Toggles.un1.Value do
				local oR = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity;
				local oR = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity;
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(-2.0, 15, -2.0);
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oR.X, oR.Y, oR.Z);
				task.wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(2, 30, 2);
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oR.X, -140.0, oR.Z);
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.8674;
				task.wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oR.X, 700, oR.Z);
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oR.X, -140.0, 140);
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oR.X, -2.6969E55, 140);
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oR.X, oR.Y, oR.Z);
			end;
		end;
	end;
end);
task.spawn(function()
	while game:GetService("RunService").RenderStepped:Wait() do
		if Toggles.Rainbow.Value == true then
			local Ep = V.Holder.Visible and F.Registry or F.HudRegistry;
			for h1, K1 in next, Ep do
				for ja, Fa in next, K1.Properties do
					if Fa == "AccentColor" or Fa == "AccentColorDark" then
						local In = K1.Instance;
						local An = In.AbsolutePosition.Y;
						local en = F:MapValue(An, 0, 1080, 0, 0.3) / 0.45;
						local bn = Color3.fromHSV((F.CurrentRainbowHue - en) % 1, 0.59, 1);
						if Fa == "AccentColorDark" then
							bn = F:GetDarkerColor(bn);
						end;
						In[ja] = bn;
					end;
				end;
			end;
		end;
	end;
end);
Toggles.Rainbow:OnChanged(function()
	if not Toggles.Rainbow.Value then
		UpdateTheme();
	end;
end);
