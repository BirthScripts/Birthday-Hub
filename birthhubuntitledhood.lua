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

	PlayerSection:NewButton("Aimlock", "true", function()
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
end