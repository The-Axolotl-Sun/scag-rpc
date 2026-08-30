
--[=[
	@class Presets
	A collection of preset string keys used with ScagJPT.
	
	This is to be used by The Axolotl Sun developers and is not intended for public use.
]=]
local Presets = {}

--[=[
	@prop Say { [string]: string }
	@within Presets
	A dictionary of preset keys for use with the Say RPC.

	**Generic**
	- `player_died`

	**Regretevator**
	- `floppy_shoppy`
	- `floppy_shoppy_basement`

	**Characters Spotted**
	- `bive_spotted`
	- `drretro_spotted`
	- `fleshcousin_spotted`
	- `folly_spotted`
	- `gnarpy_spotted`
	- `infected_spotted`
	- `lampert_spotted`
	- `mark_spotted`
	- `melanie_spotted`
	- `mozelle_spotted`
	- `mr_spotted`
	- `nan_spotted`
	- `null_spotted`
	- `partynoob_spotted`
	- `pest_spotted`
	- `pilby_spotted`
	- `prototype_spotted`
	- `reddy_spotted`
	- `scag_spotted`
	- `split_spotted`
	- `spud_spotted`
	- `stat_spotted`
	- `unpleasant_spotted`
	- `wallter_spotted`
]=]

Presets.Say = {
	-- Generic
	player_died = "player_died",
	
	-- Regretevator
	floppy_shoppy = "floppy_shoppy",
	floppy_shoppy_basement = "floppy_shoppy_basement",
	
	-- Characters spotted
	bive_spotted = "bive_spotted",
	drretro_spotted = "drretro_spotted",
	fleshcousin_spotted = "fleshcousin_spotted",
	folly_spotted = "folly_spotted",
	gnarpy_spotted = "gnarpy_spotted",
	infected_spotted = "infected_spotted",
	lampert_spotted = "lampert_spotted",
	mark_spotted = "mark_spotted",
	melanie_spotted = "melanie_spotted",
	mozelle_spotted = "mozelle_spotted",
	mr_spotted = "mr_spotted",
	nan_spotted = "nan_spotted",
	null_spotted = "null_spotted",
	partynoob_spotted = "partynoob_spotted",
	pest_spotted = "pest_spotted",
	pilby_spotted = "pilby_spotted",
	prototype_spotted = "prototype_spotted",
	reddy_spotted = "reddy_spotted",
	scag_spotted = "scag_spotted",
	split_spotted = "split_spotted",
	spud_spotted = "spud_spotted",
	stat_spotted = "stat_spotted",
	unpleasant_spotted = "unpleasant_spotted",
	wallter_spotted = "wallter_spotted",
	
	-- Meleeniacs
}

Presets.SetImage = {
	[33333] = "33333",
	DSC02017 = "DSC02017",
	Jermbo = "Jermbo",
	Screenshot_2026_08_18_174541 = "Screenshot 2026-08-18 174541",
	YOU_KILLED_TUNG_WHEN_YOU_DECOMPILED_THIS = "YOU KILLED TUNG WHEN YOU DECOMPILED THIS",
	dfgdfhgghdf = "dfgdfhgghdf",
	epic_floppy_bg = "epic_floppy_bg",
	face = "face",
	fishii_icon_cute = "fishii_icon_cute",
	game_icon = "game_icon",
	icon_doors = "icon_doors",
	iconn = "iconn",
	madinstance = "madinstance",
	makos = "makos",
	nicant = "nicant",
	nyan_cred = "nyan_cred",
	poob_gore = "poob gore",
	rarely = "rarely",
	yeucdance = "yeucdance",
	ywecc_yas = "ywecc_yas",
}

Presets.PlayAudio = {
	womp = "womp",
	dah = "dah",
	wind_noise = "wind_noise"
}

return Presets
