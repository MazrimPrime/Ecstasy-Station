/datum/techweb_node/nail_gun
	id = TECHWEB_NODE_NAIL_GUN
	display_name = "Nail Gun"
	description = "Experimental high-powered nail gun that serves no other purpose than embedding around your workplace, maybe at one point it had an actual use"
	design_ids = list(
		"nail_gun",
		"nail_gun_mag"
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING)
	experimental = TRUE
	hidden = TRUE

/datum/techweb_node/parts_alien
	id = TECHWEB_NODE_PARTS_ALIEN
	display_name = "Theoretical Engineering"
	description = "A merging of unknown alien designs, bluespace mannagement, and xenobiology."
	prereq_ids = list(TECHWEB_NODE_PARTS_BLUESPACE, TECHWEB_NODE_ALIEN_ENGI)
	design_ids = list(
		"giga_capacitor",
		"unilatera_triphasic_scanning",
		"atto_servo",
		"super_quad_ultra_micro_laser",
		"dark_matter_bin",
		"vortex_cell",
		"vortex_battery"
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)

