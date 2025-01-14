function gadget:GetInfo()
    return {
        name      = "resurrected param",
        desc      = "marks resurrected units as resurrected.",
        author    = "Floris",
        date      = "25 oct 2015",
        license   = "GNU GPL, v2 or later",
        layer     = 5,
        enabled   = true
    }
end

if (gadgetHandler:IsSyncedCode()) then

    local canResurrect = {}
    for unitDefID, unitDef in pairs(UnitDefs) do
        if unitDef.canResurrect then
            canResurrect[unitDefID] = true
        end
    end

    -- detect resurrected units here
	function gadget:UnitCreated(unitID, unitDefID, unitTeam, builderID)
		if builderID and canResurrect[Spring.GetUnitDefID(builderID)] then
			Spring.SetUnitRulesParam(unitID, "resurrected", 1, {inlos=true})
		end
		-- See: https://github.com/beyond-all-reason/spring/pull/471
		if builderID and Spring.GetUnitCurrentCommand(builderID) == CMD.RESURRECT then
			Spring.SetUnitHealth(unitID, Spring.GetUnitHealth(unitID) * 0.05)
		end
	end
end
