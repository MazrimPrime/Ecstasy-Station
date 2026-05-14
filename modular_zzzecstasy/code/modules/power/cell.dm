/obj/item/stock_parts/power_store/cell/vortex
	name = "vortex power cell"
	desc = "A rechargeable transdimensional power cell."
	icon = 'modular_zzzecstasy/icons/obj/machines/cell_charger.dmi'
	icon_state = "vcell"
	charging_icon = "vcell_in"
	emp_damage_modifier = 6
	maxcharge = STANDARD_CELL_CHARGE * 80
	custom_materials = list(/datum/material/glass=SMALL_MATERIAL_AMOUNT*6)
	chargerate = STANDARD_CELL_RATE * 3

	ecstasy_item = TRUE

/obj/item/stock_parts/power_store/cell/vortex/empty
	empty = TRUE
