/datum/techweb_node/exp_tools
	id = TECHWEB_NODE_EXP_TOOLS
	display_name = "Experimental Tools"
	description = "Enhances the functionality and versatility of station tools."
	prereq_ids = list(TECHWEB_NODE_FUSION)
	design_ids = list(
		"flatpacker",
		"handdrill",
		"exwelder",
		"jawsoflife",
		"rangedanalyzer",
		"rtd_loaded",
		"mech_rcd",
		"rcd_loaded",
		"rcd_ammo",
		"weldingmask",
		"magboots",
		"nail_gun",
		"nail_gun_mag"
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	discount_experiments = list(/datum/experiment/ordnance/gaseous/bz = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING)
