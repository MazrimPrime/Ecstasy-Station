/obj/item/stock_parts/power_store/battery/vortex
	name = "vortex megacell"
	desc = "A rechargeable transdimensional megacell."
	icon = 'modular_zzzecstasy/icons/obj/machines/cell_charger.dmi'
	icon_state = "vcellbig"
	maxcharge = STANDARD_BATTERY_CHARGE * 80
	custom_materials = list(/datum/material/glass=SMALL_MATERIAL_AMOUNT*6)
	chargerate = STANDARD_BATTERY_RATE * 3

/obj/item/stock_parts/power_store/battery/vortex/empty
	empty = TRUE
