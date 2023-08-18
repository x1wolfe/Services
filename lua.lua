--Services
local PlayerService = cloneref(game:GetService("Players"))
local RunService = cloneref(game:GetService("RunService"))
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))

--Variables
local LocalPlayer = cloneref(PlayerService.LocalPlayer)
local Character = cloneref(LocalPlayer.Character)
local Backpack = cloneref(LocalPlayer.Backpack)

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end