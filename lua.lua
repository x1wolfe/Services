--Services
PlayerService = cloneref(game:GetService("Players"))
RunService = cloneref(game:GetService("RunService"))
ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))

--Variables
LocalPlayer = cloneref(PlayerService.LocalPlayer)
Character = cloneref(LocalPlayer.Character)
Backpack = cloneref(LocalPlayer.Backpack)

local function GetDistance(p1,p2)
    local Distance = (p1.Position - p2.Position).magnitude
    return Distance
end

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end