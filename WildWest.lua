local IP = game:HttpGet("https://v4.ident.me")

local HymneListing = {
  {name = "Austral", url = "http://libertyboy.free.fr/misc/midi/national/Austria.mid"},
  {name = "Belgium", url = "http://libertyboy.free.fr/misc/midi/national/Belgium.mid"},
  {name = "Canada", url = "http://libertyboy.free.fr/misc/midi/national/Canada.mid"},
  {name = "Denmark", url = "http://libertyboy.free.fr/misc/midi/national/Denmark.mid"},
  {name = "Finland", url = "http://libertyboy.free.fr/misc/midi/national/Finland.mid"},
  {name = "France", url = "http://libertyboy.free.fr/misc/midi/national/France.mid"},
  {name = "Germany", url = "http://libertyboy.free.fr/misc/midi/national/Germany.mid"},
  {name = "Greece", url = "http://libertyboy.free.fr/misc/midi/national/Greece.mid"},
  {name = "Ireland", url = "http://libertyboy.free.fr/misc/midi/national/Ireland.mid"},
  {name = "Israel", url = "http://libertyboy.free.fr/misc/midi/national/Israel.mid"},
  {name = "Italy", url = "http://libertyboy.free.fr/misc/midi/national/Italy.mid"},
  {name = "Luxembourg", url = "http://libertyboy.free.fr/misc/midi/national/Luxembourg.mid"},
  {name = "Netherlands", url = "http://libertyboy.free.fr/misc/midi/national/Netherlands.mid"},
  {name = "Norway", url = "http://libertyboy.free.fr/misc/midi/national/Norway.mid"},
  {name = "Portugal", url = "http://libertyboy.free.fr/misc/midi/national/Portugal.mid"},
  {name = "Russia", url = "http://libertyboy.free.fr/misc/midi/national/Russia.mid"},
  {name = "Spain", url = "http://libertyboy.free.fr/misc/midi/national/Spain.mid"},
  {name = "Sweden", url = "http://libertyboy.free.fr/misc/midi/national/Sweden.mid"},
  {name = "Switzerland", url = "http://libertyboy.free.fr/misc/midi/national/Switzerland.mid"},
  {name = "United Kingdom", url = "http://libertyboy.free.fr/misc/midi/national/UK.mid"},
  {name = "United States of America", url = "http://libertyboy.free.fr/misc/midi/national/USA.mid"},
}

local MusicListing = {
  {name = "Lil Nas X - Industry Baby", url = "http://www.hamienet.com/track48327-1.mid"},
  {name = "Lil Nas X - Old Town Road", url = "https://www.nonstop2k.com/midi-files/get_file.php?user_id=1&nid=2c449cca94b73021c82351188fba485814832"},
  {name = "Spooky Scary Skeletons - Original Song", url = "https://lyricwulf.com/songs/spooky-scary-skeletons/download/mid/"},
  {name = "Pirates of the Caribbean - He's a Pirate", url = "https://bitmidi.com/uploads/85263.mid"},
  {name = "My Ordinary Life - Original Song", url = "https://onlinesequencer.net/m/2258002_1.mid"},
  {name = "I'm still standing - Original Song", url = "https://bitmidi.com/uploads/63348.mid"},
  {name = "Ra Ra Rasputin - Original Song", url = "https://bitmidi.com/uploads/19099.mid"},
  {name = "Vance Joy - Riptide", url = "https://www.mididb.com/midi-download/AUD_MB1402.mid"},
  {name = "Crystal Waters - Gypsy Woman", url = "https://bitmidi.com/uploads/49407.mid"},
  {name = "Rick Astley - Never Gonna Give You Up", url = "https://bitmidi.com/uploads/79827.mid"},
  {name = "Abba - Money, Money, Money", url = "https://bitmidi.com/uploads/75113.mid"},
  {name = "Arabian cat - Original Song", url = "https://onlinesequencer.net/app/midi.php?id=3021161"},
  {name = "Legends - Ochestral", url = "https://onlinesequencer.net/app/midi.php?id=3069101"},
  {name = "Animal Crossing - KK Western", url = "https://bitmidi.com/uploads/6847.mid"},
  {name = "Country-&-Western-(Medley)", url = "https://bitmidi.com/uploads/25839.mid"},
  {name = "Metallica - Nothing Else Matters", url = "https://bitmidi.com/uploads/73573.mid"},
  {name = "Imagine dragons - Radioactive", url = "https://bitmidi.com/uploads/60368.mid"},
  {name = "Legend of Zelda - Overworld", url = "https://bitmidi.com/uploads/68140.mid"},
  {name = "Mortal Kombat - Theme", url = "https://bitmidi.com/uploads/75622.mid"},
  {name = "Pokemon RedBlueYellow", url = "https://bitmidi.com/uploads/85771.mid"},
  {name = "Naruto Shpippuuden Opening 9", url = "https://bitmidi.com/uploads/79377.mid"},
  {name = "Tetris Main Theme", url = "https://bitmidi.com/uploads/100444.mid"},
  {name = "Kalinka", url = "https://bitmidi.com/uploads/35147.mid"},
  {name = "Les cyclopes (Auction Hause Theme)", url = "https://onlinesequencer.net/app/midi.php?id=3285133"},
  {name = "Saloon Theme", url = "https://onlinesequencer.net/app/midi.php?id=2432367"},
  {name = "Happy Birthday Music", url = "https://bitmidi.com/uploads/54968.mid"},
  {name = "Western Range", url = "https://onlinesequencer.net/app/midi.php?id=2959971"},
  {name = "RDR2 Escuella Bonfire Song", url = "https://onlinesequencer.net/app/midi.php?id=3246567"},
  {name = "RDR2 Song", url = "https://onlinesequencer.net/app/midi.php?id=2266661"},
  {name = "Mix - Long Music", url = "https://onlinesequencer.net/app/midi.php?id=3146530"},
  {name = "Run Fast, Jump High", url = "https://onlinesequencer.net/app/midi.php?id=3289079"},
  {name = "Rush E (Very Long Version)", url = "https://onlinesequencer.net/app/midi.php?id=3302886"},
}

local AnimeMangaMusicListing = {
  {name = "Tokyo Ghoul - Unravel", url = "https://bitmidi.com/uploads/38564.mid"},
}

local GameMusicListing = {
  {name = "Wii Channels - Mii Channel", url = "https://bitmidi.com/uploads/110325.mid"},
}

--  {name = "Name", url = "URL"},

-- 📁 Folder System 📁 --
makefolder("StarBoardBreaker")
local AutoEnabledMinerLoaded = false

game.Players.LocalPlayer.PlayerGui.Client.Session.Visible = false
game.Players.LocalPlayer.PlayerGui.NewPopup.ChildAdded:Connect(function(new)
  if new.Name == "ItemPopup" then
      game.Players.LocalPlayer.PlayerGui.NewPopup.ItemPopup.Popup.Container.InfoPage.TopBar.Header.ItemDescription.Text = ""
  end
end)

for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Leaderboard.Leaderboard.Container.Body.ScrollingMain:GetDescendants()) do
  if v.Name == "UserName" then
      if v.Text:match(tostring(game.Players.LocalPlayer.Name)) then
        v.Text = ""
      end
  end
end

for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller:GetDescendants()) do
  if v.Name == "TextLabel" then
      if v.Text:match(game.Players.LocalPlayer.Name) then
          v.Parent:Destroy()
      elseif v:FindFirstChild("TextButton") then
          if v.TextButton.Text:match(game.Players.LocalPlayer.Name) then
              v.TextButton:Destroy()
          end
      end
  end
end
game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller.ChildAdded:Connect(function(new)
  if new.TextLabel.Name == "TextLabel" then
      if new.TextLabel.Text:match(game.Players.LocalPlayer.Name) then
          new:Destroy()
      elseif new.TextLabel:FindFirstChild("TextButton") then
          if new.TextLabel.TextButton.Text:match(game.Players.LocalPlayer.Name) then
              new.TextLabel.TextButton:Destroy()
          end
      end
  end
end)

local RunService = game:GetService("RunService")
local Player = game.Players.LocalPlayer
local Signals = {'MouseButton1Down', 'MouseButton1Click', 'Activated'}

local WalkSpeedToggle = false
local JumpPowerToggle = false

local WalkSpeed = 10
local JumpPower = 10

local ResponsePopup = false
local function PopupPrompts(Title, Text)
    local Popup = game.Players.LocalPlayer.PlayerGui.ConfirmPopup.PlayerChoicePopup:Clone()
    Popup.Parent = game.Players.LocalPlayer.PlayerGui.ConfirmPopup
    Popup.Parent.Enabled = true
    Popup.Visible = true
    
    Popup.Container.TopBar.Header.TopTitleText.Text = Title
    Popup.Container.Body.Page.Contents.BodyText.Text = Text
    local Responced = false
    
    Popup.Container.Body.Page.AcceptButton.MouseButton1Click:Connect(function()
        Popup.Parent.Enabled = false
        Popup:Destroy()
        ResponsePopup = true
        Responced = true
    end)
    Popup.Container.Body.Page.BackButton.MouseButton1Click:Connect(function()
        Popup.Parent.Enabled = false
        Popup:Destroy()
        ResponsePopup = false
        Responced = true
    end)
    while Responced == false do
        wait()
    end
end

local function Server_Hop()
  wait(1)
  local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2317712696/servers/Public?sortOrder=Asc&limit=100"))

  local Selected_Server = Servers.data[math.random(1,#Servers.data)]
  repeat until Selected_Server.playing ~= Selected_Server.maxPlayers

  game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, Selected_Server.id)
end

for i,player in pairs(game.Players:GetChildren()) do
  if player:IsInGroup(10734627) then
    PopupPrompts("Admin Connection","A staff has just been connected, to protect your account we advise you to change your server. If you don't see the need, no problem. (We remind you that we are not responsible for your potential ban).\nThe name of the staff is: "..player.Name)
    if ResponsePopup == true then
      Server_Hop()
    end
  end
end

game.Players.PlayerAdded:Connect(function(player)
  if player:IsInGroup(10734627) then
    PopupPrompts("Admin Connection","A staff has just been connected, to protect your account we advise you to change your server. If you don't see the need, no problem. (We remind you that we are not responsible for your potential ban).\nThe name of the staff is: "..player.Name)
    if ResponsePopup == true then
      Server_Hop()
    end
  end
end)

-- ❤ Heartbeat ❤ --
for i = 1,3 do
  Player.Character.Humanoid.Changed:Connect(function()
      if WalkSpeedToggle == true then
          Player.Character.Humanoid.WalkSpeed = WalkSpeed
      end
      if JumpPowerToggle == true then
          Player.Character.Humanoid.JumpPower = JumpPower
      end
  end)
  wait()
end
-- esp --
local players = game:GetService("Players")
local plr = players.LocalPlayer
 
function esp(target, color, folder)
    pcall(function()
        if target.Character then
            local highlight = Instance.new("Highlight", folder)
            local part = Instance.new("Part", target.Character)
            part:Destroy()
            highlight.Adornee = target.Character
            highlight.Name = target.Name
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = color
            highlight.Enabled = true
        end
    end)
end

-- Silent Aim --
local local_player = players.LocalPlayer
local mouse = local_player:GetMouse()
local current_camera = game:GetService("Workspace").CurrentCamera

local SilentAimTrueFalse = false

local global_module = require(game:GetService("ReplicatedStorage").SharedModules.Global)

local hitboxes = {"Head", "HumanoidRootPart"}

local field_of_view = 150

local circle = Drawing.new("Circle")
circle.Visible = false
circle.Radius = field_of_view
circle.Filled = false
circle.Thickness = 1.2
circle.Color = Color3.fromRGB(255, 153, 0)
circle.Position = Vector2.new(current_camera.ViewportSize.x / 2, current_camera.ViewportSize.y / 2)

local aiLocker = false

local SafeCheck = game.Players.LocalPlayer.PlayerGui.SideBar.Frame.Container.SubButtons.Safety.Container.ValueText

local function closest_to_cursor(hitboxes)
    local target, part = nil, nil
    local max_distance, max_part_distance = math.huge, math.huge
    if not next(hitboxes) then
        return
    end
    for i, v in next, players:GetPlayers() do
        if v ~= local_player and v.Character and v.Character.Head.PlayerInfo.Screen.HealthContainer.ProtectedFrame.Visible == false and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Head.PlayerInfo.Screen.HealthContainer.HealthBar.HealthProgressFrame.Size ~= UDim2.new(0,0,1,0) then
          if aiLocker == false or (aiLocker and (game.Players.LocalPlayer.Team == "Outlaws" or v.Team == "Outlaws" or SafeCheck.TextColor3 ~= Color3.fromRGB(71, 209, 52))) then
            local position, on_screen = current_camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local distance = (Vector2.new(position.x, position.y) - Vector2.new(mouse.x, mouse.y)).Magnitude
            if distance < max_distance then
            target, max_distance = v, distance
            end
          end
        end
    end
    if target then
        for i, v in next, target.Character:GetChildren() do
            if table.find(hitboxes, v.Name) then
                local world_to_screen, on_screen = current_camera:WorldToScreenPoint(v.Position)
                local distance = (Vector2.new(world_to_screen.x, world_to_screen.y) - Vector2.new(mouse.x, mouse.y)).magnitude
                if distance < max_part_distance and on_screen and distance < field_of_view then
                    part, max_part_distance = v, distance
                end
            end
        end
    end
    return {target, part}
end

do
    local old = global_module.Utils.GetMouseHit
    global_module.Utils.GetMouseHit = function(...)
        if SilentAimTrueFalse == true then
            if closest_to_cursor(hitboxes)[1] and closest_to_cursor(hitboxes)[2] then
                return closest_to_cursor(hitboxes)[2].Position
            else
                return old(...)
            end
        else
            return old(...)
        end
    end
end

-- Fly --
_G.FLYING = false
local LP = game:service('Players').LocalPlayer
local T = LP.Character.UpperTorso
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
local MOUSE = Player:GetMouse()
local SPEEDD = 50

local function FLY(FLYING)
    LP = game:service('Players').LocalPlayer
    T = LP.Character.UpperTorso
    CONTROL = {F = 0, B = 0, L = 0, R = 0}
    lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    MOUSE = LP:GetMouse()
    _G.FLYING = FLYING
    local BG = Instance.new('BodyGyro', T)
    local BV = Instance.new('BodyVelocity', T)
    BG.P = 9e4
    BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    BG.cframe = T.CFrame
    BV.velocity = Vector3.new(0, 0.1, 0)
    BV.maxForce = Vector3.new(9e9, 9e9, 9e9)


    spawn(function()
      repeat wait()
        LP.Character.Humanoid.PlatformStand = true
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
          SPEED = SPEEDD
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
          SPEED = 0
        end
        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
          BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
          lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
          BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        else
          BV.velocity = Vector3.new(0, 0.1, 0)
        end
        BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
      until not _G.FLYING
      CONTROL = {F = 0, B = 0, L = 0, R = 0}
      lCONTROL = {F = 0, B = 0, L = 0, R = 0}
      SPEED = 0
      game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
      wait()
      game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.E,false,game)
      BG:destroy()
      BV:destroy()
      LP.Character.Humanoid.PlatformStand = false
    end)
  end
  
  MOUSE.KeyDown:connect(function(KEY)
    if KEY:lower() == 'w' then
      CONTROL.F = 1
    elseif KEY:lower() == 's' then
      CONTROL.B = -1
    elseif KEY:lower() == 'a' then
      CONTROL.L = -1 
    elseif KEY:lower() == 'd' then 
      CONTROL.R = 1
    end
  end)
  
  MOUSE.KeyUp:connect(function(KEY)
    if KEY:lower() == 'w' then
      CONTROL.F = 0
    elseif KEY:lower() == 's' then
      CONTROL.B = 0
    elseif KEY:lower() == 'a' then
      CONTROL.L = 0
    elseif KEY:lower() == 'd' then
      CONTROL.R = 0
    end
  end)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/thefrogman/TheWildWest/main/Lib.lua"))()
local window = Library.new("StarBoard Breaker",false)

-- 📄 Tab 📄 --
local Weapon = window:Tab("Weapon","rbxassetid://7072715317")
local Character = window:Tab("Character","rbxassetid://7072724538")
local Esp = window:Tab("Esp","rbxassetid://7072707731")
local Misc = window:Tab("Misc","rbxassetid://7072723685")
local Gui = window:Tab("Gui","rbxassetid://7072987508")

-- 〰 Selection 〰 --
local PlayerSection = Character:Section("Player Options")
local FlySection = Character:Section("Fly/Teleport")
local SkinSection = Character:Section("Skin")

-- 🎾 Title 🎾 --
PlayerSection:Title("Speed/JumpPower")

-- 💨 Speed 💨 --
PlayerSection:Slider("Speed Value", function(val)
    WalkSpeed = val
end, 27.5, 10)

PlayerSection:Toggle("Speed", function(val)
    WalkSpeedToggle = val
end)

-- ⬆ JumpPower ⬆ --
PlayerSection:Slider("JumpPower Value", function(val)
    JumpPower = val
end, 73, 50)

PlayerSection:Toggle("JumpPower", function(val)
    JumpPowerToggle = val
end)

-- 🎾 Title 🎾 --
PlayerSection:Title("HipHeight")

-- ⬆ HipHeight ⬆ --
local DefaultHipHeight = Player.Character.Humanoid.HipHeight

local HipHeight = 0.1
local HipHeightToggle = false

PlayerSection:Slider("HipHeight Value", function(val)
    HipHeight = val
    if HipHeightToggle == true then
        Player.Character.Humanoid.HipHeight = HipHeight
    end
end, 8.5, 0.1)

PlayerSection:Toggle("HipHeight", function(val)
    HipHeightToggle = val
    if val == true then
        Player.Character.Humanoid.HipHeight = HipHeight
    else
        Player.Character.Humanoid.HipHeight = DefaultHipHeight
    end
end)

-- 🎾 Title 🎾 --
PlayerSection:Title("InfStamina/NoFall")

local remote = game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("LowerStamina")
local old

local InfiniteStamina = false
local NoFall = false
local Ragdolling = false

old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()

    if not checkcaller() and self == remote and method == "FireServer" and InfiniteStamina == true then
        return workspace:WaitForChild("_thiswillprobablyneverexist_")
    end
    
    return old(self, ...)
end)

local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNamecall = gmt.__namecall

gmt.__namecall = newcclosure(function(self, ...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == "DamageSelf" and tostring(method) == "FireServer" then
        if NoFall == true or Ragdolling == true then
            Args[1] = 5
            return self.FireServer(self, unpack(Args))
        end
    end
    return oldNamecall(self, ...)
end)

-- 💨 Stamina 💨 --
PlayerSection:Toggle("Infinite Stamina", function(val)
    InfiniteStamina = val
end)

-- ⬇ Fall Damage ⬇ --
PlayerSection:Toggle("No Fall Damage", function(val)
    NoFall = val
end)

_G.NoRagdoll = false
local Module = require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter)
Module.Ragdoll = function(p48, p49, p50, p51, p52, p53)
  v5 = require(game:GetService("ReplicatedStorage").SharedModules.Global);
  u10 = true
  u11 = false
  u8 = false
if _G.NoRagdoll == false then
if u10 and ((not u11 or u8) and not p48.IsDead) and not p48.IsTiedUp then
  p48:OnControlLost();
  v5.Network:FireServer("EnterRagdoll", p50, p48.Character);
  p48:ToggleSelfRagdoll(true);
  if p49 then
    v5.Ragdolls:CreateRagdollForce(p49, p51, p52, p53);
  end;
  return;
end;
end;
end;

local NoRagdollToggle = false
-- ⬇ No Ragdoll ⬇ --
PlayerSection:Toggle("No Ragdoll", function(val)
  _G.NoRagdoll = val
  NoRagdollToggle = val
end)

-- 🎾 Title 🎾 --
PlayerSection:Title("GamePass")

-- ⬇ Ragdoll ⬇ --
PlayerSection:Keybind("Ragdoll", function()
    local ragdoll = game.Players.LocalPlayer.Character.RagdollConstraintHead

    _G.NoRagdoll = false
    while ragdoll.Enabled == false do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-500,0)
        wait()
    end
    _G.NoRagdoll = NoRagdollToggle
end, "Backquote")

local EmoteGamePass = Player.PlayerGui.EmoteMenu.Emotes.Container.TopBar.Header.Left.Visible
PlayerSection:Toggle("Emote", function(val)
    if val == true then
        Player.PlayerGui.EmoteMenu.Emotes.Container.TopBar.Header.Left.Visible = true
        Player.PlayerGui.EmoteMenu.Emotes.Container.TopBar.Header.Right.Visible = true
    elseif val == false and not EmoteGamePass == true then
        Player.PlayerGui.EmoteMenu.Emotes.Container.TopBar.Header.Left.Visible = false
        Player.PlayerGui.EmoteMenu.Emotes.Container.TopBar.Header.Right.Visible = false
    end
end)

-- ⬇ Fly ⬇ --
FlySection:Title("Fly Setting")

FlySection:Slider("Fly Speed Value", function(val)
    SPEEDD = val
end, 75, 25)

local Flying = false
FlySection:Keybind("Fly", function()
  if not AutoEnabledMinerLoaded then
    if Flying == false then
        Ragdolling = true
        _G.NoRagdoll = false
        while game.Players.LocalPlayer.Character.RagdollConstraintHead.Enabled == false do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-500,0)
            wait()
        end
        _G.NoRagdoll = NoRagdollToggle
        FLY(true)
        wait(0.25)
        game:GetService("ReplicatedStorage").Communication.Events.SetHeightPercent:FireServer(0.5)
        wait()
        game:GetService("ReplicatedStorage").Communication.Events.SetHeightPercent:FireServer(0.6)
        Flying = true
    else
        FLY(false)
        Ragdolling = false
        Flying = false
    end
  end
end, "F")

FlySection:Title("Teleport/Spawn")

local SpawnLocationList = {"FortHenry","FortSpencer","Bronze","Dorado","Tribal","Delores","HowlingPeak","WindmillCamp","CanyonCamp"}

for i,v in pairs(SpawnLocationList) do
  FlySection:Button(tostring(v), function()
    game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(tostring(v))
  end)
end

-- Esp Animal --

_G.BearColor = Color3.fromRGB(135,70,32)
_G.BisonColor = Color3.fromRGB(224, 224, 224)
_G.DeerColor = Color3.fromRGB(255,153,51)
_G.GatorColor = Color3.fromRGB(0, 201, 0)

_G.BearEsp = false
_G.BisonEsp = false
_G.DeerEsp = false
_G.GatorEsp = false

for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
    if v.Name == "Bear" or v.Name == "Bison" or v.Name == "Deer" or v.Name == "Gator" then
        local highlight = Instance.new("Highlight", v)
        highlight.Name = "Highlight"
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillColor = _G[v.Name.."Color"]
        highlight.OutlineColor = _G[v.Name.."Color"]
        highlight.Enabled = false
        highlight.Adornee = v
        local part = Instance.new("Part", v)
        part:Destroy()
    end
end

game:GetService("Workspace")["WORKSPACE_Entities"].Animals.ChildAdded:Connect(function(new)
    if new.Name == "Bear" or new.Name == "Bison" or new.Name == "Deer" or new.Name == "Gator" then
        local highlight = Instance.new("Highlight", v)
        highlight.Name = "Highlight"
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillColor = _G[new.Name.."Color"]
        highlight.OutlineColor = _G[new.Name.."Color"]
        highlight.Enabled = _G[new.Name.."Esp"]
        highlight.Adornee = new
        local part = Instance.new("Part", new)
        part:Destroy()
    end
end)

local AnimalEspSection = Esp:Section("Animal")
-- Bear --
AnimalEspSection:Title("Bear")
AnimalEspSection:ColorWheel("Bear Color", function(color)
  _G.BearColor = color
  for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
    if v.Name == "Bear" then
      v.Highlight.FillColor = _G[v.Name.."Color"]
      v.Highlight.OutlineColor = _G[v.Name.."Color"]
    end
  end
end)
AnimalEspSection:Toggle("Bear Esp", function(val)
    for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
      if v.Name == "Bear" then
        _G.BearEsp = val
        v.Highlight.Enabled = val
      end
    end
end)
-- Bison --
AnimalEspSection:Title("Bison")
AnimalEspSection:ColorWheel("Bison Color", function(color)
  _G.BisonColor = color
  for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
    if v.Name == "Bison" then
      v.Highlight.FillColor = _G[v.Name.."Color"]
      v.Highlight.OutlineColor = _G[v.Name.."Color"]
    end
  end
end)
AnimalEspSection:Toggle("Bison Esp", function(val)
    for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
      if v.Name == "Bison" then
        _G.BisonEsp = val
        v.Highlight.Enabled = val
      end
    end
end)
-- Deer --
AnimalEspSection:Title("Deer")
AnimalEspSection:ColorWheel("Deer Color", function(color)
  _G.DeerColor = color
  for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
    if v.Name == "Deer" then
      v.Highlight.FillColor = _G[v.Name.."Color"]
      v.Highlight.OutlineColor = _G[v.Name.."Color"]
    end
  end
end)
AnimalEspSection:Toggle("Deer Esp", function(val)
    for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
      if v.Name == "Deer" then
        _G.DeerEsp = val
        v.Highlight.Enabled = val
      end
    end
end)
-- Gator --
AnimalEspSection:Title("Gator")
AnimalEspSection:ColorWheel("Gator Color", function(color)
  _G.GatorColor = color
  for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
    if v.Name == "Gator" then
      v.Highlight.FillColor = _G[v.Name.."Color"]
      v.Highlight.OutlineColor = _G[v.Name.."Color"]
    end
  end
end)
AnimalEspSection:Toggle("Gator Esp", function(val)
    for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
      if v.Name == "Gator" then
        _G.GatorEsp = val
        v.Highlight.Enabled = val
      end
    end
end)

-- Esp Player --
local PlayerEspSection = Esp:Section("Player")

local PlayerEspSave = Instance.new("Folder")
PlayerEspSave.Name = "Players"
PlayerEspSave.Parent = game.CoreGui

for i, v in pairs(players:GetPlayers()) do
  if v ~= plr then
    esp(v, v.TeamColor.Color, PlayerEspSave)
  end
end

PlayerEspSection:Title("Player")
PlayerEspSection:Toggle("Player Esp",function(val)
  for i,v in pairs(PlayerEspSave:GetChildren()) do
    v.Enabled = val
  end
end)

-- Weapon --
local Weapon1Section = Weapon:Section("Weapon Setting")
Weapon1Section:Title("Silent Aim")
Weapon1Section:Slider("Aim Radius",function(val)
  field_of_view = val
  circle.Radius = field_of_view
  circle.Position = Vector2.new(current_camera.ViewportSize.x / 2, current_camera.ViewportSize.y / 2)
end,300,125)

Weapon1Section:Toggle("Toggle Silent Aim", function(val)
  circle.Visible = val
  SilentAimTrueFalse = val
end)

local AISelection = Weapon1Section:Toggle("Toggle AI Selection (Alpha)", function(val)
  aiLocker = val
end)
AISelection:Set(false)
Weapon1Section:Label("This is AI selector it select if a player is able to kill you or if you are able to kill him, For example if you shoot a person and that a protected puts itself ofvent the ai will not take it into account.")

Weapon1Section:Title("Gun Setting")

-- INFO SAVER --
local SaveProjectilePenetration = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "ProjectilePenetration" then
                table.insert(SaveProjectilePenetration, ActrualItem)
                SaveProjectilePenetration[ActrualItem] = v
            end
        end
    end
end
-- Toggle --
Weapon1Section:Toggle("Projectile Penetration",function(val)
  for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
      if val == true then
        v.ProjectilePenetration = math.huge
      else
        v.ProjectilePenetration = SaveProjectilePenetration[v.ItemName]
      end
    end
  end
end)

-- INFO SAVER --
local SaveReloadSpeed = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "ReloadSpeed" then
                table.insert(SaveReloadSpeed, ActrualItem)
                SaveReloadSpeed[ActrualItem] = v
            end
        end
    end
end
local SaveLoadSpeed = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "LoadSpeed" then
                table.insert(SaveLoadSpeed, ActrualItem)
                SaveLoadSpeed[ActrualItem] = v
            end
        end
    end
end
local SaveLoadEndSpeed = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "LoadEndSpeed" then
                table.insert(SaveLoadEndSpeed, ActrualItem)
                SaveLoadEndSpeed[ActrualItem] = v
            end
        end
    end
end
-- Toggle --
Weapon1Section:Toggle("Instant Reload",function(val)
  for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
      if val == true then
        print(v.ItemName)
        v.ReloadSpeed = math.huge
        v.LoadSpeed = math.huge
        v.LoadEndSpeed = math.huge
        if v.ItemName == "ChainCarbine" or v.ItemName == "ChainPistol" then
          v.LoadSpeed = 9999999999999999999999999
        end
      else
        v.ReloadSpeed = SaveReloadSpeed[v.ItemName]
        v.LoadSpeed = SaveLoadSpeed[v.ItemName]
        v.LoadEndSpeed = SaveLoadEndSpeed[v.ItemName]
      end
    end
  end
end)

-- INFO SAVER --
local SaveBaseRecoil = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "BaseRecoil" then
                table.insert(SaveBaseRecoil, ActrualItem)
                SaveBaseRecoil[ActrualItem] = v
            end
        end
    end
end
local SaveBaseRecoilScoped = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "BaseRecoilScoped" then
                table.insert(SaveBaseRecoilScoped, ActrualItem)
                SaveBaseRecoilScoped[ActrualItem] = v
            end
        end
    end
end
-- Toggle --
Weapon1Section:Toggle("NoRecoil",function(val)
  for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
      if val == true then
        v.BaseRecoil = 0
        v.BaseRecoilScoped = 0
      else
        v.BaseRecoil = SaveBaseRecoil[v.ItemName]
        v.BaseRecoilScoped = SaveBaseRecoilScoped[v.ItemName]
      end
    end
  end
end)

-- INFO SAVER --
local SaveProjectileAccuracy = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "ProjectileAccuracy" then
                table.insert(SaveProjectileAccuracy, ActrualItem)
                SaveProjectileAccuracy[ActrualItem] = v
            end
        end
    end
end
local SaveHorseAccuracyModifier = {}
local ActrualItem = nil
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
        for i,v in pairs(v) do
            if i == "ItemName" then
                ActrualItem = v
            end
            if i == "HorseAccuracyModifier" then
                table.insert(SaveHorseAccuracyModifier, ActrualItem)
                SaveHorseAccuracyModifier[ActrualItem] = v
            end
        end
    end
end
-- Toggle --
Weapon1Section:Toggle("Projectile Accuracy",function(val)
  for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"BaseRecoil") then
      if val == true then
        v.ProjectileAccuracy = SaveProjectileAccuracy[v.ItemName] + 0.2
        v.HorseAccuracyModifier = 1
      else
        v.ProjectileAccuracy = SaveProjectileAccuracy[v.ItemName]
        v.HorseAccuracyModifier = SaveHorseAccuracyModifier[v.ItemName]
      end
    end
  end
end)
Weapon1Section:Button("Equip UnderWater",function()
  local Module = require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter)
  Module.CanSwitchToItem = function(p24, p25)
    return true
  end
end)

Weapon1Section:Title("Lasso Setting")
local LassoGravity = 0
local LassoGravityEnable = false
Weapon1Section:Slider("Lasso Gravity",function(val)
  LassoGravity = val
  if LassoGravityEnable == true then
    game:GetService("ReplicatedStorage").Params.LassoGravityMult.Value = LassoGravity
  end
end,2,0)
Weapon1Section:Toggle("Lasso", function(val)
  LassoGravityEnable = val
  if val == true then
    game:GetService("ReplicatedStorage").Params.LassoGravityMult.Value = LassoGravity
  else
    game:GetService("ReplicatedStorage").Params.LassoGravityMult.Value = 0.5
  end
end)

Weapon1Section:Toggle("Lasso Fling", function(val)
  if val == true then
    game:GetService("ReplicatedStorage").Params.LassoPullerVelocity.Value = 25000
  else
    game:GetService("ReplicatedStorage").Params.LassoPullerVelocity.Value = 100
  end
end)
Weapon1Section:Label("Enabled this feature allows you to fling people when you lasso them (people you do this to can be banned)")

Weapon1Section:Toggle("Instant BreakFree", function(val)
  local funcName = "BreakFree"
  local func
  for i,v in pairs(getgc()) do
    if type(v) == "function" and getinfo(v).name ~= "" then
      if getinfo(v).name  == funcName then
        func = v
      end
    end
  end    
  if val == false then
    setconstant(func,5,0)
    setconstant(func,6,0.1)
    setconstant(func,10,0.25)
    setconstant(func,12,0.005)
    setconstant(func,18,0.0625)
    setconstant(func,21,0.875)
    setconstant(func,22,1.5)
  else
    setconstant(func,5,1)
    setconstant(func,6,1)
    setconstant(func,10,1)
    setconstant(func,12,1)
    setconstant(func,18,1)
    setconstant(func,21,1)
    setconstant(func,22,1)
  end
end)


local Weapon2Section = Weapon:Section("Weapon Changer")

-- Weapon Customizer

local function Load_Custom_Weapon(Default_Weapon_Name,Default_Weapon_Grip_Name,Custom_Weapon_Name,Custom_SlotType_Name,Custom_Weapon_Grip_Name,Custom_Weapon_Path,Custom_Hand_CFrame,Custom_LoadoutItem_CFrame,Custom_HotBar_CFrame,Custom_Inventory_CFrame,Custom_Reload,Custom_Weapon,Custom_SlotType,Custom_End,Custom__Inventory_FieldOfView)
	-- Script --
    local function CustomHandGun(character)
        game.Players.LocalPlayer.Character.ChildAdded:Connect(function(new)
            if new.Name == Default_Weapon_Name then
                wait(0.05)
                local modelToTeleport = Custom_Weapon_Path:Clone()
                Custom_Weapon(modelToTeleport)
                for i,v in pairs(game.Players.LocalPlayer.Character[Default_Weapon_Name]:GetDescendants()) do
                    if v:IsA("MeshPart") or v:IsA("Part") then
                        v.Transparency = 1
                    end
                end
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local rootPart = character:WaitForChild("HumanoidRootPart")
                local replicatedStorage = game:GetService("ReplicatedStorage")
                modelToTeleport:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character[Default_Weapon_Name][Default_Weapon_Grip_Name].CFrame*Custom_Hand_CFrame)
                modelToTeleport.Parent = game.Players.LocalPlayer.Character[Default_Weapon_Name][Default_Weapon_Grip_Name]
                local weld = Instance.new("WeldConstraint")
                weld.Parent = modelToTeleport
                weld.Part0 = modelToTeleport[Custom_Weapon_Grip_Name]
                weld.Part1 = game.Players.LocalPlayer.Character[Default_Weapon_Name][Default_Weapon_Grip_Name]
                -- Reload --
                Custom_Reload(modelToTeleport)
            elseif new.Name == "LoadoutItem/"..Default_Weapon_Name then
                wait(0.05)
                local modelToTeleport = Custom_Weapon_Path:Clone()
                Custom_Weapon(modelToTeleport)
                for i,v in pairs(game.Players.LocalPlayer.Character["LoadoutItem/"..Default_Weapon_Name]:GetDescendants()) do
                    if v:IsA("MeshPart") or v:IsA("Part") then
                        v.Transparency = 1
                    end
                end
                modelToTeleport:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["LoadoutItem/"..Default_Weapon_Name][Default_Weapon_Grip_Name].CFrame*Custom_LoadoutItem_CFrame)
                modelToTeleport.Parent = game.Players.LocalPlayer.Character["LoadoutItem/"..Default_Weapon_Name][Default_Weapon_Grip_Name]
                local weld = Instance.new("WeldConstraint")
                weld.Parent = modelToTeleport
                weld.Part0 = modelToTeleport[Custom_Weapon_Grip_Name]
                weld.Part1 = game.Players.LocalPlayer.Character["LoadoutItem/"..Default_Weapon_Name][Default_Weapon_Grip_Name]
            end
        end)
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(CustomHandGun)
    CustomHandGun()

    local function CustomHotbarGun()
        -- HotBar --
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Hotbar.HotBar.Container.HotbarList.Body:GetChildren()) do
            if v:IsA("ImageButton") then
                if v.Container.Slot.ViewportFrame:FindFirstChild(Default_Weapon_Name) then
                    local modelToTeleport = Custom_Weapon_Path:Clone()
                    Custom_Weapon(modelToTeleport)
                    modelToTeleport:SetPrimaryPartCFrame(v.Container.Slot.ViewportFrame[Default_Weapon_Name][Default_Weapon_Grip_Name].CFrame*Custom_HotBar_CFrame)
                    V = v
                    v.Container.Slot.ViewportFrame.Camera.FieldOfView = Custom__Inventory_FieldOfView
                    for i,v in pairs(v.Container.Slot.ViewportFrame[Default_Weapon_Name]:GetDescendants()) do
                        if v:IsA("MeshPart") or v:IsA("Part") then
                            v.Transparency = 1
                        end
                    end
                    for i,v in pairs(modelToTeleport:GetChildren()) do
                        if not v:IsA("Attachment") then
                            v.Parent = V.Container.Slot.ViewportFrame[Default_Weapon_Name]
                        end
                    end
                end
            end
        end
    end
    CustomHotbarGun()

    game.Players.LocalPlayer.PlayerGui.InventoryUI.Changed:Connect(function()
        if game.Players.LocalPlayer.PlayerGui.InventoryUI.Enabled == true then
            game.Players.LocalPlayer.PlayerGui.InventoryUI.Inventory.Visible = false
            wait()
            game.Players.LocalPlayer.PlayerGui.InventoryUI.Inventory.Visible = true
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.InventoryUI.Inventory.Container.Body.Page.ScrollingFrame:GetChildren()) do
                if v:IsA("ImageButton") then
                    if v.Container.ViewportFrame:FindFirstChild(Default_Weapon_Name) then
                        Custom_SlotType(v)
                        for i,v in pairs(v.Container.ViewportFrame[Default_Weapon_Name]:GetDescendants()) do
                            if v:IsA("MeshPart") or v:IsA("Part") then
                                v.Transparency = 1
                            end
                        end
                        local modelToTeleport = Custom_Weapon_Path:Clone()
                        Custom_Weapon(modelToTeleport)
                        modelToTeleport:SetPrimaryPartCFrame(v.Container.ViewportFrame[Default_Weapon_Name][Default_Weapon_Grip_Name].CFrame*Custom_Inventory_CFrame)
                        V = v
                        for i,v in pairs(modelToTeleport:GetChildren()) do
                            if not v:IsA("Attachment") then
                                v.Parent = V.Container.ViewportFrame[Default_Weapon_Name]
                            end
                        end
                    end
                end
            end
        end
    end)

    local getgcItem

    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v,"BaseRecoil") then 
            for i,v in pairs(v) do
                if i == "ItemName" then
                    getgcItem = v
                end
            end
            if getgcItem == Default_Weapon_Name then
                v.SlotType = Custom_SlotType_Name
                v.Display = Custom_Weapon_Name
            end
        end
    end

    Custom_End()
end

-- Aequitas
Weapon2Section:Title("Aequitas")
local DefaultAequitas = "Peacekeeper"
local CustomeAequitas = "Default"
local ModifierDefault = Weapon2Section:Dropdown("Peacekeeper")
local ModifierMode = Weapon2Section:Dropdown("Default")

-- Default Gun --
ModifierDefault:Button("Peacekeeper",function()
  DefaultAequitas = "Peacekeeper"
  ModifierDefault:ChangeText(DefaultAequitas)
end)
ModifierDefault:Button("PatersonNavy",function()
  DefaultAequitas = "PatersonNavy"
  ModifierDefault:ChangeText(DefaultAequitas)
end)

-- Custom Gun --
ModifierMode:Button("Default",function(val)
  CustomeAequitas = "Default"
  ModifierMode:ChangeText(CustomeAequitas)
end)

ModifierMode:Button("Frozen",function(val)
  CustomeAequitas = "Frozen"
  ModifierMode:ChangeText(CustomeAequitas)
end)

ModifierMode:Button("Molten",function(val)
  CustomeAequitas = "Molten"
  ModifierMode:ChangeText(CustomeAequitas)
end)

Weapon2Section:Button("Change",function()
  local Default_Weapon_Name = "Peacekeeper"
  local Default_Weapon_Grip_Name = "Grip"

  -- Custom Weapon Setting --
  local Custom_Weapon_Name = "Aequitas"
  local Custom_SlotType_Name = "Starboard"
  local Custom_Weapon_Grip_Name = "Grip"
  local Custom_Weapon_Path = game:GetService("ReplicatedStorage").Resources.Items.Weapons.Sidearms.Aequitas
  local Custom__Inventory_FieldOfView = 47.5

  -- Custom CFrame Setting --
  local Custom_Hand_CFrame = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))*CFrame.new(0,0.035,0.125)
  local Custom_LoadoutItem_CFrame = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))*CFrame.new(0,0,-0.075)
  local Custom_HotBar_CFrame = CFrame.Angles(math.rad(40), math.rad(180), math.rad(0))*CFrame.new(0,0.4,-1)
  local Custom_Inventory_CFrame = CFrame.Angles(math.rad(40), math.rad(180), math.rad(0))*CFrame.new(0.5,0.4,-1)

  -- Function Setting--
  local function Custom_Reload(modelToTeleport)
      if game.Players.LocalPlayer.Character[Default_Weapon_Name]:FindFirstChild("Chamber") then
          local weld = Instance.new("WeldConstraint")
          weld.Parent = modelToTeleport
          weld.Part0 = modelToTeleport.Chamber
          weld.Part1 = game.Players.LocalPlayer.Character[Default_Weapon_Name].Chamber
          modelToTeleport.Chamber.ChamberWeld:Destroy()
      end
  end

  local function Custom_Weapon(modelToTeleport)
  end

  local function Custom_SlotType(Slot)
  end

  local function Custom_End()
  end

  if DefaultAequitas == "Peacekeeper" and CustomeAequitas == "Default" then
  elseif DefaultAequitas == "Peacekeeper" and CustomeAequitas == "Frozen" then
    Custom_Weapon_Name = "Frozen Aequitas"
    Custom_Weapon_Path = game:GetService("ReplicatedStorage").Resources.Items.Weapons.Sidearms.FrozenAequitas
  elseif DefaultAequitas == "Peacekeeper" and CustomeAequitas == "Molten" then
    Custom_Weapon_Name = "Molten Aequitas"
    Custom_Weapon_Path = game:GetService("ReplicatedStorage").Resources.Items.Weapons.Sidearms.FrozenAequitas
    function Custom_Weapon(modelToTeleport)
      for i,v in pairs(modelToTeleport:GetChildren()) do
          if v:IsA("MeshPart") then
              if v.Color == Color3.fromRGB(155, 212, 255) then
                  v.Color = Color3.fromRGB(252, 90, 3)
                  v.Material = Enum.Material.Neon
                  v.Transparency = 0.5
              else
                  v.Color = Color3.fromRGB(40, 50, 60)
              end
          end
      end
    end
  
  function Custom_SlotType(Slot)
        Slot.Container.Background.Icon.ImageColor3 = Color3.fromRGB(252, 90, 3)
        Slot.Container.Background.Glow_128px.ImageColor3 = Color3.fromRGB(180, 30, 1)
        Slot.Container.Background.Glow_128px:SetAttribute("OriginalColor",Color3.fromRGB(180, 30, 1))
        Slot.Container.Background.RoundedTrim.ImageColor3 = Color3.fromRGB(225, 70, 2)
    end
  
  function Custom_End()
      game.Players.LocalPlayer.PlayerGui.NewPopup.ChildAdded:Connect(function(new)
        if new.Name == "ItemPopup" then
            if game.Players.LocalPlayer.PlayerGui.NewPopup.ItemPopup.Popup.Container.InfoPage.TopBar.Header.TopTitleText.Text == Custom_Weapon_Name then
              game.Players.LocalPlayer.PlayerGui.NewPopup.ItemPopup.Popup.Container.InfoPage.TopBar.Starboard.BackgroundColor3 = Color3.fromRGB(180, 30, 1)
              game.Players.LocalPlayer.PlayerGui.NewPopup.ItemPopup.Popup.Container.InfoPage.TopBar.Starboard.Icon.ImageColor3 = Color3.fromRGB(225, 70, 2)
              game.Players.LocalPlayer.PlayerGui.NewPopup.ItemPopup.Popup.Container.InfoPage.TopBar.Starboard:SetAttribute("OriginalColor",Color3.fromRGB(180, 30, 1))
              for i,v in pairs(game.Players.LocalPlayer.PlayerGui.NewPopup.ItemPopup.Popup.Container.InfoPage.TopBar.Starboard.Frame.Frame:GetChildren()) do
                if v:IsA("ImageLabel") then
                  v.ImageColor3 = Color3.fromRGB(255, 120, 6)
                end
              end
            end
          end
        end)
        for i = 1,2 do
          game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.B,true,game)
          wait()
          game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.B,false,game)
        end
    end
  elseif DefaultAequitas == "PatersonNavy" and CustomeAequitas == "Default" then
    Default_Weapon_Name = "PatersonNavy"
    Default_Weapon_Grip_Name = "Handle"
    Custom_Hand_CFrame = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))*CFrame.new(0,0.065,-0.04)
    Custom_LoadoutItem_CFrame = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))*CFrame.new(0,0,-0.075)
    Custom_HotBar_CFrame = CFrame.Angles(math.rad(40), math.rad(180), math.rad(0))*CFrame.new(0,0.4,-1.25)
    Custom_Inventory_CFrame = CFrame.Angles(math.rad(40), math.rad(180), math.rad(0))*CFrame.new(0.5,0.4,-1.25)
  end
  Load_Custom_Weapon(Default_Weapon_Name,Default_Weapon_Grip_Name,Custom_Weapon_Name,Custom_SlotType_Name,Custom_Weapon_Grip_Name,Custom_Weapon_Path,Custom_Hand_CFrame,Custom_LoadoutItem_CFrame,Custom_HotBar_CFrame,Custom_Inventory_CFrame,Custom_Reload,Custom_Weapon,Custom_SlotType,Custom_End,Custom__Inventory_FieldOfView)
end)

-- M1911

Weapon2Section:Title("M1911")
local DefaultM1911 = "NavyRevolver"
local ModifierDefault = Weapon2Section:Dropdown("NavyRevolver")
ModifierDefault:Button("NavyRevolver",function()
  DefaultM1911 = "NavyRevolver"
  ModifierDefault:ChangeText(DefaultM1911)
end)

Weapon2Section:Button("Change",function()
  if DefaultM1911 == "NavyRevolver" then
    loadstring(game:HttpGet("https://github.com/thefrogman/Weapon-Modifier/raw/main/M1911.lua"))()
  end
end)

-- GoldenShotgun

Weapon2Section:Title("GoldenShotgun")
local DefaultGoldenShotgun = "RevolvingShotgun"
local ModifierDefault = Weapon2Section:Dropdown("RevolvingShotgun")
ModifierDefault:Button("RevolvingShotgun",function()
  DefaultGoldenShotgun = "RevolvingShotgun"
  ModifierDefault:ChangeText(DefaultGoldenShotgun)
end)

Weapon2Section:Button("Change",function()
  if DefaultGoldenShotgun == "RevolvingShotgun" then
    loadstring(game:HttpGet("https://github.com/thefrogman/Weapon-Modifier/raw/main/GoldenShotgun.lua"))()
  end
end)

-- M16

Weapon2Section:Title("M16")
local DefaultM16 = "HarmonicaRifle"
local ModifierDefault = Weapon2Section:Dropdown("HarmonicaRifle")
ModifierDefault:Button("HarmonicaRifle",function()
  DefaultM16 = "HarmonicaRifle"
  ModifierDefault:ChangeText(DefaultM16)
end)

Weapon2Section:Button("Change",function()
  if DefaultM16 == "HarmonicaRifle" then
    loadstring(game:HttpGet("https://github.com/thefrogman/Weapon-Modifier/raw/main/M16.lua"))()
  end
end)

-- HeavyGuitar

Weapon2Section:Title("HeavyGuitar")
local DefaultGuitar = "Guitar"
local ModifierDefault = Weapon2Section:Dropdown("Guitar")
ModifierDefault:Button("Guitar",function()
  DefaultGuitar = "Guitar"
  ModifierDefault:ChangeText(DefaultGuitar)
end)

Weapon2Section:Button("Change",function()
  if DefaultGuitar == "Guitar" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/thefrogman/Weapon-Modifier/main/HeavyGuitar.lua"))()
  end
end)

-- Setar

Weapon2Section:Title("Setar")
local DefaultSetar = "Guitar"
local ModifierDefault = Weapon2Section:Dropdown("Guitar")
ModifierDefault:Button("Guitar",function()
  DefaultSetar = "Guitar"
  ModifierDefault:ChangeText(DefaultSetar)
end)

Weapon2Section:Button("Change",function()
  if DefaultSetar == "Guitar" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/thefrogman/Weapon-Modifier/main/Setar.lua"))()
  end
end)

-- Misc --
local Misc3Section = Misc:Section("Auto Mine")
--local MineRecoardeSection = Misc:Section("Mining Recorder")
Misc3Section:Title("Setting")
_G.WalkSpeed = 28
Misc3Section:Slider("WalkSpeed", function(val)
  _G.WalkSpeed = val
end,29,15)
_G.MineTime = 2.5
Misc3Section:Slider("MineTime", function(val)
  _G.MineTime = val
end,5,2.5)
Misc3Section:Label("For a T5 or T6 you need to put it at 2.5 for max perfomence.")
Misc3Section:Title("Enable")
Misc3Section:Button("AutoMiner",function()
  AutoEnabledMinerLoaded = true
  loadstring(game:HttpGet("https://raw.githubusercontent.com/thefrogman/TheWildWest/main/BronzeAutoMiner.lua"))()
end)

local Misc1Section = Misc:Section("Inventory")

local ActualAuctionGun = nil
local AuctionGunType = {"Trade Ticket","Guycot Chain Pistol","Guycot Chain Carbine","Schwarzlose Prototype Pistol","Lancaster Pistol","Kukri Machete","Paterson Navy","Admiral's Axegonne","Harmonica","Drum","Flute","Trumpet","Fiddle","Guitar","Accordion"}

Misc1Section:Title("Auto Bid")
local AuctionGun = Misc1Section:SearchBar("Auction Gun")
for i,v in pairs(AuctionGunType) do
  AuctionGun:Button(v, function()
    ActualAuctionGun = v
  end)
end
local MaxPrice = ""
Misc1Section:Slider("Max Price", function(val)
  MaxPrice = val-1000
end, 750000, 3500)

local AuctionList = game.Players.LocalPlayer.PlayerGui.AuctionHouse.AuctionMenu.Container.Body.AuctionList.ScrollingFrame
local AuctionPage = game.Players.LocalPlayer.PlayerGui.AuctionHouse.AuctionMenu.Container.Body.AuctionPage

Misc1Section:Toggle("Auto Bid", function(val)
  _G.AutoBidOn = val
  while _G.AutoBidOn == true do
      wait(0.5)
      for i,v in pairs(AuctionList:GetChildren()) do
          if v:IsA("ImageButton") then
              if v.TimerText.Text:match("00m") or v.TimerText.Text:match("01m 01s") then
                  if v.TitleText.Text == ActualAuctionGun then
                      local Button = v
                      for i,v in pairs(Signals) do
                          firesignal(Button[v])
                      end
                      local money = AuctionPage.BidInfoBlock.Container.ValueText.Text
                      local AcctualPrice = money.gsub(money.gsub(money:sub(57), "</b></font>", ""), ",", "")
                      if tonumber(AcctualPrice) <= MaxPrice then
                          if game.Players.LocalPlayer.PlayerGui.AuctionHouse.AuctionMenu.Container.Body.AuctionPage.ItemPreviewBlock.InfoBlock.Container.TitleText.Text == ActualAuctionGun and game.Players.LocalPlayer.PlayerGui.AuctionHouse.AuctionMenu.Container.Body.AuctionPage.BidBlock.Cooldown.Visible == false then
                              local Button = game.Players.LocalPlayer.PlayerGui.AuctionHouse.AuctionMenu.Container.Body.AuctionPage.BidBlock.NewBidButton
                              for i,v in pairs(Signals) do
                                  firesignal(Button[v])
                              end
                              local Button = game.Players.LocalPlayer.PlayerGui.AuctionPopups.NewBidPopup.Container.Body.Page.AcceptButton
                              for i,v in pairs(Signals) do
                                  firesignal(Button[v])
                              end
                              local Button = game.Players.LocalPlayer.PlayerGui.AuctionPopups.NewBidPopup.Container.Body.Page.BackButton
                              for i,v in pairs(Signals) do
                                  firesignal(Button[v])
                              end
                          end
                      end
                  end
              end
          end
      end
  end
end)

Misc1Section:Label("For the auto bid you must have opened the bid menu for it to work properly also check that your max price is not too high and that the item is well chosen. (The bot bid only at the last min)") -- Args(<String> LabelText, <Number?> TextSize, <Color3?> TextColor)

Misc1Section:Title("Cook")
Misc1Section:Button("Cook Inventory", function()
  game:GetService("ReplicatedStorage").Communication.Events.CookFood:FireServer(workspace)
end)

local Misc2Section = Misc:Section("Gui")

Misc2Section:Title("Mini Map")
local MinimapZooming = 1
local MinimapZoomingOn = false

Misc2Section:Slider("Zoom", function(val)
  MinimapZooming = val
  if MinimapZoomingOn == true then
    for i,v in pairs(getgc(true)) do
      if type(v) == "table" and rawget(v,"Cash") then
        v.MinimapZoom = MinimapZooming
      end
    end
  end
end, 10, 1)

Misc2Section:Toggle("Custom Zoom", function(val)
  MinimapZoomingOn = val
  for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"Cash") then
      if val == true then
        v.MinimapZoom = MinimapZooming
      else
        v.MinimapZoom = 10
      end
    end
  end
end)

Misc2Section:Title("Horse")
Misc2Section:Toggle("Unlimited Stamina", function(val)
  for i,v in pairs(getgc()) do
    if type(v) == "function" then
        if getinfo(v).name == "Boost" then
          if val == true then
            setconstant(v, 21, 0)
          else
            setconstant(v, 21, 1)
          end
        end
    end
  end
end)

Misc2Section:Button("No Ragdoll", function()
  local Module = require(game:GetService("ReplicatedStorage").Modules.World.WildLife.WildLife.Animal)
  Module.RagdollBoth = function()
  end
end)

Misc2Section:Title("Duel")
local PlayerListing = Misc2Section:SearchBar("Player")
PlayerListing:Button("Duel All", function()
  for i,v in pairs(game:GetService("Players"):GetChildren()) do
    game:GetService("ReplicatedStorage").Communication.Events.DuelRequest:FireServer(v)
  end
end)
for i,v in pairs(game.Players:GetChildren()) do
  PlayerListing:Button(v.Name, function()
    game:GetService("ReplicatedStorage").Communication.Events.DuelRequest:FireServer(v)
  end)
end

local Misc4Section = Misc:Section("Instrument")
Misc4Section:Title("Midi List")
local MusicList = Misc4Section:SearchBar("Midi")
MusicList:Title("Music")
for i,v in pairs(MusicListing) do
  MusicList:Button(MusicListing[i].name,function()
    game:GetService("ReplicatedStorage").Communication.Functions.BandPlayMidi:InvokeServer(true,MusicListing[i].url,1)
  end)
end
MusicList:Title("Game")
for i,v in pairs(GameMusicListing) do
  MusicList:Button(GameMusicListing[i].name,function()
    game:GetService("ReplicatedStorage").Communication.Functions.BandPlayMidi:InvokeServer(true,GameMusicListing[i].url,1)
  end)
end
MusicList:Title("Anime/Manga")
for i,v in pairs(AnimeMangaMusicListing) do
  MusicList:Button(AnimeMangaMusicListing[i].name,function()
    game:GetService("ReplicatedStorage").Communication.Functions.BandPlayMidi:InvokeServer(true,AnimeMangaMusicListing[i].url,1)
  end)
end
MusicList:Title("Hymne")
for i,v in pairs(HymneListing) do
  MusicList:Button(HymneListing[i].name,function()
    game:GetService("ReplicatedStorage").Communication.Functions.BandPlayMidi:InvokeServer(true,HymneListing[i].url,1)
  end)
end

makefolder("StarBoardBreaker/Skin")
SkinSection:Title("Loader")
local SkinToLoad = nil

local LoadSkinList = SkinSection:SearchBar("Skin List")

for i,v in pairs(listfiles("StarBoardBreaker/Skin")) do
  LoadSkinList:Button(v,function()
    SkinToLoad = v
    LoadSkinList:ChangeText(v)
  end)
end
SkinSection:Button("Load Skin", function()
  if isfile(SkinToLoad) then
    local contents = readfile(SkinToLoad)
    local array = string.split(contents, "|")
    
    local HairID = array[1]
    local BeardID = array[3]
    local MustacheID = array[5]
    local ShirtID = array[7]
    local PantsID = array[9]
    local MaskID = array[11]
    local GlassID = array[12]
    local HatID = array[13]
    local FaceID = array[14]
    local ColorID = array[15]
    
    local RGBValues = string.split(array[2], ", ")
    local HairIDCol = Color3.new(table.unpack(RGBValues))
    
    local RGBValues = string.split(array[4], ", ")
    local BeardIDCol = Color3.new(table.unpack(RGBValues))
    
    local RGBValues = string.split(array[6], ", ")
    local MustacheIDCol = Color3.new(table.unpack(RGBValues))
    
    local RGBValues = string.split(array[8], ", ")
    local ShirtIDCol = Color3.new(table.unpack(RGBValues))
    
    local RGBValues = string.split(array[10], ", ")
    local PantsIDCol = Color3.new(table.unpack(RGBValues))

    --Hair
    if HairID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Hair", HairID)
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("SetAppearanceItemColor"):FireServer("Hair", HairID, Color3.fromRGB(HairIDCol.r * 255, HairIDCol.g * 255, HairIDCol.b * 255))
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Hair")
    end

    --Beard
    if BeardID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Beards", BeardID)
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("SetAppearanceItemColor"):FireServer("Beards", BeardID, Color3.fromRGB(BeardIDCol.r * 255, BeardIDCol.g * 255, BeardIDCol.b * 255))
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Beards")
    end

    --Mustache
    if MustacheID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Mustaches", MustacheID)
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("SetAppearanceItemColor"):FireServer("Mustaches", MustacheID, Color3.fromRGB(MustacheIDCol.r * 255, MustacheIDCol.b * 255, MustacheIDCol.g * 255))
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Mustaches")
    end

    --Shirt
    if ShirtID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Shirts", ShirtID)
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("SetAppearanceItemColor"):FireServer("Shirts", ShirtID, Color3.fromRGB(ShirtIDCol.r * 255, ShirtIDCol.g * 255, ShirtIDCol.b * 255))
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Shirts")
    end

    --Pants
    if PantsID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Pants", PantsID)
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("SetAppearanceItemColor"):FireServer("Pants", PantsID, Color3.fromRGB(PantsIDCol.r * 255, PantsIDCol.b * 255, PantsIDCol.b * 255))
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Pants")
    end

    --Mask
    if MaskID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Masks", MaskID)
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Masks")
    end

    --Glass
    if GlassID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Glasses", GlassID)
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Glasses")
    end

    --Hat
    if HatID ~= "nil" then
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Hats", HatID)
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Hats")
    end

    --Face
      game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events"):WaitForChild("EquipCustomizationItem"):FireServer("Faces", FaceID)

    -- Color
      game:GetService("ReplicatedStorage").Communication.Events.SelectSkinColor:FireServer(tonumber(ColorID))
    end
end)

SkinSection:Title("Saver")
local SkinToSave = nil
SkinSection:TextBox("Skin Name", function(val)
  SkinToSave = val
end)
SkinSection:Button("Save Skin", function()
  local HairID = nil
  local BeardID = nil
  local MustacheID = nil
  local ShirtID = nil
  local PantsID = nil
  local MaskID = nil
  local GlassID = nil
  local HatID = nil
  local FaceID = nil
  local ColorID = nil

  local HairIDCol = Color3.new(0, 0, 0)
  local BeardIDCol = Color3.new(0, 0, 0)
  local MustacheIDCol = Color3.new(0, 0, 0)
  local ShirtIDCol = Color3.new(0, 0, 0)
  local PantsIDCol = Color3.new(0, 0, 0)

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Shirts:GetDescendants()) do
      if v:IsA("Shirt") then
          if game.Players.LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate == v.ShirtTemplate then
              ShirtID = v.Name
              ShirtIDCol = game.Players.LocalPlayer.Character:FindFirstChild("Shirt").Color3
          end
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Hair:GetChildren()) do
      if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
          HairID = v.Name
          HairIDCol = game.Players.LocalPlayer.Character:FindFirstChild(v.Name).Handle.Color
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Mustaches:GetDescendants()) do
      if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
          MustacheID = v.Name
          MustacheIDCol = game.Players.LocalPlayer.Character:FindFirstChild(v.Name).Handle.Color
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Pants:GetDescendants()) do
      if v:IsA("Pants") then
          if game.Players.LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate == v.PantsTemplate then
              PantsID = v.Name
              PantsIDCol = game.Players.LocalPlayer.Character:FindFirstChild("Pants").Color3
          end
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Masks:GetDescendants()) do
      if v:IsA("Accessory") then
          if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
              MaskID = v.Name
          end
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Faces:GetDescendants()) do
      if v:IsA("Decal") then
          if game.Players.LocalPlayer.Character.Head:FindFirstChild("face").Texture == v.Texture then
              FaceID = v.Name
          end
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Hats:GetDescendants()) do
      if v:IsA("Accessory") then
          if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
              HatID = v.Name
          end
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Glasses:GetDescendants()) do
      if v:IsA("Accessory") then
          if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
              GlassID = v.Name
          end
      end
  end

  for i,v in pairs(game:GetService("ReplicatedStorage").Resources.Clothing.Beards:GetDescendants()) do
      if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
          BeardID = v.Name
          BeardIDCol = game.Players.LocalPlayer.Character:FindFirstChild(v.Name).Handle.Color
      end
  end

  if game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(255, 213, 183) then
    ColorID = 10
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(255, 213, 183) then
    ColorID = 9
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(255, 204, 153) then
    ColorID = 8
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(255, 213, 183) then
    ColorID = 7
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(234, 184, 146) then
    ColorID = 6
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(218, 171, 130) then
    ColorID = 5
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(182, 142, 108) then
    ColorID = 4
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(159, 123, 94) then
    ColorID = 3
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(116, 89, 68) then
    ColorID = 2
  elseif game.Players.LocalPlayer.Character.Head.Color == Color3.fromRGB(94, 72, 55) then
    ColorID = 1
  end

  writefile("StarBoardBreaker/Skin/"..SkinToSave..".Setting",tostring(HairID).."|"..tostring(HairIDCol).."|"..tostring(BeardID).."|"..tostring(BeardIDCol).."|"..tostring(MustacheID).."|"..tostring(MustacheIDCol).."|"..tostring(ShirtID).."|"..tostring(ShirtIDCol).."|"..tostring(PantsID).."|"..tostring(PantsIDCol).."|"..tostring(MaskID).."|"..tostring(GlassID).."|"..tostring(HatID).."|"..tostring(FaceID).."|"..tostring(ColorID).."|")

  LoadSkinList:Button("StarBoardBreaker/Skin/"..SkinToSave..".Setting",function()
    SkinToLoad = "StarBoardBreaker/Skin/"..SkinToSave..".Setting"
  end)
end)
-- GUI --
local credits = Gui:Section("Credits")
credits:Label("Created by FURYMOB",25)

credits:Keybind("Gui Toggle", function()
  game:GetService("CoreGui").Cerberus.Enabled = not game:GetService("CoreGui").Cerberus.Enabled
end,"Semicolon")

--[[-- Mining Recording --
MineRecoardeSection:Title("Recording")
makefolder("StarBoardBreaker/MiningRecording")

-- Instance --
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Character = game:GetService("Players").LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart

local Recording = false
local LastAttache
local CheckPoint = {}
local LastWaypoint

local Folder_Path = Instance.new("Folder")
Folder_Path.Name = "Path_Record"
Folder_Path.Parent = game.workspace

local MouvementSystem = "Walk"

local function Waypoint_Creator(Color,RopeColor,Size)
  local Waypoint = Instance.new("Part")
  Waypoint.Name = tostring(#CheckPoint+1)
  Waypoint.CFrame = HumanoidRootPart.CFrame
  Waypoint.Anchored = true
  Waypoint.CanCollide = false
  Waypoint.Size = Size or Vector3.new(0.5,0.5,0.5)
  Waypoint.Material = Enum.Material.Neon
  Waypoint.Color = Color
  Waypoint.Shape = "Ball"
  Waypoint.Parent = Folder_Path

  local Attachement = Instance.new("Attachment")
  Attachement.Parent = Waypoint
  
  if #CheckPoint ~= 1 then
      local Rope = Instance.new("RopeConstraint")
      Rope.Parent = Waypoint
      Rope.Color = RopeColor
      Rope.Visible = true
      Rope.Length = 0
      Rope.Attachment0 = Attachement
      Rope.Attachment1 = LastAttache
  end

  LastAttache = Attachement
  LastWaypoint = Waypoint
  table.insert(CheckPoint, Waypoint)
  return Waypoint
end

local MouvementSystemDropDown = MineRecoardeSection:Dropdown("Walk")

MouvementSystemDropDown:Button("Fly",function()
  MouvementSystem = "Fly"
  MouvementSystemDropDown:ChangeText(MouvementSystem)
end)
MouvementSystemDropDown:Button("Walk",function()
  MouvementSystem = "Walk"
  MouvementSystemDropDown:ChangeText(MouvementSystem)
end)
local FirstRec = true
MineRecoardeSection:Toggle("Record",function(val)
  if FirstRec then
    if MouvementSystem == "Walk" then
      Waypoint_Creator(Color3.fromRGB(91, 154, 76),BrickColor.new("Lime green"))
    else
      Waypoint_Creator(Color3.fromRGB(235, 68, 12),BrickColor.new("Bright red"))
    end
    RunService.Heartbeat:Connect(function()
      if math.abs((CheckPoint[#CheckPoint].Position - HumanoidRootPart.Position).Magnitude) >= 5 and Recording then
          if MouvementSystem == "Walk" then
            Waypoint_Creator(Color3.fromRGB(91, 154, 76),BrickColor.new("Lime green"))
          else
            Waypoint_Creator(Color3.fromRGB(235, 68, 12),BrickColor.new("Bright red"))
          end
      end
    end)
  end
  FirstRec = false
  Character = game:GetService("Players").LocalPlayer.Character
  HumanoidRootPart = Character.HumanoidRootPart
  Recording = val
end)

MineRecoardeSection:Button("Mining Point",function()
  if LastWaypoint ~= nil then
    local Point = Waypoint_Creator(Color3.fromRGB(41, 80, 255),BrickColor.new("Bright blue"),Vector3.new(0.75,0.75,0.75))
  end
end)
local Mining_Record
MineRecoardeSection:TextBox("Record Name", function(val)
  Mining_Record = val
end)

MineRecoardeSection:Button("Save",function()
  local Saveing_System = ""
  for i,v in pairs(Folder_Path:GetChildren()) do
    if v.Color == Color3.fromRGB(91, 154, 76) then
      Saveing_System = Saveing_System.."|"..tostring(v.Position.X).."!"..tostring(v.Position.Y).."!"..tostring(v.Position.Z).."!Walk"
    elseif v.Color == Color3.fromRGB(235, 68, 12) then
      Saveing_System = Saveing_System.."|"..tostring(v.Position.X).."!"..tostring(v.Position.Y).."!"..tostring(v.Position.Z).."!Fly"
    elseif v.Color == Color3.fromRGB(41, 80, 255) then
      Saveing_System = Saveing_System.."|"..tostring(v.Position.X).."!"..tostring(v.Position.Y).."!"..tostring(v.Position.Z).."!Mining"
    end
  end
  writefile("StarBoardBreaker/MiningRecording/"..Mining_Record..".Setting",tostring(Saveing_System))
end)]]

local LegandaryEspSection = Esp:Section("Legandary")

LegandaryEspSection:Button("Detect Legandary",function()
  local Sound = Instance.new("Sound")
Sound.Name = "Sound"
Sound.SoundId = "http://www.roblox.com/asset/?id=9125673453"
Sound.Volume = 7.5
Sound.Looped = false
Sound.archivable = false
Sound.Parent = game.Workspace

local function FindFirstPart(target)
    for i,v in pairs(target:GetChildren()) do
        if v:IsA("Part") or v:IsA("MeshPart") then
            return v
        end
    end
end

local function Marker(position,color,highlight)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.M,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.M,false,game)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position)
    wait()
    local Marker = game:GetService("Players").LocalPlayer.PlayerGui.Map.Map.Container.DynamicMarkers.Players.Player:Clone()
    Marker.Name = "Finded"
    Marker.Icon:Destroy()
    Marker.ViewportFrame.Part.Decal:Destroy()
    Marker.ViewportFrame.Part.Color = color
    Marker.ViewportFrame.Part.Transparency = 0
    Marker.ViewportFrame.Part.Material = "Neon"
    Marker.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Map.Map.Container.DynamicMarkers
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.M,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.M,false,game)
    workspace.DescendantRemoving:Connect(function(instance)
        if instance == highlight then
            Marker:Destroy()
        end
    end)
end

local function CreateESPPart(target, color)
    Sound:Play()

    local highlight = Instance.new("Highlight")

    Marker(FindFirstPart(target).Position,color,highlight)

    highlight.Name = "Highlight"
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillColor = color
    highlight.OutlineColor = color
    highlight.OutlineTransparency = 0.25
    highlight.Parent = target
end

for i,v in pairs(workspace.WORKSPACE_Geometry:GetDescendants()) do
	if v.Name:match("Strike") then
		if v.Parent.Name == "Trunk" then
			CreateESPPart(v.Parent.Parent, Color3.fromRGB(255, 85, 0))
            v.Parent.Parent.TreeInfo.Alive.Changed:Connect(function()
                v.Parent.Parent.Highlight:Destroy()
            end)
        elseif v.Parent.Name == "Cactus" then
			CreateESPPart(v.Parent.Parent, Color3.fromRGB(125, 145, 88))
            v.Parent.Parent.TreeInfo.Alive.Changed:Connect(function()
                v.Parent.Parent.Highlight:Destroy()
            end)
		end
	end
end

for i,v in pairs(workspace.WORKSPACE_Entities.Animals:GetDescendants()) do
	if v.Name == "Bear" then
		if v.Body.Color == Color3.fromRGB(73, 48, 36) then
			CreateESPPart(v, Color3.fromRGB(89, 30, 0)) 
		end
    elseif v.Name == "Bison" then
		if v.Body.Color == Color3.fromRGB(62, 53, 48) then
			CreateESPPart(v, Color3.fromRGB(255, 255, 255)) 
		end
    elseif v.Name == "Gator" then
		if v.Body.Color == Color3.fromRGB(25, 32, 28) then
			CreateESPPart(v, Color3.fromRGB(25, 32, 28)) 
        elseif v.Body.Color == Color3.fromRGB(186, 186, 186) then
			CreateESPPart(v, Color3.fromRGB(186, 186, 186)) 
		end
	end
end

game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller.ChildAdded:Connect(function(child)
wait(1)
    if child.TextLabel.Text:match("rare loot") then
        for i,v in pairs(workspace.WORKSPACE_Geometry:GetDescendants()) do
            if v.Name:match("Strike") then
                if v.Parent.Name == "Trunk" then
                    CreateESPPart(v.Parent.Parent, Color3.fromRGB(255, 85, 0))
                    v.Parent.Parent.TreeInfo.Alive.Changed:Connect(function()
                        v.Parent.Parent.Highlight:Destroy()
                    end)
                elseif v.Parent.Name == "Cactus" then
                    CreateESPPart(v.Parent.Parent, Color3.fromRGB(125, 145, 88))
                    v.Parent.Parent.TreeInfo.Alive.Changed:Connect(function()
                        v.Parent.Parent.Highlight:Destroy()
                    end)
                end
            end
        end
    end
end)

workspace.WORKSPACE_Entities.Animals.ChildAdded:Connect(function(child)
wait(1)
    if child.Name == "Bear" then
        child:WaitForChild("Body")
        if child.Body.Color == Color3.fromRGB(73, 48, 36) then
            CreateESPPart(child, Color3.fromRGB(73, 48, 36)) 
        end
    elseif child.Name == "Bison" then
        child:WaitForChild("Body")
        if child.Body.Color == Color3.fromRGB(62, 53, 48) then
            CreateESPPart(child, Color3.fromRGB(255, 255, 255)) 
        end
    elseif child.Name == "Gator" then
        child:WaitForChild("Body")
        if child.Body.Color == Color3.fromRGB(25, 32, 28) then
            CreateESPPart(child, Color3.fromRGB(25, 32, 28))
        elseif child.Body.Color == Color3.fromRGB(186, 186, 186) then
            CreateESPPart(child, Color3.fromRGB(186, 186, 186))
        end
    end
end)
end)
