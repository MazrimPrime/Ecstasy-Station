////////////////////////////////////////
//////////////////Power/////////////////
////////////////////////////////////////

/datum/design/vortex_cell
	name = "Vortex Power Cell"
	desc = "A power cell that holds 800 KW of energy."
	id = "vortex_cell"
	build_type = PROTOLATHE | AWAY_LATHE | MECHFAB
	reagents_list = list(/datum/reagent/liquid_dark_matter = 5, /datum/reagent/teslium/energized_jelly = 15)
	materials = list(/datum/material/iron = SMALL_MATERIAL_AMOUNT * 8, /datum/material/gold = SMALL_MATERIAL_AMOUNT * 1.2, /datum/material/glass = SMALL_MATERIAL_AMOUNT * 1.6, /datum/material/diamond = SMALL_MATERIAL_AMOUNT * 1.6, /datum/material/titanium =SMALL_MATERIAL_AMOUNT * 3, /datum/material/bluespace =SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/stock_parts/power_store/cell/vortex/empty
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE | DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/vortex_battery
	name = "Vortex Megacell"
	desc = "A megacell that holds 80 MJ of energy."
	id = "vortex_battery"
	build_type = PROTOLATHE | AWAY_LATHE | MECHFAB
	reagents_list = list(/datum/reagent/liquid_dark_matter = 10, /datum/reagent/teslium/energized_jelly = 25)
	materials = list(/datum/material/iron = SMALL_MATERIAL_AMOUNT * 12, /datum/material/gold = SMALL_MATERIAL_AMOUNT * 1.2, /datum/material/glass = SMALL_MATERIAL_AMOUNT * 6, /datum/material/diamond = SMALL_MATERIAL_AMOUNT * 1.6, /datum/material/titanium =SMALL_MATERIAL_AMOUNT * 3, /datum/material/bluespace =SMALL_MATERIAL_AMOUNT)
	construction_time = 5 SECONDS
	build_path = /obj/item/stock_parts/power_store/battery/vortex/empty
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE | DEPARTMENT_BITFLAG_ENGINEERING
