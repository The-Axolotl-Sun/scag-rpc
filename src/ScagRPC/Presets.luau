
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

return Presets