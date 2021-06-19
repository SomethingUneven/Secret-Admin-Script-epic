local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://261082034"
sound.Parent = game:GetService("SoundService")
sound:Play()

wait(0.1)

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Commands in Dev Console";
	Text  = "Press F9 To view commands!";
})

local oofgp = game:GetService("Players")
local oofga = game:GetService("Workspace")["Terrain"]["_Game"]
local oofaf = oofga["Admin"]


local function ServerCheck()
if oofaf:FindFirstChild("Regen") and oofaf.Regen:FindFirstChild("ClickDetector") then
fireclickdetector(oofaf.Regen.ClickDetector, 0)
wait(0.4)
if oofaf.Pads:FindFirstChild("Touch to get admin") then
if oofaf.Pads["Touch to get admin"]:FindFirstChild("Head") then
return true
else
return false
end
else
return false
end
else
return false
end
end

local function SendNotification(title,text,duration,...)
game.StarterGui:SetCore("SendNotification", {
Title = title;
Text = text;
Icon = "";
Duration = duration;
})
end

function isPerm()
return game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber(oofgp.LocalPlayer.UserId), 66254)
end

if isPerm() == false then do
if ServerCheck() then
    local Players = game:GetService("Players")
    local GameFolder = Workspace.Terrain["_Game"]

local DesiredPadName = game.Players.LocalPlayer.Name .. "'s admin"
        local SelectedPad = SpecifyPad or GameFolder["Admin"]["Pads"]:GetChildren()[math.random(1, 9)]
        local SavedPadCFrame = SelectedPad.Head.CFrame

        if (SelectedPad.Name ~= DesiredPadName and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            local HumanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

            if (not firetouchinterest) then
                -- // Setting Pad Properties
                SelectedPad.Head.Transparency = 1
                SelectedPad.Head.Size = Vector3.new(0, 0, 0)
                SelectedPad.Head.CanCollide = false

                -- // Constantly teleporting the pad to the Player until the player has admin
                while SelectedPad.Name ~= game.Players.LocalPlayer.Name .. "'s admin" do
                    wait()
                    SelectedPad.Head.CFrame = game.Players.HumanoidRootPart.CFrame
                end
SelectedPad.Head.CFrame = SavedPadCFrame
                SelectedPad.Head.Transparency = 0
                SelectedPad.Head.Size = Vector3.new(3, 0.4, 3)
                SelectedPad.Head.CanCollide = true
            else
                while SelectedPad.Name ~= game.Players.LocalPlayer.Name .. "'s admin" do
                    wait()
                    firetouchinterest(HumanoidRootPart, SelectedPad.Head, 0)
                    firetouchinterest(HumanoidRootPart, SelectedPad.Head, 1)
                end
            end
        end
else
SendNotification("Unable to teleport","all pads are taken lol")
end
end
end        

local Players = game:GetService("Players")

local mousee = game.Players.LocalPlayer:GetMouse()
local AttachTO_keybind = "m"
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Folder = Game_Folder.Folder
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local Stable_Check = false
local v1 = "PaintPart"


function logn(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Developer"; 
		Text = msg; 
		Duration = 5;
	})
end


-------------------

Players.LocalPlayer.Chatted:Connect(function(msg)

if string.sub(msg:lower(), 0, 4) == ";exe" then
	loadstring(string.sub(msg:lower(), 5))()
end
end)

Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 7) == "movepad" then
        if Stable_Check == false then
            Stable_Check = true
            if Admin_Folder.Regen.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				wait(0.1)
				game.Players:Chat('respawn me')
				wait(0.2)
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
        else
        end
end

if string.sub(msg:lower(), 0, 5) == "fixbp" then
		local plr = string.sub(msg:lower(), 6)
		game.Players:Chat(prefix.."trap "..plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500.99981689453, 0.10156404972076, 0))
		wait(0.10)
		game.Players:Chat("jail me")
		game.Players:Chat("tp "..plr.." me")
		wait(0.25)

		local target = Workspace_Folder.Baseplate
		function movepart()
			local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
			local looping = true
			spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					if not looping then break end
				end
			end)
			spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
			wait(0.25)
			looping = false
		end
		movepart()
		wait(0.75)

		game.Players:Chat("tp me "..plr)
	end


	if string.sub(msg:lower(), 0, 5) == "tpads" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		cf.CFrame = Admin_Folder.Regen.CFrame
	end

		if string.sub(msg:lower(), 0, 6) == "volume" then
		local newVolume = tonumber(string.sub(msg:lower(), 7))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.Volume = newVolume
	end

		if string.sub(msg:lower(), 0, 9) == "niggablls" then
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat("vis me")
	end


	if string.sub(msg:lower(), 0, 3) == "-at" then
		game.Players:Chat("stun me")
		wait(2.4)
		game.Players:Chat("punish me")
		wait(1.7)
		game.Players:Chat("unpunish me")
	end
end)

mousee.KeyDown:connect(function(key)
	if key:lower() == AttachTO_keybind then
		if mousee.Target then
			local target = mousee.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
			end
			movepart()
		end
	end
	end)

Players.LocalPlayer.Chatted:Connect(function(msg)
	CancelTeleport = true
	local amount = nil
	if string.sub(msg:lower(), 0, 9) == "serverhop" then
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = v.playing
			end
		end
		if #x > 0 then
			logn("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Unable to Locate Server")
		end
	end
end)

Players.LocalPlayer.Chatted:Connect(function(msg)

	if string.sub(msg:lower(), 0, 4) == ";fix" then
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		local remote = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v4 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
					remote:InvokeServer(v1, v4)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v5 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
					remote:InvokeServer(v1, v5)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						local v6 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
							}
						remote:InvokeServer(v1, v6)
					end

					if v.Name == "SmoothBlockModel40" then
						local v7 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright green"))
							}
						remote:InvokeServer(v1, v7)
					end

					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						local v8 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright red"))
							}
						remote:InvokeServer(v1, v8)
					end

					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						local v9 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark orange"))
							}
						remote:InvokeServer(v1, v9)
					end

					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						local v10 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v10)
					end

					if v.Name == "SmoothBlockModel112" then
						local v11 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium blue"))
							}
						remote:InvokeServer(v1, v11)
					end

					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						local v12 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
							}
						remote:InvokeServer(v1, v12)
					end

					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						local v13 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Sand red"))
							}
						remote:InvokeServer(v1, v13)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
						local v14 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
						remote:InvokeServer(v1, v14)
					end

					if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
						local v15 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Deep blue"))
							}
						remote:InvokeServer(v1, v15)
					end

					if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
						local v16 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
							}
						remote:InvokeServer(v1, v16)
					end

					if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v17 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Lime green"))
							}
						remote:InvokeServer(v1, v17)
					end

					if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v18 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
							}
						remote:InvokeServer(v1, v18)
					end

					if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
						local v19 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("New yeller"))
							}
						remote:InvokeServer(v1, v19)
					end

					if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
						local v20 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really black"))
							}
						remote:InvokeServer(v1, v20)
					end

					if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
						local v21 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really red"))
							}
						remote:InvokeServer(v1, v21)
					end

					if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
						local v22 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
							}
						remote:InvokeServer(v1, v22)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v23 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
					remote:InvokeServer(v1, v23)
				end

				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if v:IsA("Part") then
						local v24 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Teal"))
							}
						remote:InvokeServer(v1, v24)
					end
				end
			end)
		end
	end

function transformToColor3(col) -- Oofkohls
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end
end)



local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
	if player.name == "Ba_lIon" then
		local A_1 = "Balloon Has Joined!"
		local A_2 = "All"
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
		Event:FireServer(A_1, A_2)
	else
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = " "..player.name..",";
			Text  = "Has Joined The Game.";
		})

	end
end)

Players.PlayerRemoving:Connect(function(player)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = ""..player.name..",";
		Text  = "Has Left The Game.";
	})
end)



for i,v in pairs(game.Players:GetChildren()) do
	if v.Name == "timjs" then
		local A_1 = "Blacklisted Player Deteced: timjs"
		local A_2 = "All"
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
		Event:FireServer(A_1, A_2)
                wait()
		_G.messagedeleter = true
                wait(1)
		game.Players:Chat("end.mp4")
	end
end


Players.PlayerAdded:Connect(function(player)
	if player.name == "timjs" then
		local A_1 = "Blacklisted Player Detected: timjs"
		local A_2 = "All"
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
		Event:FireServer(A_1, A_2)
		_G.messagedeleter = true
                wait(1)
		game.Players:Chat("end.mp4")
	end
end)


for i,v in pairs(game.Players:GetChildren()) do
	if v.Name == "Reset22656735" then
		local A_1 = "Blacklisted Player Detected: Reset22656735"
		local A_2 = "All"
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
		Event:FireServer(A_1, A_2)
                wait()
		_G.messagedeleter = true
                wait(1)
		game.Players:Chat("end.mp4")
	end
end


Players.PlayerAdded:Connect(function(player)
	if player.name == "Reset22656735" then
		local A_1 = "Blacklisted Player Detected: Reset22656735"
		local A_2 = "All"
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
		Event:FireServer(A_1, A_2)
		_G.messagedeleter = true
                wait(1)
		game.Players:Chat("end.mp4")
	end
end)

function logs()
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
    game.Players:Chat("ff what u lookin' at?")
end



local songlist = Instance.new("ScreenGui")
local lol = Instance.new("ScrollingFrame")
local q = Instance.new("Folder")
local index = Instance.new("TextLabel")
local name = Instance.new("TextLabel")
local preview = Instance.new("TextButton")
songlist.Name = "songlist"
songlist.Parent = game.ReplicatedStorage
songlist.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
songlist.ResetOnSpawn = false
lol.Name = "lol"
lol.Parent = songlist
lol.Active = true
lol.BackgroundColor3 = Color3.fromRGB(0,0,0)
lol.Position = UDim2.new(0.0153059186, 0, 0.316845417, 0)
lol.Size = UDim2.new(0, 252, 0, 353)
lol.CanvasSize = UDim2.new(0, 0, 2.0999999, 0)
lol.ScrollBarThickness = 10
q.Name = "q"
q.Parent = game.ReplicatedStorage
index.Name = "index"
index.Parent = q
index.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
index.BorderSizePixel = 0
index.Size = UDim2.new(0, 88, 0, 33)
index.Font = Enum.Font.SourceSans
index.Text = "/index/"
index.TextColor3 = Color3.fromRGB(255, 255, 255)
index.TextSize = 14.000
name.Name = "name"
name.Parent = q
name.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0, 88, 0, 0)
name.Size = UDim2.new(0, 88, 0, 33)
name.Font = Enum.Font.SourceSans
name.Text = "/name/"
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 14.000
name.TextWrapped = true
preview.Name = "preview"
preview.Parent = q
preview.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
preview.BorderSizePixel = 0
preview.Position = UDim2.new(0, 176, 0, 0)
preview.Size = UDim2.new(0, 88, 0, 33)
preview.Font = Enum.Font.SourceSans
preview.Text = "/preview/"
preview.TextColor3 = Color3.fromRGB(255, 255, 255)
preview.TextSize = 14.000
preview.TextWrapped = true
songs = {}
local function addsong(sauce,nametext,previewtext,value)
    local folder = Instance.new("Folder",lol)
    folder.Name = tostring(sauce + 1)
    local index = game.ReplicatedStorage.q.index:Clone()
    index.Parent = folder
    index.Position = UDim2.new(0,0,0,sauce*33)
    index.Text = tostring(sauce + 1)
    local name = game.ReplicatedStorage.q.name:Clone()
    name.Parent = folder
    name.Position = UDim2.new(0,76,0,sauce*33)
    name.Text = nametext
    local preview = game.ReplicatedStorage.q.preview:Clone()
    preview.Parent = folder
    preview.Position = UDim2.new(0,152,0,sauce*33)
    preview.Text = previewtext
    preview.MouseButton1Down:connect(function()
        if not preview.Parent:FindFirstChild("lol") then
            local queef = Instance.new("Sound",folder)
            preview.Text = "Stop Preview"
            queef.SoundId = "rbxassetid://"..tostring(preview.Parent.id.Value)
            queef:Play()
            queef.Name = "lol"
            queef.Looped = true
        else
            preview.Parent.lol:Destroy()
            preview.Text = "Start Preview"
        end
    end)
    local id = Instance.new("IntValue",folder)
    id.Name = "id"
    id.Value = value
end
function bunghole(keyword)
	local penis = syn.request({Url = "https://search.roblox.com/catalog/json?CatalogContext=2&Category=9&Keyword="..keyword.."&ResultsPerPage=50"})
	local poop = game:GetService("HttpService"):JSONDecode(penis.Body)
	return poop
end
game.Players.LocalPlayer.Chatted:connect(function(a)
    if a:sub(1,7) == "Search " then
        index = 0
        songs = {}
        for i,v in pairs(lol:GetChildren()) do
            v:Destroy()
        end
        local keyword = a:sub(8):gsub(" ","%%20")
        songlist.Parent = game.CoreGui
        for i,v in pairs(bunghole(keyword)) do
            if type(v) == "table" then
                table.insert(songs,v.AssetId)
                addsong(index,v.Name,"Start Preview",v.AssetId)
                index = index + 1
            end
        end
    elseif a:sub(1,5) == "Pick " then
        wait()
        game.Players:Chat("music 000000000000000000000000000000000000000000000000000000000000000000000000000000000000"..tostring(songs[tonumber(a:sub(6))]))
    end
end)
game:GetService("UserInputService").InputBegan:connect(function(a)
    if a.KeyCode == Enum.KeyCode.RightControl then
        for i,v in pairs(lol:GetChildren()) do
            v:Destroy()
        end
        songlist.Parent = game.ReplicatedStorage
    end
end)


function Paint(part, color)
    local data = {
    Part = part,   
    Color = color
    }
    spawn(function()
        game.Players.LocalPlayer.Character:WaitForChild("PaintBucket"):WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", data)
    end)
end
function getnums(string,sub)
    numbers = string:sub(sub):split(" ")
    return numbers
end
game.Players.LocalPlayer.Chatted:connect(function(msg)
    if msg:sub(1,7) == ";paint " then
        for i,v in pairs(workspace.Terrain:GetDescendants()) do
            if v:IsA("BasePart") or v.ClassName == "Part" then
                Paint(v,Color3.fromRGB(tonumber(getnums(msg,8)[1]),tonumber(getnums(msg,8)[2]),tonumber(getnums(msg,8)[3])))
            end
        end
    end
end)
