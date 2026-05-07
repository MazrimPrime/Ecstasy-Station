/datum/design/nail_gun
	name = "Nail Gun"
	desc = "A electric nail gun with interchangeable mags."
	id = "nail_gun"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron =SHEET_MATERIAL_AMOUNT*1.75, /datum/material/silver =HALF_SHEET_MATERIAL_AMOUNT * 1.5, /datum/material/titanium =SHEET_MATERIAL_AMOUNT*1.25)
	build_path = /obj/item/gun/ballistic/automatic/nail_gun
	category = list(
		RND_CATEGORY_TOOLS + RND_SUBCATEGORY_TOOLS_ENGINEERING_ADVANCED
	)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/nail_gun_mag
	name = "Nail Gun Mag"
	desc = "A interchangeable 60 rnd mag for nail guns."
	id = "nail_gun_mag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron =SHEET_MATERIAL_AMOUNT*0.75)
	build_path = /obj/item/ammo_box/magazine/nail_gun_mag
	category = list(
		RND_CATEGORY_TOOLS + RND_SUBCATEGORY_TOOLS_ENGINEERING_ADVANCED
	)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING
