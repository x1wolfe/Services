--Services
PlayerService = cloneref(game:GetService("Players"))
RunService = cloneref(game:GetService("RunService"))
ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
MarketplaceService = cloneref(game:GetService("MarketplaceService"))
InsertService = cloneref(game:GetService("InsertService"))
TweenService = cloneref(game:GetService("TweenService"))

--Variables
LocalPlayer = cloneref(PlayerService.LocalPlayer)
Character = cloneref(LocalPlayer.Character)
Backpack = cloneref(LocalPlayer.Backpack)

function GetDistance(p1,p2)
    local Distance = math.round((p1.Position - p2.Position).magnitude)
    return Distance
end

function GetGameName()
	return MarketplaceService:GetProductInfo(game.PlaceId).Name
end

function RandomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

function GetClosestPlayer(distance)
	for i,v in pairs(PlayerService:GetPlayers()) do
	if v.Name ~= LocalPlayer.Name then
		local char = v.Character
 	 if char.Humanoid.Health ~= 0 and GetDistance(Character.HumanoidRootPart,char.HumanoidRootPart) <= distance then
return char
	 end
	end
	end
	end
