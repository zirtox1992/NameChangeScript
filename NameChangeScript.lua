local frame = CreateFrame("FRAME", "NameChangeScripts")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
local function eventHandler(self, event, ...)

	-- Put new name here
	NewName = "YOURNEWNAMEHERE"
	
	-- Change Player UnitFrame
	local function ChangePlayerName(self)
		PlayerFrame.name:SetText(NewName)
	end
	PlayerFrame:SetScript("OnUpdate", ChangePlayerName)
	
	-- Change Target UnitFrame Name
	TFNC = CreateFrame("Frame", "TargetFrameNameChange")
	local function ChangeTargetName(self)
		local PN = GetUnitName("player")
		local TN = GetUnitName("target")
		if PN == TN then
			TargetFrame.name:SetText(NewName)
		end
	end
	TFNC:SetScript("OnUpdate", ChangeTargetName)
		
end
frame:SetScript("OnEvent", eventHandler)
