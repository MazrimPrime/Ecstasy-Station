/datum/storyteller/extended_low
	name = "Extended (Low Chaos)"
	desc = "Extended (Low Chaos) will be light with events compared to other storytellers, especially so on ones involving combat, destruction, or chaos. \
	The least hectic storyteller of all, while still having some spice."
	welcome_text = "There's a shift going on? Where are the explosions?"

	track_data = /datum/storyteller_data/tracks/extended_low

	guarantees_roundstart_crewset = TRUE

	tag_multipliers = list(
		TAG_LOW = 1,
		TAG_MEDIUM = 0.5,
		TAG_HIGH = 0.1,
		TAG_ANTAG = 0,
		TAG_MINORANTAG = 1,
	)
	antag_divisor = 32
	storyteller_type = STORYTELLER_TYPE_CALM


/datum/storyteller_data/tracks/extended_low
	threshold_mundane = 3600 //3600 / 60 =  60mis~
	threshold_moderate = 4500 //4500 / 60 = 75mis~
	threshold_major = 12000 //12000 / 60 =  200mis~
	threshold_crewset = 4500 //4500 / 60 =  75mis~
	threshold_ghostset = 5400 //5400 / 60 = 90mis~
