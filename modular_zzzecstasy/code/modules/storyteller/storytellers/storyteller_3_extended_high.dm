/datum/storyteller/extended_high
	name = "Extended (High Chaos)"
	desc = "Extended (High Chaos) will try to create the most events, while trying to avoid purely destructive ones. \
	Stays ordered to avoid creating a hellshift, unlike the Clown. Hopefully..."
	welcome_text = "Why are we still here? Just to suffer? Every night, I can feel my leg... And my arm... even my fingers... \
	The body I've lost... the comrades I've lost... won't stop hurting... It's like they're all still there. You feel it, too, \
	don't you? I'm gonna make them give back our past!"

	track_data = /datum/storyteller_data/tracks/extended_high

	guarantees_roundstart_crewset = TRUE

	tag_multipliers = list(
		TAG_LOW = 0.25,
		TAG_MEDIUM = 0.75,
		TAG_HIGH = 1,
		TAG_ANTAG = 0,
		TAG_MINORANTAG = 1,
	)
	antag_divisor = 20
	storyteller_type = STORYTELLER_TYPE_INTENSE


/datum/storyteller_data/tracks/extended_high
	threshold_mundane = 1800 //1800 / 60 =  30mis~
	threshold_moderate = 2700 //1800 / 60 = 45mis~
	threshold_major = 7200 //7200 / 60 =    120mis~
	threshold_crewset = 2700 //1800 / 60 =  45mis~
	threshold_ghostset = 3600 //9600 / 60 = 60mis~
