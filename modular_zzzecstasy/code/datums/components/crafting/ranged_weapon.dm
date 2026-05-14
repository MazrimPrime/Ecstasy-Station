/datum/crafting_recipe/modified_nail_gun
	name = "Auto Nail Gun"
	result = /obj/item/gun/ballistic/automatic/nail_gun/modified
	tool_behaviors = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(
		/obj/item/gun/ballistic/automatic/nail_gun = 1,
		/obj/item/stock_parts/capacitor/super = 1,
		/obj/item/stack/cable_coil = 5,
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/deagle_prime/New()
	..()
	blacklist += subtypesof(/obj/item/gun/ballistic/automatic/nail_gun)
