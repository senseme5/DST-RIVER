local assets =
{
	Asset( "ANIM", "anim/river.zip" ),
	Asset( "ANIM", "anim/ghost_river_build.zip" ),
}

local skins =
{
	normal_skin = "river",
	ghost_skin = "ghost_river_build",
}

return CreatePrefabSkin("river_none",
{
	base_prefab = "river",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"RIVER", "CHARACTER", "BASE"},
	build_name = "river",
	rarity = "Common",
})