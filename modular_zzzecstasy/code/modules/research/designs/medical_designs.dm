/datum/design/vortex_beaker
	name = "Vortex Beaker"
	desc = "A vortex beaker, powered by experimental alien technology. Can hold up to 900 units."
	id = "vortex_beaker"
	build_type = PROTOLATHE | AWAY_LATHE
	reagents_list = list(/datum/reagent/liquid_dark_matter = 50)
	materials = list(/datum/material/glass =SHEET_MATERIAL_AMOUNT * 2.5, /datum/material/plastic =SHEET_MATERIAL_AMOUNT * 1.5, /datum/material/diamond =HALF_SHEET_MATERIAL_AMOUNT, /datum/material/bluespace =HALF_SHEET_MATERIAL_AMOUNT)
	category = list(
		RND_CATEGORY_EQUIPMENT + RND_SUBCATEGORY_EQUIPMENT_CHEMISTRY
	)
	build_path = /obj/item/reagent_containers/cup/beaker/vortex
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL | DEPARTMENT_BITFLAG_SCIENCE

