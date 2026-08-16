////////////////////////////////////////
/////////////Stock Parts////////////////
////////////////////////////////////////

/datum/design/giga_capacitor
	name = "Giga Capacitor"
	desc = "A stock part used in the construction of various devices."
	id = "giga_capacitor"
	build_type = PROTOLATHE | AWAY_LATHE
	reagents_list = list(/datum/reagent/liquid_dark_matter = 5, /datum/reagent/teslium/energized_jelly = 10)
	materials = list(/datum/material/iron =SMALL_MATERIAL_AMOUNT * 2, /datum/material/glass =SMALL_MATERIAL_AMOUNT * 2, /datum/material/gold =SMALL_MATERIAL_AMOUNT, /datum/material/diamond =SMALL_MATERIAL_AMOUNT, /datum/material/bluespace = SMALL_MATERIAL_AMOUNT*0.5, /datum/material/plasma = SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/stock_parts/capacitor/giga
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	lathe_time_factor = 0.2
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE

/datum/design/unilatera_triphasic_scanning
	name = "Unilatera Triphasic Scanning Module"
	desc = "A stock part used in the construction of various devices."
	id = "unilatera_triphasic_scanning"
	build_type = PROTOLATHE | AWAY_LATHE
	reagents_list = list(/datum/reagent/liquid_dark_matter = 5, /datum/reagent/teslium/energized_jelly = 5)
	materials = list(/datum/material/iron =SMALL_MATERIAL_AMOUNT * 2, /datum/material/glass =SMALL_MATERIAL_AMOUNT * 2, /datum/material/diamond = SMALL_MATERIAL_AMOUNT*0.3, /datum/material/bluespace = SMALL_MATERIAL_AMOUNT*0.5, /datum/material/plasma = SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/stock_parts/scanning_module/unilatera
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	lathe_time_factor = 0.2
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE

/datum/design/atto_servo
	name = "Atto Servo"
	desc = "A stock part used in the construction of various devices."
	id = "atto_servo"
	build_type = PROTOLATHE | AWAY_LATHE
	reagents_list = list(/datum/reagent/liquid_dark_matter = 5, /datum/reagent/teslium/energized_jelly = 10)
	materials = list(/datum/material/iron =SMALL_MATERIAL_AMOUNT * 2, /datum/material/diamond = SMALL_MATERIAL_AMOUNT*0.3, /datum/material/titanium = SMALL_MATERIAL_AMOUNT*0.3, /datum/material/bluespace = SMALL_MATERIAL_AMOUNT*0.5, /datum/material/plasma = SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/stock_parts/servo/atto
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	lathe_time_factor = 0.2
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE

/datum/design/super_quad_ultra_micro_laser
	name = "Super Quad-Ultra Micro-Laser"
	desc = "A stock part used in the construction of various devices."
	id = "super_quad_ultra_micro_laser"
	build_type = PROTOLATHE | AWAY_LATHE
	reagents_list = list(/datum/reagent/liquid_dark_matter = 5, /datum/reagent/teslium/energized_jelly = 10)
	materials = list(/datum/material/iron =SMALL_MATERIAL_AMOUNT * 2, /datum/material/glass =SMALL_MATERIAL_AMOUNT * 2, /datum/material/uranium =SMALL_MATERIAL_AMOUNT, /datum/material/diamond = SMALL_MATERIAL_AMOUNT*0.6, /datum/material/bluespace = SMALL_MATERIAL_AMOUNT*0.5, /datum/material/plasma = SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/stock_parts/micro_laser/super_quadultra
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	lathe_time_factor = 0.2
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE

/datum/design/dark_matter_bin
	name = "Dark Matter Bin"
	desc = "A stock part used in the construction of various devices."
	id = "dark_matter_bin"
	build_type = PROTOLATHE | AWAY_LATHE
	reagents_list = list(/datum/reagent/liquid_dark_matter = 15, /datum/reagent/teslium/energized_jelly = 5)
	materials = list(/datum/material/iron = SMALL_MATERIAL_AMOUNT*2.5, /datum/material/diamond =SMALL_MATERIAL_AMOUNT, /datum/material/titanium = SMALL_MATERIAL_AMOUNT*0.5, /datum/material/bluespace =SMALL_MATERIAL_AMOUNT, /datum/material/plasma = SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/stock_parts/matter_bin/dark_matter
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_5
	)
	lathe_time_factor = 0.2
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE
