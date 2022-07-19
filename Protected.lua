--[[


 /$$   /$$                 /$$                   
| $$  | $$                | $$                   
| $$  | $$ /$$   /$$  /$$$$$$$  /$$$$$$  /$$$$$$ 
| $$$$$$$$| $$  | $$ /$$__  $$ /$$__  $$|____  $$
| $$__  $$| $$  | $$| $$  | $$| $$  \__/ /$$$$$$$
| $$  | $$| $$  | $$| $$  | $$| $$      /$$__  $$
| $$  | $$|  $$$$$$$|  $$$$$$$| $$     |  $$$$$$$
|__/  |__/ \____  $$ \_______/|__/      \_______/
           /$$  | $$                             
          |  $$$$$$/                             
           \______/                              
	Project Hydra (Hydra Hub)
	Made by RTLua, Deadless, and Kavo's UI Library
	With features such as Multi Game support
	
	Patches and Updates:
	-- Official ALPHA Release
	
	
	Please do not SKID this script. It is something my team worked hard on.


--]]

--// Murder Mystery 2 \\--
if game.PlaceId == 142823291 then
	-- Library Loadstring
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- This is load the Kavo UI library as a string
	-- Library UI
	local Window = Library.CreateLib("Project Hydra", "Ocean") -- This creates the library that includes the sections and tabs
	local Tab = Window:NewTab("Main")-- This creates a new tab in the library
	local Tab2 = Window:NewTab("Miscellaneous")
	local Tab3 = Window:NewTab("Admin Scripts")
	local CreditsTab = Window:NewTab("Credits")
	-- Tab 1
	local Section = Tab:NewSection("Character Modification") -- A section to make which used to separate every single buttons
	local Section2 = Tab:NewSection("Advanced Modifications")
	-- Tab 2
	local Tab2Section = Tab2:NewSection("Weapon Giver")
	-- Tab 3
	local Tab3Section = Tab3:NewSection("Admin Scripts")
	-- Credits Tab
	local CreditsSection = CreditsTab:NewSection("Credits")

	-- Sections

	-- Tab 1, Section 1
	Section:NewSlider("Health Hack", "Slide to set the amount of health you want", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MaxHealth = 500
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = s
	end)

	Section:NewSlider("Speed Hack", "Slide to set speed poggers", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = s
	end)

	Section:NewSlider("Jump Power Hack", "Slide to set your jump power", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").UseJumpPower = true
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = s
	end)

	-- Tab 1, Section 2

	Section2:NewToggle("Noclip", "Pass through walls", function(omfg)
		loadstring(game:HttpGet("https://pastebin.com/raw/2n9EJYk7", true))()
		print("noclip script ready")
	end)

	Section2:NewToggle("Fly", "Fly as if the game doenst have any anti cheat", function(omlg)
		loadstring(game:HttpGet("https://pastebin.com/raw/WtpHYdUt"))();
		print("fly script ready")
	end)

	Section2:NewButton("Suicide", "Kills your roblox character", function()
		local playerToSuicide = game.Players.LocalPlayer
		playerToSuicide.Character:FindFirstChildOfClass("Humanoid").Health = 0
		print("You just fucking commited a suicide, your a dumbass")
	end)

	-- Tab 2, Section 1
	Tab2Section:NewButton("BTool Destroy Tool", "Just for some fun :) Controls printed in console", function()
		loadstring(game:GetObjects("rbxassetid://282948276")[1].Source)() -- made by TheC0mmunity, a famous roblox hecker
		print("Btools Loaded, Press X so that itll start jamming some stuff once you click your left mouse button ;)")
	end)

	Tab2Section:NewToggle("Coin Farm + God", "Teleport to every coin", function(omg)
		local toggle = false

		if toggle == false then
			toggle = true
			print("Coin farm enabled")
		else
			toggle = false
			print("Coin farm disabled")
		end

		while toggle do wait(.25)
			local place = game.Workspace:GetChildren()	
			local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
			local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
			local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z

			for i,v in pairs(place) do	    
				local vChildren = v:GetChildren()
				for i,child in pairs(vChildren) do
					if child.Name == "CoinContainer" then

						if child.Coin_Server:FindFirstChild("Coin") ~= nil then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Coin_Server.Coin.CFrame
						else
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
							print("coin not enabled!!!")
							toggle = false
						end

					end
				end	
			end
		end

	end)

	Tab2Section:NewButton("Gun Drop Teleporter", "Teleports you whenever the gun drops", function()
		local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
		local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
		local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z	

		if workspace:FindFirstChild("GunDrop") ~= nil then

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("GunDrop").CFrame	
			wait(.25)	
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)

		else
			print("No gun yet")
		end
	end)

	Tab2Section:NewButton("Murder all (Only for murderer)", "This makes you kill all the innocents", function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Knife") ~= nil then -- Only works if you're the murderer

			local Players = game:GetService("Players")	
			for i, Victim in pairs(Players:GetPlayers()) do
				if Victim.Name ~= game.Players.LocalPlayer.Name then

					repeat wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Victim.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
					until
					Victim.Character.Humanoid.Health == 0

				end
			end

		else
			print("No victims killed")
		end
	end)

	-- Tab 3, Section 1

	Tab3Section:NewButton("Fate's Admin (LAGGY FOR POTATO DEVICES)", "FE Admin script", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
		print("Fate's admin loaded")
	end)

	Tab3Section:NewButton("Infinite Yield Admin", "FE Admin script 2", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
		print("Infinite Yield loaded")
	end)

	-- Credits Tab

	CreditsSection:NewLabel("Main Developer: RTLua/RTLua#2400")
	CreditsSection:NewLabel("Co-Developer: SkPython/Deadless#8554")
	CreditsSection:NewLabel("Server: dsc.gg/deadliness")
	CreditsSection:NewLabel("YouTube channel: https://www.youtube.com/c/RandomTroubleshooterLua")
	CreditsSection:NewLabel("Thank you for using Project Hydra! :)")

	--// Prison Life \\--
elseif game.PlaceId == 155615604 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Project Hydra", "Ocean")
	local Tab = Window:NewTab("LocalPlayer")
	local Section = Tab:NewSection("LocalPlayer")
	Section:NewSlider("Walkspeed", "Changes your walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	Section:NewSlider("JumpPower", "Changes your jumppower", 500, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)
	Section:NewToggle("Fly", "Allows you to fly", function(state)
		if state then
			local FlyingKey = Enum.KeyCode.B
			loadstring(game:HttpGet('https://raw.githubusercontent.com/zachisfunny/Fly-Script/main/Script'))()
		else
			local FlyingKey = Enum.KeyCode.B
			loadstring(game:HttpGet('https://raw.githubusercontent.com/zachisfunny/Fly-Script/main/Script'))()
		end
	end)
	Section:NewToggle("Infinite Jump", "Removes the jump limit", function(v)
		getgenv().infjump = v
		local Player = game:GetService'Players'.LocalPlayer;
		local UIS = game:GetService'UserInputService';
		_G.JumpHeight = 50;

		function Action(Object, Function) if Object ~= nil then Function(Object); end end

		UIS.InputBegan:connect(function(UserInput)
			if not getgenv().infjump then return end
			if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
				Action(Player.Character.Humanoid, function(self)
					if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
						Action(self.Parent.HumanoidRootPart, function(self)
							self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
						end)
					end
				end)
			end
		end)
	end)

	--SKRIPT HUB--
	local Scripts = Window:NewTab("Script Hub")
	local ScriptsSection = Scripts:NewSection("Scripts")
	ScriptsSection:NewButton("Infinite Yield Admin", "Gives you admin commands", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true)()
	end)
	ScriptsSection:NewButton("Basic ESP", "Allows you to see all players", function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/zachisfunny/ROBLOX-ESP/main/Script'),true))()
	end)
	ScriptsSection:NewButton("Fate's Admin", "Gives you admin commands", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua'),true)()
	end)
	local ScriptsSection = Scripts:NewSection("Prision Life")
	ScriptsSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
		local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
		local Event = game:GetService("Workspace").Remote.ItemHandler
		Event:InvokeServer(A_1)
	end)
	ScriptsSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
		local module = nil
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
		elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
		end
		if module ~= nil then
			module["MaxAmmo"] = math.huge
			module["CurrentAmmo"] = math.huge
			module["StoredAmmo"] = math.huge
			module["FireRate"] = 0.000001
			module["Spread"] = 0
			module["Range"] = math.huge
			module["Bullets"] = 10
			module["ReloadTime"] = 0.000001
			module["AutoFire"] = true
		end
	end)
	Section:NewKeybind("GUI Toggle", "Toggles the GUI", Enum.KeyCode.RightShift, function()
		Library:ToggleUI()
	end)
	--// Ninja Legends \\--
elseif game.PlaceId == 3956818381 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Project Hydra", "Ocean")
	local Tab = Window:NewTab("LocalPlayer")
	local Section = Tab:NewSection("LocalPlayer")
	Section:NewSlider("Walkspeed", "Changes your walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	Section:NewSlider("JumpPower", "Changes your jumppower", 500, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)
	Section:NewToggle("Fly", "Allows you to fly", function(state)
		if state then
			local FlyingKey = Enum.KeyCode.B
			loadstring(game:HttpGet('https://raw.githubusercontent.com/zachisfunny/Fly-Script/main/Script'))()
		else
			local FlyingKey = Enum.KeyCode.B
			loadstring(game:HttpGet('https://raw.githubusercontent.com/zachisfunny/Fly-Script/main/Script'))()
		end
	end)
	Section:NewToggle("Infinite Jump", "Removes the jump limit", function(v)
		getgenv().infjump = v
		local Player = game:GetService'Players'.LocalPlayer;
		local UIS = game:GetService'UserInputService';
		_G.JumpHeight = 50;

		function Action(Object, Function) if Object ~= nil then Function(Object); end end

		UIS.InputBegan:connect(function(UserInput)
			if not getgenv().infjump then return end
			if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
				Action(Player.Character.Humanoid, function(self)
					if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
						Action(self.Parent.HumanoidRootPart, function(self)
							self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
						end)
					end
				end)
			end
		end)
	end)

	--SKRIPT HUB--
	local Scripts = Window:NewTab("Script Hub")
	local ScriptsSection = Scripts:NewSection("Scripts")
	ScriptsSection:NewButton("Infinite Yield Admin", "Gives you admin commands", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true)()
	end)
	ScriptsSection:NewButton("Basic ESP", "Allows you to see all players", function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/zachisfunny/ROBLOX-ESP/main/Script'),true))()
	end)
	ScriptsSection:NewButton("Fate's Admin", "Gives you admin commands", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua'),true)()
	end)
	local ScriptsSection = Scripts:NewSection("Ninja Legends")
	ScriptsSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
		getgenv().autoswing = v
		while true do
			if not getgenv().autoswing then return end
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:FindFirstChild("ninjitsuGain") then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
					break
				end
			end
			local A_1 = "swingKatana"
			local Event = game:GetService("Players").LocalPlayer.ninjaEvent
			Event:FireServer(A_1)
			wait(0.1)
		end
	end)

	ScriptsSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
		getgenv().autosell = v
		while true do
			if getgenv().autoswing == false then return end
			game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.1)
			game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
			wait(0.1)
		end
	end)

	ScriptsSection:NewButton("Unlock all islands", "Unlocks all islands", function()
		local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			wait(0.1)
		end
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
	end)

	ScriptsSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
		getgenv().buyswords = v
		while true do
			if not getgenv().buyswords then return end
			local A_1 = "buyAllSwords"
			local A_2 = "Inner Peace Island"
			local Event = game:GetService("Players").LocalPlayer.ninjaEvent
			Event:FireServer(A_1, A_2)
			wait(0.5)
		end
	end)

	ScriptsSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
		getgenv().buybelts = v
		while true do
			if not getgenv().buybelts then return end
			local A_1 = "buyAllBelts"
			local A_2 = "Inner Peace Island"
			local Event = game:GetService("Players").LocalPlayer.ninjaEvent
			Event:FireServer(A_1, A_2)
			wait(0.5)
		end
	end)
	Section:NewKeybind("GUI Toggle", "Toggles the GUI", Enum.KeyCode.RightShift, function()
		Library:ToggleUI()
	end)

	-- Clone tycoon script --
elseif game.PlaceId == 413424176 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Project Hydra", "Ocean")
	local Tab = Window:NewTab("Main")
	local Section = Tab:NewSection("Character Modification")
	Section:NewLabel("NOT FINISHED YET :)")
else
	wait(3)
	print("Game is not listed!")
	wait(2)
	game.Players.LocalPlayer:Kick("Game is not listed on this hub, Please try again later")
end
