/datum/storyteller/extended_medium
	name = "Extended (Medium Chaos)"
	desc = "Extended (Medium Chaos) is the default Storyteller, and the comparison point for our other Storytellers. \
	More frequent events than Low Chaos, but less frequent events than High Chaos. Best for an average, varied experience."
	welcome_text = "Science did what!?! Resonance Cascade?? O GOD!!"

	track_data = /datum/storyteller_data/tracks/extended_medium

	guarantees_roundstart_crewset = TRUE

	tag_multipliers = list(
		TAG_LOW = 0.5,
		TAG_MEDIUM = 0.75,
		TAG_HIGH = 0.5,
		TAG_ANTAG = 0,
		TAG_MINORANTAG = 1,
		)
	antag_divisor = 32
	storyteller_type = STORYTELLER_TYPE_INTENSE

/datum/storyteller_data/tracks/extended_medium
	threshold_mundane = 2700 //2700 / 60 =  45mis~
	threshold_moderate = 3600 //3600 / 60 = 60mis~
	threshold_major = 9600 //9600 / 60 =    160mis~
	threshold_crewset = 3600 //9600 / 60 =  60mis~
	threshold_ghostset = 4500 //9600 / 60 = 75mis~
