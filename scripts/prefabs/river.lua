local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}

local start_inv = {
}

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "river_speed_mod", 1)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "river_speed_mod")
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "river.tex" )
end

local master_postinit = function(inst)
	inst.soundsname = "willow"

	inst.components.health:SetMaxHealth(400)
	inst.components.hunger:SetMax(300)
	inst.components.sanity:SetMax(300)
	
    inst.components.combat.damagemultiplier = 1

	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
end

return MakePlayerCharacter("river", prefabs, assets, common_postinit, master_postinit, start_inv)
