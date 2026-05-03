/datum/quirk/regenerative_blood
	name = "Regenerative Blood"
	desc = "Your body possesses a means to quickly restore lost blood, as long as you're properly hydrated and fed."
	value = 8
	quirk_flags = QUIRK_PROCESSES
	gain_text = span_notice("You feel a warm rush course through your body...")
	lose_text = span_notice("You sense the warmth that was once pumping through you fading away...")
	medical_record_text = "Patient possesses self-restoring blood. Medical care is required, but the patient can last longer without it than typical."
	species_blacklist = list(SPECIES_PODPERSON_WEAK,)
	mob_trait = TRAIT_REGENERATIVE_BLOOD
	hardcore_value = -5
	icon = FA_ICON_DROPLET

/datum/quirk/regenerative_blood/process(seconds_per_tick)
	var/mob/living/carbon/QH = quirk_holder
	if(!QH)
		return

	if(QH.nutrition <= 1)
		// Do nothing
		return

	// Define health needing updates
	var/need_mob_update = FALSE

	// Check brute threshold
	if(QH.blood_volume <= QH.default_blood_volume)
		need_mob_update += QH.blood_volume = QH.blood_volume + (2 + ((-1 * QH.nutrition / 200) + (-1 * QH.water_level / 200))) * seconds_per_tick


	// Check if healing will be applied
	if(need_mob_update)
		// Subtrackt nutrition
		QH.water_level -= (2) * seconds_per_tick
		QH.nutrition -= (1) * seconds_per_tick
		QH.updatehealth()
