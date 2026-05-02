/datum/dynamic_ruleset/roundstart/stowaway
	name = "Stowaway"
	config_tag = "Roundstart Stowaway"
	pref_flag = ROLE_STOWAWAY
	ruleset_flags = RULESET_INVADER
	preview_antag_datum = /datum/antagonist/stowaway
	weight = 25
	jobban_flag = ROLE_STOWAWAY
	max_antag_cap = list("denominator" = 45)
	min_pop = 0

/datum/dynamic_ruleset/roundstart/stowaway/assign_role(datum/mind/candidate)
	candidate.add_antag_datum(/datum/antagonist/stowaway)
