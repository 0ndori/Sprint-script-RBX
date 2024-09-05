-- Put this script in StarterPlayer and then StarterCharacterScripts

local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local camera = game.Workspace.CurrentCamera
local runSpeed = 32
local walkSpeed = 16
local isSprinting = false

game:GetService("UserInputService").InputBegan:Connect(function(inputObject)
	if inputObject.KeyCode == Enum.KeyCode.LeftShift then
		shiftToSprint()
	end
end)

game:GetService("UserInputService").InputEnded:Connect(function(inputObject)
	if inputObject.KeyCode == Enum.KeyCode.LeftShift then
		shiftToSprint()
	end
end)

function shiftToSprint()
	if isSprinting then
		humanoid.WalkSpeed = walkSpeed
		camera.FieldOfView = 70
		isSprinting = false
	else
		humanoid.WalkSpeed = runSpeed
		camera.FieldOfView = 60
		isSprinting = true
	end
end
