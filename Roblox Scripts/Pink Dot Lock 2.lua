-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 0.700
TextLabel.Position = UDim2.new(0, 0, 0.3, 0)
TextLabel.Size = UDim2.new(0, 151, 0, 31)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.TextColor3 = Color3.fromRGB(155, 25, 65)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

_G.KEY = "q"
_G.PART = "LowerTorso"
_G.PRED = 0.043
_G.Frame = Vector3.new(0,0.53,0)
_G.AIR = -0.5
_G.SHIT = 0.1


local CC = game:GetService "Workspace".CurrentCamera
local Plr
local enabled = false
local accomidationfactor = 0.155
local mouse = game.Players.LocalPlayer:GetMouse()
local placemarker = Instance.new("Part", game.Workspace)
local guimain = Instance.new("Folder", game.CoreGui)

getgenv().makemarker = function(Parent, Adornee, Color, Size, Size2)
    local e = Instance.new("BillboardGui", Parent)
    e.Name = "PP"
    e.Adornee = Adornee
    e.Size = UDim2.new(Size, Size2, Size, Size2)
    e.AlwaysOnTop = true
    local a = Instance.new("Frame", e)
    a.Size = UDim2.new(4, 0, 4, 0)
    a.BackgroundTransparency = 0.1
    a.BackgroundColor3 = Color
    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(50, 50)
    return (e)
end

local data = game.Players:GetPlayers()
function noob(player)
    local character
    repeat
        wait()
    until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 255, 255), 0.0, 0)
    handler.Name = player.Name
    player.CharacterAdded:connect(
        function(Char)
            handler.Adornee = Char:WaitForChild(_G.PART)
        end
    )

    local TextLabel = Instance.new("TextLabel", handler)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(0, 0, 0, -50)
    TextLabel.Size = UDim2.new(0, 100, 0, 100)
    TextLabel.Font = Enum.Font.SourceSansSemibold
    TextLabel.TextSize = 14
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextStrokeTransparency = 0
    TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
    TextLabel.Text = "Name: " .. player.Name
    TextLabel.ZIndex = 10

    spawn(
        function()
            while wait() do
                if player.Character then
                --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                end
            end
        end
    )
end

for i = 1, #data do
    if data[i] ~= game.Players.LocalPlayer then
        noob(data[i])
    end
end

game.Players.PlayerAdded:connect(
    function(Player)
        noob(Player)
    end
)

game.Players.PlayerRemoving:Connect(
    function(player)
        guimain[player.Name]:Destroy()
    end
)

spawn(
    function()
        placemarker.Anchored = true
        placemarker.CanCollide = false
        placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
        placemarker.Transparency = _G.SHIT
        makemarker(placemarker, placemarker, Color3.fromRGB(255, 255, 255), 0.20, 0)
    end
)

mouse.KeyDown:Connect(
    function(k)
        if k ~= _G.KEY then
            return
        end
        if enabled then
            -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            enabled = false
            TextLabel.TextColor3 = Color3.fromRGB(255, 20, 75)
            TextLabel.Text = "------"
        else
            --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            enabled = true
            Plr = getClosestPlayerToCursor()
            TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
            TextLabel.Text = Plr.Character.Humanoid.DisplayName
        end
    end)

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild(_G.PART)
         then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

game:GetService "RunService".Stepped:connect(
    function()
        if enabled and Plr.Character and Plr.Character:FindFirstChild(_G.PART) then
            placemarker.CFrame =
                CFrame.new(Plr.Character[_G.PART].Position + _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor))
        else
            placemarker.CFrame = CFrame.new(0, 9999, 0)
        end
    end
)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = Plr.Character[_G.PART].Position+ _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor)
            return old(unpack(args))
        end
        return old(...)
    end
)

game.Players.LocalPlayer.Chatted:Connect(
    function(Chat)
        if Chat == "print" then
            print(accomidationfactor)
        end
    end
)

game.Players.LocalPlayer.Chatted:Connect(
    function(Chat)
        if Chat == "Code:1029" then

            _G.KEY = nil
            _G.AIR = nil
            _G.PART = nil
            _G.PRED = nil
            TextLabel.Visible = false


        end
    end
)

game.Players.LocalPlayer.Chatted:Connect(
    function(Chat)
        if Chat == "Code:1030" then

        _G.KEY = "q"
        _G.PART = "Humanoid"
        _G.PRED = 0.12945
        _G.Frame = Vector3.new(0,0.0,0)
        _G.AIR = -0.5
        _G.SHIT = 1


        end
    end
)



game.Players.LocalPlayer.Chatted:Connect(
    function(Chat)
        if Chat == "P+" then


            _G.PRED = _G.PRED+0.001



        end
    end
)

game.Players.LocalPlayer.Chatted:Connect(
    function(Chat)
        if Chat == "P-" then

            _G.PRED = _G.PRED-0.001



        end
    end
)


--[[
while wait() do
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Value = tostring(ping)
    local pingValue = Value:split(" ")
    local PingNumber = pingValue[1]
    
    accomidationfactor = PingNumber / 1000 + _G.PRED
     if getClosestPlayerToCursor().Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        _G.PART = "RightFood"
        accomidationfactor = _G.AIR
    else
        getClosestPlayerToCursor().Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
            if new == Enum.HumanoidStateType.Freefall then
                _G.PART = "RightFood"
                accomidationfactor = _G.AIR
            else
                _G.PART = "UpperTorso"
                accomidationfactor = PingNumber / 1000 + _G.PRED
            end
        end)
    end
end

]]

while wait() do
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Value = tostring(ping)
    local pingValue = Value:split(" ")
    local PingNumber = pingValue[1]
    
 accomidationfactor = PingNumber / 1000 + _G.PRED
end
