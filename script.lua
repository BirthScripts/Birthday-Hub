if game.PlaceId == 7800644383 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Birthday Hood v1.2 (UNTITLED HOOD)","Sentinel")
	-- Untitled Hood stuff
	local Workspace = game:GetService("Workspace")
	local Players = game.Players.LocalPlayer

	local Character = Players.Character




	function Buy(Object)
		local Object = Object
		local LockPicker = Workspace.Ignored.Shop[Object]
		Character.HumanoidRootPart.CFrame = LockPicker.Head.CFrame + Vector3.new(0, 3, 0)
		wait(0.5)
		fireclickdetector(LockPicker.ClickDetector)
		fireclickdetector(LockPicker.ClickDetector)
	end

	Buy("[Revolver] - $1300")

	wait(0.5)


	wait(0.5)

	game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
	"Reload",
	{
		Name = "[Revolver]",
		Parent = Game.Players.LocalPlayer.Backpack,
		ClassName = "Tool",
		Ammo = {Value = math.huge*9e9},
		MaxAmmo = {Value = 0},
		GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
		Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
	}
	)

	wait(2)



	_G.Aiden = Players --CHANGE NAME HERE

	_G.Amount = 8999999999999999999

	_G.Amount2 = 8999999999999999999
	---

	_G.Reset = 1

	_G.Reset2 = -8999999999999999999

	local args = {
		[1] = "Birthday Hood Executed. || .gg/kNxqGxkAUp",
		[2] = "All"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

	-- MAIN
	local Update = Window:NewTab("Updates")
	local UpdateSection = Update:NewSection("Updates")

	UpdateSection:NewToggle("Update to Version 1.2?", "check console if toggled", function(state)
		if state then
			print("On")
		else
			print("Off")
		end
	end)
	-- Cash
	local Cash = Window:NewTab("Cash")
	local CashSection = Cash:NewSection("Cash")
	-- Main


	CashSection:NewButton("Discord", "Official Discord server!", function()
		setclipboard('discord.gg/FkCJkuXzFy')
	end)



	CashSection:NewButton("Give 999999 Cash", "999999 Cash", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Currency,
			MaxAmmo = {Value = _G.Amount},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		)
	end)


	CashSection:NewButton("Reset Cash", "", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Currency,
			MaxAmmo = {Value = _G.Reset2},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		) 
	end)
	-- Armor And Wanted

	local ArmorAndWanted = Window:NewTab("Armor&Wanted")
	local ArmorAndWantedSection = ArmorAndWanted:NewSection("Armor&Wanted")


	ArmorAndWantedSection:NewButton("Give 999999 wanted", "999999 wanted", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].leaderstats.Wanted,
			MaxAmmo = {Value = _G.Amount2},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		) 
	end)

	ArmorAndWantedSection:NewButton("Reset Wanted", "", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].leaderstats.Wanted, --game:GetService("Players").SEDFUIY75W34UIHJ.leaderstats.Wanted
			MaxAmmo = {Value = _G.Reset},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		) 
	end)

	ArmorAndWantedSection:NewButton("Inf Armor", "Inf Armor!!", function()
		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer("Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = workspace.Players[_G.Aiden].BodyEffects.Armor,
			MaxAmmo = {Value = _G.Amount2},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		)
	end)

	ArmorAndWantedSection:NewButton("Reset Armor", "yes!", function()
		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer("Reload",
		{
			Name = "[Revolver]",
			Parent = game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = workspace.Players[_G.Aiden].BodyEffects.Armor,
			MaxAmmo = {Value = _G.Reset},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		)
	end)


	-- PLAYER MODS
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")

	PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)

	PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)

	PlayerSection:NewButton("Skinny", "RESET IF CLICKED", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Information.MuscleInformation,
			MaxAmmo = {Value = -999999999999999999999999999999999999999999999999999999999999999999999999999},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		) 
	end)


	PlayerSection:NewButton("Huge", "RESET IF CLICKED", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Information.MuscleInformation,
			MaxAmmo = {Value = 999999},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		) 
	end)

	PlayerSection:NewButton("Fix Size", "RESET IF CLICKED", function()

		game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
		"Reload",
		{
			Name = "[Revolver]",
			Parent = Game.Players.LocalPlayer.Backpack,
			ClassName = "Tool",
			Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Information.MuscleInformation,
			MaxAmmo = {Value = -0.5},
			GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
			Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
		}
		) 
	end)

	PlayerSection:NewButton("God Mode", "OP!!!", function()
		p = game.Players.LocalPlayer
		ch = p.Character

		ch.BodyEffects.Dead:Destroy()
	end)

	PlayerSection:NewButton("Birthday Hood Spam!", "yess", function()
		local args = {
			[1] = "join birthday hub lol .gg/kNxqGxkAUp",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end)

	PlayerSection:NewButton("Fly (PRESS X)", "", function()
		_G.Speed = 150

		_G.Key = Enum.KeyCode.X



		local UIS = game:GetService("UserInputService")

		local OnRender = game:GetService("RunService").RenderStepped



		local Player = game:GetService("Players").LocalPlayer

		local Character = Player.Character or Player.CharacterAdded:Wait()



		local Camera = workspace.CurrentCamera

		local Root = Character:WaitForChild("HumanoidRootPart")



		local C1, C2, C3;

		local UntitledHood = {Flying = false, Forward = false, Backward = false, Left = false, Right = false}

		C1 = UIS.InputBegan:Connect(function(Input)

			if Input.UserInputType == Enum.UserInputType.Keyboard then

				if Input.KeyCode == _G.Key then

					UntitledHood.Flying = not UntitledHood.Flying

					Root.Anchored = UntitledHood.Flying

				elseif Input.KeyCode == Enum.KeyCode.W then

					UntitledHood.Forward = true

				elseif Input.KeyCode == Enum.KeyCode.S then

					UntitledHood.Backward = true

				elseif Input.KeyCode == Enum.KeyCode.A then

					UntitledHood.Left = true

				elseif Input.KeyCode == Enum.KeyCode.D then

					UntitledHood.Right = true

				end

			end

		end)



		C2 = UIS.InputEnded:Connect(function(Input)

			if Input.UserInputType == Enum.UserInputType.Keyboard then

				if Input.KeyCode == Enum.KeyCode.W then

					UntitledHood.Forward = false

				elseif Input.KeyCode == Enum.KeyCode.S then

					UntitledHood.Backward = false

				elseif Input.KeyCode == Enum.KeyCode.A then

					UntitledHood.Left = false

				elseif Input.KeyCode == Enum.KeyCode.D then

					UntitledHood.Right = false

				end

			end

		end)



		C3 = Camera:GetPropertyChangedSignal("CFrame"):Connect(function()

			if UntitledHood.Flying then

				Root.CFrame = CFrame.new(Root.CFrame.Position, Root.CFrame.Position + Camera.CFrame.LookVector)

			end

		end)



		while true do 

			local Delta = OnRender:Wait()

			if UntitledHood.Flying then

				if UntitledHood.Forward then

					Root.CFrame = Root.CFrame + (Camera.CFrame.LookVector * (Delta * _G.Speed))

				end

				if UntitledHood.Backward then

					Root.CFrame = Root.CFrame + (-Camera.CFrame.LookVector * (Delta * _G.Speed))

				end

				if UntitledHood.Left then

					Root.CFrame = Root.CFrame + (-Camera.CFrame.RightVector * (Delta * _G.Speed))

				end

				if UntitledHood.Right then

					Root.CFrame = Root.CFrame + (Camera.CFrame.RightVector * (Delta * _G.Speed))

				end

			end

		end
	end)

	PlayerSection:NewButton("Inf Zoom", "op", function()
		game.Players.LocalPlayer.CameraMaxZoomDistance = 2000
	end)
	-- Scripts

	local Scripts = Window:NewTab("Scripts")
	local ScriptsSection = Scripts:NewSection("Scripts")


	ScriptsSection:NewButton("AimBot", "REAL!!!", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BirthScripts/Scripts/main/AIM'))()
	end)

	ScriptsSection:NewButton("Inf Yield", "", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)

	ScriptsSection:NewButton("Spy Chat", "spy chat!!!", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BirthScripts/Scripts/main/spy'))()
	end)

	ScriptsSection:NewButton("Animation Pack", "animation", function()
		while true do
			local Animate = game.Players.LocalPlayer.Character.Animate
			Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
			Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
			Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
			Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
			Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
			Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
			Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
			game.Players.LocalPlayer.Character.Humanoid.Jump = false
			wait(1)
		end
	end)

	-- SETTINGS

	local Settings = Window:NewTab("Settings")
	local SettingsSection = Settings:NewSection("Settings")

	SettingsSection:NewTextBox("Username", "TARGETS USERNAME", function(value)
		_G.Aiden = value
	end)

	SettingsSection:NewKeybind("Close/Open UI (K)", "very good very nice", Enum.KeyCode.K, function()
		Library:ToggleUI()
	end)

	-- Credits

	local Credits = Window:NewTab("Credits")
	local CreditsSection = Credits:NewSection("Credits")

	CreditsSection:NewButton("Birthday#1835", "Scripting Developer, Owner of Birth Hub", function()
		print("Birthday REAL")
	end)

	CreditsSection:NewButton("DaniXRTEAM", "Roblox Backdoor Scripter", function()
		print("Dani")
	end)

	CreditsSection:NewButton("Curry#7032", "God Mode, Reset cash and Cash Scripter", function()
		print("Curry#7032")
	end)

	CreditsSection:NewButton("Nigga4K9", "Inf Bullet and Crash server Scripter", function()
		print("nigga balls")
	end)
elseif game.PlaceId == 2788229376 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Birthday Hub v1.2 (Da Hood)", "Midnight")

	-- MAIN
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	MainSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(t)
		game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Name = 'SWAG MODE'
		game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = t
		if t == 16 then
			game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Name = 'Humanoid'
			game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = 16
		end
	end)

	MainSection:NewToggle("NoClip", "Noclip lol", function(t)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()
		setfflag("HumanoidParallelRemoveNoPhysics", "False")
		setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		if t == true then
			game:GetService('RunService'):BindToRenderStep("crash", 0 , function()
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end)
		elseif t == false then
			game:GetService('RunService'):UnbindFromRenderStep("crash")
		end
	end)

	MainSection:NewButton("Fly (X)", "Just fly mode", function()
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()

		localplayer = plr

		if workspace:FindFirstChild("Core") then
			workspace.Core:Destroy()
		end

		local Core = Instance.new("Part")
		Core.Name = "Core"
		Core.Size = Vector3.new(0.05, 0.05, 0.05)

		spawn(function()
			Core.Parent = workspace
			local Weld = Instance.new("Weld", Core)
			Weld.Part0 = Core
			Weld.Part1 = localplayer.Character.LowerTorso
			Weld.C0 = CFrame.new(0, 0, 0)
		end)

		workspace:WaitForChild("Core")

		local torso = workspace.Core
		flying = true
		local speed=7.5
		local keys={a=false,d=false,w=false,s=false}
		local e1
		local e2
		local function start()
			local pos = Instance.new("BodyPosition",torso)
			local gyro = Instance.new("BodyGyro",torso)
			pos.Name="EPIXPOS"
			pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			pos.position = torso.Position
			gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			gyro.cframe = torso.CFrame
			repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.cframe - gyro.cframe.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
					speed=7.5
				end
				if keys.w then
					new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0
				end
				if keys.s then
					new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0
				end
				if keys.d then
					new = new * CFrame.new(speed,0,0)
					speed=speed+0
				end
				if keys.a then
					new = new * CFrame.new(-speed,0,0)
					speed=speed+0
				end
				if speed>3.2 then
					speed=7.5
				end
				pos.position=new.p
				if keys.w then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
				else
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				end
			until flying == false
			if gyro then gyro:Destroy() end
			if pos then pos:Destroy() end
			flying=false
			localplayer.Character.Humanoid.PlatformStand=false
			speed=7.5
		end
		e1=mouse.KeyDown:connect(function(key)
			if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			elseif key=="x" then
				if flying==true then
					flying=false
				else
					flying=true
					start()
				end
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start() 		
	end)

	MainSection:NewButton("Hide User", "yes", function()
		if game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask") then
			game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChildWhichIsA("Model"):Destroy()
			game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChild('Handle'):Destroy()
		end
	end)

	MainSection:NewButton("Chat Logs", "ben", function()
		local LP = game.Players.LocalPlayer
		LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
		LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
	end)
	-- OP Stuff
	local OP = Window:NewTab("OP")
	local OPSection = OP:NewSection("OP")

	OPSection:NewButton("Aimlock", "thx to dimag", function()
		_G.KEY = "q"
		_G.PART = "LowerTorso"
		_G.PRED = 0.037
		_G.Frame = Vector3.new(0,0.53,0)
		_G.AIR = -0.5
		_G.SHIT = 0.1


		local CC = game:GetService "Workspace".CurrentCamera
		local Plr
		local enabled = false
		local accomidationfactor = nil
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
					_G.PART = "UpperTorso"
					_G.PRED = 0.037
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
	end)


	OPSection:NewToggle("Fist Reach", "thanks to dimag", function(e)
		if e == true then
			game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
				local success, err = pcall(function()
					if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
						for i,v in pairs(game:GetService('Players'):GetChildren()) do
							if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
								if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
									if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
										firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
									else
										firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
										firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
										firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
										firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
										firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
										firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
									end
								end
							end
						end
					end
				end)
			end)
		elseif e == false then
			game:GetService('RunService'):UnbindFromRenderStep("Reach")
		end
	end)


	OPSection:NewToggle("Auto Stomp", "thanks to dimag", function(r)
		if r == true then
			game:GetService('RunService'):BindToRenderStep("Auto-Stomp", 0 , function()
				game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
			end)
		elseif r == false then
			game:GetService('RunService'):UnbindFromRenderStep("Auto-Stomp")
		end
	end)

	OPSection:NewToggle("Anti Stomp", "thanks to dimag", function(x)
		if x == true then
			game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
				if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
					for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA('MeshPart') or v:IsA('Part') then
							v:Destroy()
						end
					end
					for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA('Accessory') then
							v.Handle:Destroy()
						end
					end
				end
			end)
		elseif x == false then
			game:GetService('RunService'):UnbindFromRenderStep("Anti-Stomp")
		end
	end)

	OPSection:NewToggle("Anti Slow", "", function(gh)
		if gh == true then
			game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
				if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
				if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
				if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
				if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
			end)
		elseif gh == false then
			game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
		end
	end)
	-- Teleport
	local Teleport = Window:NewTab("Teleport")
	local TeleportSection = Teleport:NewSection("Teleport")

	TeleportSection:NewButton("Admin Base", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.15, -39.6189, -887.957)
	end)

	TeleportSection:NewButton("Food Shop [Bank]", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-335.141, 23.7129, -298.029)
	end)


	TeleportSection:NewButton("Food Shop [Uphill]", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(298.477, 49.3129, -615.231)
	end)


	TeleportSection:NewButton("Food Shop [Taco]", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(583.96, 51.0917, -479.596)
	end)

	TeleportSection:NewButton("Food Shop [Hamburger]", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279.501, 22.6801, -803.887)
	end)

	TeleportSection:NewButton("Gun Shop [Uphill]", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.925, 48.1008, -621.23)
	end)

	TeleportSection:NewButton("Gun Shop [Armor]", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580.27, 8.34504, -734.832)
	end)

	TeleportSection:NewButton("Bank", "yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-438.689, 39.0127, -284.731)
	end)

	TeleportSection:NewButton("Police Station","yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-263.919, 21.8302, -112.858)
	end)

	TeleportSection:NewButton("Fire Department","yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-129.534, 27.842, -113.062)
	end)

	TeleportSection:NewButton("Church","yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.53, 21.7803, -80.2361)
	end)

	TeleportSection:NewButton("Casino","yes", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-904.457, 24.7803, -156.994)
	end)
	-- More stuff
	local Others = Window:NewTab("Random")
	local OthersSection = Others:NewSection("Random")

	OthersSection:NewButton("Animation Pack","yes", function()
		local Folder = Instance.new('Folder', game:GetService("Workspace"))
		local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
		local ScrollingFrame = AnimationPack.ScrollingFrame
		local CloseButton = AnimationPack.CloseButton

		AnimationPack.Visible = true

		local LeanAnimation = Instance.new("Animation", Folder)
		LeanAnimation.Name = "LeanAnimation"
		LeanAnimation.AnimationId = "rbxassetid://3152375249"
		local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

		local LayAnimation = Instance.new("Animation", Folder)
		LayAnimation.Name = "LayAnimation"
		LayAnimation.AnimationId = "rbxassetid://3152378852"
		local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

		local Dance1Animation = Instance.new("Animation", Folder)
		Dance1Animation.Name = "Dance1Animation"
		Dance1Animation.AnimationId = "rbxassetid://3189773368"
		local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

		local Dance2Animation = Instance.new("Animation", Folder)
		Dance2Animation.Name = "Dance2Animation"
		Dance2Animation.AnimationId = "rbxassetid://3189776546"
		local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

		local GreetAnimation = Instance.new("Animation", Folder)
		GreetAnimation.Name = "GreetAnimation"
		GreetAnimation.AnimationId = "rbxassetid://3189777795"
		local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

		local PrayingAnimation = Instance.new("Animation", Folder)
		PrayingAnimation.Name = "PrayingAnimation"
		PrayingAnimation.AnimationId = "rbxassetid://3487719500"
		local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Lean" then
					v.Name = "LeanButton"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Lay" then
					v.Name = "LayButton"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Dance1" then
					v.Name = "Dance1Button"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Dance2" then
					v.Name = "Dance2Button"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Greet" then
					v.Name = "GreetButton"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Praying" then
					v.Name = "PrayingButton"
				end
			end
		end

		function Stop()
			Lay:Stop()
			Lean:Stop()
			Dance1:Stop()
			Dance2:Stop()
			Greet:Stop()
			Praying:Stop()
		end

		local LeanTextButton = ScrollingFrame.LeanButton
		local LayTextButton = ScrollingFrame.LayButton
		local Dance1TextButton = ScrollingFrame.Dance1Button
		local Dance2TextButton = ScrollingFrame.Dance2Button
		local GreetTextButton = ScrollingFrame.GreetButton
		local PrayingTextButton = ScrollingFrame.PrayingButton

		AnimationPack.MouseButton1Click:Connect(function()
			if ScrollingFrame.Visible == false then
				ScrollingFrame.Visible = true
				CloseButton.Visible = true
			end
		end)
		CloseButton.MouseButton1Click:Connect(function()
			if ScrollingFrame.Visible == true then
				ScrollingFrame.Visible = false
				CloseButton.Visible = false
			end
		end)
		LeanTextButton.MouseButton1Click:Connect(function()
			Stop()
			Lean:Play()
		end)
		LayTextButton.MouseButton1Click:Connect(function()
			Stop()
			Lay:Play()
		end)
		Dance1TextButton.MouseButton1Click:Connect(function()
			Stop()
			Dance1:Play()
		end)
		Dance2TextButton.MouseButton1Click:Connect(function()
			Stop()
			Dance2:Play()
		end)
		GreetTextButton.MouseButton1Click:Connect(function()
			Stop()
			Greet:Play()
		end)
		PrayingTextButton.MouseButton1Click:Connect(function()
			Stop()
			Praying:Play()
		end)

		game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
			Stop()
		end)
		game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
			Stop()
			repeat
				wait()
			until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
			wait(1)
			local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
			local ScrollingFrame = AnimationPack.ScrollingFrame
			local CloseButton = AnimationPack.CloseButton

			AnimationPack.Visible = true

			local LeanAnimation = Instance.new("Animation", Folder)
			LeanAnimation.Name = "LeanAnimation"
			LeanAnimation.AnimationId = "rbxassetid://3152375249"
			local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

			local LayAnimation = Instance.new("Animation", Folder)
			LayAnimation.Name = "LayAnimation"
			LayAnimation.AnimationId = "rbxassetid://3152378852"
			local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

			local Dance1Animation = Instance.new("Animation", Folder)
			Dance1Animation.Name = "Dance1Animation"
			Dance1Animation.AnimationId = "rbxassetid://3189773368"
			local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

			local Dance2Animation = Instance.new("Animation", Folder)
			Dance2Animation.Name = "Dance2Animation"
			Dance2Animation.AnimationId = "rbxassetid://3189776546"
			local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

			local GreetAnimation = Instance.new("Animation", Folder)
			GreetAnimation.Name = "GreetAnimation"
			GreetAnimation.AnimationId = "rbxassetid://3189777795"
			local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

			local PrayingAnimation = Instance.new("Animation", Folder)
			PrayingAnimation.Name = "PrayingAnimation"
			PrayingAnimation.AnimationId = "rbxassetid://3487719500"
			local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Lean" then
						v.Name = "LeanButton"
					end
				end
			end

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Lay" then
						v.Name = "LayButton"
					end
				end
			end

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Dance1" then
						v.Name = "Dance1Button"
					end
				end
			end

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Dance2" then
						v.Name = "Dance2Button"
					end
				end
			end

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Greet" then
						v.Name = "GreetButton"
					end
				end
			end

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Praying" then
						v.Name = "PrayingButton"
					end
				end
			end

			function Stop()
				Lay:Stop()
				Lean:Stop()
				Dance1:Stop()
				Dance2:Stop()
				Greet:Stop()
				Praying:Stop()
			end

			local LeanTextButton = ScrollingFrame.LeanButton
			local LayTextButton = ScrollingFrame.LayButton
			local Dance1TextButton = ScrollingFrame.Dance1Button
			local Dance2TextButton = ScrollingFrame.Dance2Button
			local GreetTextButton = ScrollingFrame.GreetButton
			local PrayingTextButton = ScrollingFrame.PrayingButton

			AnimationPack.MouseButton1Click:Connect(function()
				if ScrollingFrame.Visible == false then
					ScrollingFrame.Visible = true
					CloseButton.Visible = true
				end
			end)
			CloseButton.MouseButton1Click:Connect(function()
				if ScrollingFrame.Visible == true then
					ScrollingFrame.Visible = false
					CloseButton.Visible = false
				end
			end)
			LeanTextButton.MouseButton1Click:Connect(function()
				Stop()
				Lean:Play()
			end)
			LayTextButton.MouseButton1Click:Connect(function()
				Stop()
				Lay:Play()
			end)
			Dance1TextButton.MouseButton1Click:Connect(function()
				Stop()
				Dance1:Play()
			end)
			Dance2TextButton.MouseButton1Click:Connect(function()
				Stop()
				Dance2:Play()
			end)
			GreetTextButton.MouseButton1Click:Connect(function()
				Stop()
				Greet:Play()
			end)
			PrayingTextButton.MouseButton1Click:Connect(function()
				Stop()
				Praying:Play()
			end)
		end)
	end)

	OthersSection:NewButton("Fake Monaco (M)","very not sus", function()
		plr = game:GetService('Players').LocalPlayer
		down = true

		function onButton1Down(mouse)
			down = true
			while down do
				if not down then break end
				local char = plr.Character
				char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
				wait()
			end
		end

		function onButton1Up(mouse)
			down = false
		end

		function onSelected(mouse)
			mouse.KeyDown:connect(function(m) if m:lower()=="m"then onButton1Down(mouse)end end)
			mouse.KeyUp:connect(function(m) if m:lower()=="m"then onButton1Up(mouse)end end)
		end
		onSelected(game.Players.LocalPlayer:GetMouse())
	end)

	---------------
	for i,v in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
		local FirstButton = AutoBuyPage.AddButton(v.Name, function()
			local Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local Teleport = v:FindFirstChild("Head")
			if Teleport then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Teleport.CFrame
				local CD = v:FindFirstChild("ClickDetector")
				if CD then
					wait(0.75)
					fireclickdetector(CD)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
				end
			end
		end)
	end

	OthersSection:NewButton("Try Hard Animation","try hard", function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)


	OthersSection:NewKeybind("Close/Open UI (K)", "very good very nice", Enum.KeyCode.K, function()
		Library:ToggleUI()
	end)
end