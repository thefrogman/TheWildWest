wait(5)
local success, response = pcall(function()
	getgenv().queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/thefrogman/TheWildWest/main/BronzeAutoMiner.lua'))()")
end)
print("Fluxus Launche: "..tostring(success),response)
local success, response = pcall(function()
	syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/thefrogman/TheWildWest/main/BronzeAutoMiner.lua'))()")
end)
print("Synapse X Launche: "..tostring(success),response)
if not _G.WalkSpeed then
    _G.WalkSpeed = 29
end
if not _G.MineTime then
    _G.MineTime = 2.5
end
local Player = game.Players.LocalPlayer
local PlateTransparency = 1
_G.MineralPosition = {
    -- Cooper --
    "1117.42, 5.13056, -1225.29",
    "1154.42, -0.836415, -1226.05",
    "1224.84, -0.406448, -1183.26",
    "1227.42, -0.45616, -1214.97",
    "1252.61, 0.305505, -1225.75",
    "1261.18, -0.403152, -1178.91",
    "1272.94, -6.03963, -1150.75",
    "1273.89, -9.28459, -1126.57",
    "1309.32, -34.2419, -1062.73",
    "1260.96, -26.2022, -1051.39",
    "1248.22, -17.6943, -1082.51",
    "1192.88, -10.8597, -1078.7",
    -- Zink --
    --"1201.92, -9.31547, -1135.27",
    --"1226.2, -14.1317, -1087.75",
    -- Cooper --
    "1170.99, -10.2015, -1080.18",
    "1209.74, -11.6984, -1119.93",
    "1213.55, -8.01569, -1144.49",
    "1179.2, -7.97382, -1145.87",
    "1170.33, -2.00541, -1176.47",
}

local RunService = game:GetService("RunService")
while game.Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingGate") do wait() end
game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer("Bronze")

Player.Character.Humanoid.Changed:Connect(function()
	if Player.Character:FindFirstChild("Humanoid") then
		Player.Character.Humanoid.WalkSpeed = _G.WalkSpeed
	end
end)

i = 1

-- Function --
local function InfoPopup(Title,Description)
    if not game.Players.LocalPlayer.PlayerGui.ConfirmPopup:FindFirstChild(Title) then
        game.Players.LocalPlayer.PlayerGui.ConfirmPopup.Enabled = true
        local Popup = game.Players.LocalPlayer.PlayerGui.ConfirmPopup.ConfirmPopup:Clone()
        Popup.Parent = game.Players.LocalPlayer.PlayerGui.ConfirmPopup
        Popup.Name = Title
        Popup.Container.TopBar.Header.TopTitleText.Text = Title
        Popup.Container.Body.Page.Contents.BodyText.Text = tostring(Description)
        Popup.Container.Body.Page.AcceptButton.MouseButton1Down:Connect(function()
            game.Players.LocalPlayer.PlayerGui.ConfirmPopup.Enabled = false
            Popup:Destroy()
        end)
        Popup.Visible = true
    else
        Popup.Container.Body.Page.Contents.BodyText.Text = tostring(Description)
    end
end

local function PressKey(Key,Time)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Key,false,game)
    wait(Time)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Key,false,game)
end

local function movetofunc(EndPosition)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Y,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Y,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Nine,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Nine,false,game)

    local PathfindingService = game:GetService("PathfindingService")
    local human = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    local torso = game.Players.LocalPlayer.Character:WaitForChild("LowerTorso")
    
    local path = PathfindingService:CreatePath { 
        --AgentRadius = 2,
        --AgentHeight = 2.25,
        AgentCanClimb = true,
        AgentCanJump = true,
    }
    
    path:ComputeAsync(torso.Position, EndPosition)
    local waypoints = path:GetWaypoints()
    
    for i, waypoint in pairs(waypoints) do
        if waypoint.Action == Enum.PathWaypointAction.Jump then
            human:ChangeState(Enum.HumanoidStateType.Jumping)
        end
        human:MoveTo(waypoint.Position)
        human.MoveToFinished:Wait()
    end
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Y,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Y,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Nine,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Nine,false,game)
end

local function thisisfull()
    return game.Players.LocalPlayer.PlayerGui.InventoryUI.Inventory.Container.BottomBar.Body.NumSlots.Text == "30 / 30"
end

local function OreRemaining()
    local Closest
    local PlayerPosition = game.Players.LocalPlayer.Character.PrimaryPart.Position
    
    for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do
        if string.match(v.Name, "Base") then
            if Closest == nil then
                Closest = v
            else
                if (PlayerPosition - v.Position).magnitude < (Closest.Position - PlayerPosition).magnitude then
                    Closest = v
                end
            end
        end
    end
    return Closest
end

-- Security Part --
local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Size = Vector3.new(125, 1, 75)
Platforme.Position = Vector3.new(1149.29, -4, -1210.1)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Size = Vector3.new(100, 1, 75)
Platforme.Position = Vector3.new(1175, -17.392, -1110)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Size = Vector3.new(40, 1, 45)
Platforme.Rotation = Vector3.new(20, 0, 0)
Platforme.Position = Vector3.new(1190.29, -12, -1152.1)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Size = Vector3.new(5, 25, 5)
Platforme.Position = Vector3.new(1273.45, 8.29245, -1142.2)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Size = Vector3.new(5, 25, 5)
Platforme.Position = Vector3.new(1254.01, 10.0479, -1178.42)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Color = Color3.fromRGB(106, 165, 102)
Platforme.Size = Vector3.new(26, 0.5, 15)
Platforme.Rotation = Vector3.new(20, 0, 0)
Platforme.Position = Vector3.new(1189.79, -12.321, -1149.025)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Color = Color3.fromRGB(106, 165, 102)
Platforme.Size = Vector3.new(12.75, 3.25, 27.25)
Platforme.Position = Vector3.new(1215.885, -11.327, -1138.045)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Color = Color3.fromRGB(106, 165, 102)
Platforme.Size = Vector3.new(21, 15, 2)
Platforme.Rotation = Vector3.new(0, 43.998, 0)
Platforme.Position = Vector3.new(666.105, 41.6, -805.43)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Color = Color3.fromRGB(106, 165, 102)
Platforme.Size = Vector3.new(7.588, 14, 1)
Platforme.Rotation = Vector3.new(0, 178.999, 0)
Platforme.Position = Vector3.new(644.039, 43.1, -838.634)
Platforme.Parent = game.Workspace

local Platforme = Instance.new("Part")
Platforme.Transparency = PlateTransparency
Platforme.Anchored = true
Platforme.Material = "ForceField"
Platforme.Color = Color3.fromRGB(106, 165, 102)
Platforme.Size = Vector3.new(26.673, 1, 5.377)
Platforme.Rotation = Vector3.new(36.601, -48.058, 0)
Platforme.Position = Vector3.new(652.687, 37.374, -813.69)
Platforme.Parent = game.Workspace

-- Remove Shop Doors --
for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Geometry"]["REGION_Plains"]["Bronze City"].Buildings.NewGeneralStore:GetChildren()) do
    if v.Name == "Door" then
        for i,v in pairs(v:GetDescendants()) do
            if v:IsA("Part") then
                local PathfindingModifier = Instance.new("PathfindingModifier")
                PathfindingModifier.Parent = v
                PathfindingModifier.PassThrough = true
                if v.Name == "Part" or v.Name == "Primary" then
                    if v.Color ~= Color3.fromRGB(80, 67, 60) then
                        v.CanCollide = false
                    else
                        v.CanCollide = true
                    end
                end
            end
        end
    end
end

-- Size Of Mineral --
for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do
    if v:IsA("MeshPart") then
		v.Size = Vector3.new(10.16136, 10.53925, 12.97672)
		v.CanCollide = false
	end
end

local function Hop()
    wait(1)

    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2317712696/servers/Public?sortOrder=Asc&limit=100"))

    local Selected_Server = Servers.data[math.random(1,#Servers.data)]
    repeat until Selected_Server.playing ~= Selected_Server.maxPlayers

    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, Selected_Server.id)
end

game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and child.MessageArea:FindFirstChild("ErrorFrame") then
        Hop()
    end
end)

local UserInputService = game:GetService("UserInputService")

-- Mining Stats --
local MoneyEarned = 0
local OreDepositsDestroy = 0

local OldMoney = 0
local ActualMoney = 0

local t = tick()

local function Timer(Type)
    local diff = tick() - t
    if Type == "h" then
        return math.floor((diff / 60) / 60) %60
    elseif Type == "m" then
        return math.floor(diff / 60) %60
    elseif Type == "s" then
        return math.floor(diff % 60)
    end
end

-- Key Detector --
UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Return then
	    Hop()
	end
    if input.KeyCode == Enum.KeyCode.F then
        oldtoping=_G.toping
        _G.toping = _G.DiscordName
		OldMoney = string.gsub(game.Players.LocalPlayer.PlayerGui.PlayerInfo.StatBars.PlayerDataFrame.Bucks.Text:sub(2), ",", "")
        wait(0.75)
        Money = string.gsub(game.Players.LocalPlayer.PlayerGui.PlayerInfo.StatBars.PlayerDataFrame.Bucks.Text:sub(2), ",", "")
        _G.toping = oldtoping
	end
    if input.KeyCode == Enum.KeyCode.F1 then
        InfoPopup("Mining Stats",string.format("You have mined in total: %d.\nYou are in this server since: %dh %dm %ds.\nYou have earned a total of: %d$.\n",OreDepositsDestroy,Timer("h"),Timer("m"),Timer("s"),MoneyEarned))
	end
end)

RunService.Heartbeat:Connect(function()
    if game.Players.LocalPlayer.PlayerGui.Prompts.ActionBindsFeed.Respawn.Visible then
        Hop()
    end
    if game.Players.LocalPlayer.PlayerGui.Hotbar.HotBar.Container.HotbarList.Body["HotbarSlot_Utility_1"].Container.Slot["Stroke_3px"].ImageColor3 ~= Color3.fromRGB(255,255,255) then
        PressKey(Enum.KeyCode.Four,0)
    end
    if not game.Players.LocalPlayer.PlayerGui.InventoryUI.Enabled then
        PressKey(Enum.KeyCode.B,0)
    end
    if game.Players.LocalPlayer.PlayerGui.Prompts.ActionBindsFeed.GetUp.Visible then
        PressKey(Enum.KeyCode.E,0)
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Prompts.ActionBindsFeed.BreakFree.Visible then
        Hop()
    end
end)

-- Take Pickaxe --
PressKey(Enum.KeyCode.E,0)

-- Open Inventory --
PressKey(Enum.KeyCode.B,0)

-- Shop GUI + Move --
movetofunc(Vector3.new(654.389, 39.6504, -812.504))

movetofunc(Vector3.new(663.539, 42.2776, -945.427))

movetofunc(Vector3.new(738.938, 2.43074, -1119.45))

-- Mining System + Move --

while wait() do
    if thisisfull() then
        movetofunc(Vector3.new(1114.7, 0.0503915, -1226.24))
        movetofunc(Vector3.new(663.539, 42.2776, -945.427))
        movetofunc(Vector3.new(678.886, 39.2537, -901.273))
        movetofunc(Vector3.new(654.389, 39.6504, -812.504))
        repeat
            OldMoney = string.gsub(game.Players.LocalPlayer.PlayerGui.PlayerInfo.StatBars.PlayerDataFrame.Bucks.Text:sub(2), ",", "")
            PressKey(Enum.KeyCode.F,1)
            ActualMoney = string.gsub(game.Players.LocalPlayer.PlayerGui.PlayerInfo.StatBars.PlayerDataFrame.Bucks.Text:sub(2), ",", "")
        until not thisisfull()
        MoneyEarned += Money - OldMoney
        movetofunc(Vector3.new(663.539, 42.2776, -945.427))
        movetofunc(Vector3.new(738.938, 2.43074, -1119.45))
        i = 1
    else
        movetofunc(_G.MineralPosition[i])
        if OreRemaining().Parent.DepositInfo.OreRemaining.Value ~= 0 then
            for v = 1, OreRemaining().Parent.DepositInfo.OreRemaining.Value do
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
                wait(_G.MineTime)
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
                OreDepositsDestroy += 1
            end
        end
        i += 1
        if i == #_G.MineralPosition then
            i = 1
        end
    end
end
