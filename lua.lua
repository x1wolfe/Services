--Services
PlayerService = cloneref(game:GetService("Players"))
RunService = cloneref(game:GetService("RunService"))
ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))

--Variables
LocalPlayer = cloneref(PlayerService.LocalPlayer)
Character = cloneref(LocalPlayer.Character)
Backpack = cloneref(LocalPlayer.Backpack)

for i,AllPlayers in pairs(PlayerService:GetChildren()) do
    print(v)
    end

for i,AllCharacters in pairs(PlayerService.Character:GetDescendant()) do
	print(v)
end

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end