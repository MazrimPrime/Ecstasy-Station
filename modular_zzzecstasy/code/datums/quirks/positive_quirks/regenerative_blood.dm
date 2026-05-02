/datum/quirk/regenerative_blood
	name = "Regenerative Blood"
	desc = "Your body possesses a differentiated reconstructive ability, allowing you to slowly recover from light to moderate injuries. Critical injuries, wounds, and genetic damage will still require medical attention."
	value = 8
	quirk_flags = QUIRK_PROCESSES
	gain_text = span_notice("You feel a surge of reconstructive vitality coursing through your body...")
	lose_text = span_notice("You sense your enhanced reconstructive ability fading away...")
	medical_record_text = "Patient possesses a Semi self-reconstructive condition. Medical care is required way less frequently"
	species_blacklist = list(SPECIES_PODPERSON_WEAK,)
	mob_trait = TRAIT_REGENERATIVE_BLOOD
	hardcore_value = -10
	icon = FA_ICON_DROPLET

/datum/quirk/regenerative_blood/process(seconds_per_tick)
	var/mob/living/carbon/QH = quirk_holder
	if(!QH)
		return
	// Quirk holder must be injured
	if(QH.blood_volume >= QH.default_blood_volume )
		// Do nothing
		return

	if(QH.nutrition <= 1)
		// Do nothing
		return

	// Define health needing updates
	var/need_mob_update = FALSE

	// Check brute threshold
	if(QH.blood_volume <= 99)
		need_mob_update += QH.blood_volume = QH.blood_volume + (0.5 *  (-1 * QH.nutrition / 500)) * seconds_per_tick


	// Check if healing will be applied
	if(need_mob_update)
		// Subtrackt nutrition
		QH.nutrition -= (1) * seconds_per_tick
		QH.updatehealth()
