PrefabFiles = {
	"river",
	"river_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/river.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/river.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/river.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/river.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/river_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/river_silho.xml" ),

    Asset( "IMAGE", "bigportraits/river.tex" ),
    Asset( "ATLAS", "bigportraits/river.xml" ),
	
	Asset( "IMAGE", "images/map_icons/river.tex" ),
	Asset( "ATLAS", "images/map_icons/river.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_river.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_river.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_river.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_river.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_river.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_river.xml" ),
	
	Asset( "IMAGE", "images/names_river.tex" ),
    Asset( "ATLAS", "images/names_river.xml" ),
	
	Asset( "IMAGE", "images/names_gold_river.tex" ),
    Asset( "ATLAS", "images/names_gold_river.xml" ),
	
    Asset( "IMAGE", "bigportraits/river_none.tex" ),
    Asset( "ATLAS", "bigportraits/river_none.xml" ),

}

AddMinimapAtlas("images/map_icons/river.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

STRINGS.CHARACTER_TITLES.river = "Dark Lord of the Abyss"
STRINGS.CHARACTER_NAMES.river = "River"
STRINGS.CHARACTER_DESCRIPTIONS.river = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.river = "\"...I found the silence under water really cozy\""

STRINGS.CHARACTERS.RIVER = require "speech_river"

STRINGS.NAMES.RIVER = "River"

AddModCharacter("river", "FEMALE")

