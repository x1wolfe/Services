--Services
PlayerService = cloneref(game:GetService("Players"))
RunService = cloneref(game:GetService("RunService"))
ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
MarketplaceService = cloneref(game:GetService("MarketplaceService"))

--Variables
LocalPlayer = cloneref(PlayerService.LocalPlayer)
Character = cloneref(LocalPlayer.Character)
Humanoid = cloneref(Character.Humanoid)
Backpack = cloneref(LocalPlayer.Backpack)
Mouse = cloneref(LocalPlayer:GetMouse())

--Functions
function GetDistance(p1,p2)
    local Distance = math.round((p1.Position - p2.Position).magnitude)
    return Distance
end

function GetGameName()
	return MarketplaceService:GetProductInfo(game.PlaceId).Name
end

function GetClosestPlayer(distance,from,to)
	for i,v in pairs(PlayerService:GetPlayers()) do
	if v.Name ~= LocalPlayer.Name then
		local Target = v.Character:FindFirstChild(to)
 	 if GetDistance(from,Target) <= distance then
return char
	 end
	end
	end
	end