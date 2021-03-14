local s123 = Instance.new("ScreenGui")

--Properties:
s123.Enabled = true
s123.Name = "s123"
s123.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
s123.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
s123.ResetOnSpawn = true
-- Scripts:

local function NHWGP_fake_script() -- s123.LocalScript 
	local script = Instance.new('LocalScript', s123)

	local UserInputService = game:GetService("UserInputService")
	local plr = game.Players.LocalPlayer
	
	local shiftKeyL = Enum.KeyCode.LeftShift
	
	local hum = plr.Character:WaitForChild('Humanoid')
	
	
	local function IsShiftKeyDown()
		return UserInputService:IsKeyDown(shiftKeyL)
	end
	
	
	local function Input(input, gameProcessedEvent)
		if not IsShiftKeyDown() then
			print('realaesed')
			hum.WalkSpeed = 16
		else
			print('shift down')
			hum.WalkSpeed = 24
            
		end
	end
	
	UserInputService.InputBegan:Connect(Input)
	
end
coroutine.wrap(NHWGP_fake_script)()
print('injected walkspeed')
