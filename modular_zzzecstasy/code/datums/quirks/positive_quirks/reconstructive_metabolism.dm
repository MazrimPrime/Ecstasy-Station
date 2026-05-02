/datum/quirk/reconstructive_metabolism
	name = "Reconstructive Metabolism"
	desc = "Your body possesses a differentiated reconstructive ability, allowing you to slowly recover from light to moderate injuries. Critical injuries, wounds, and genetic damage will still require medical attention."
	value = 16
	quirk_flags = QUIRK_PROCESSES
	gain_text = span_notice("You feel a surge of reconstructive vitality coursing through your body...")
	lose_text = span_notice("You sense your enhanced reconstructive ability fading away...")
	medical_record_text = "Patient possesses a Semi self-reconstructive condition. Medical care is required way less frequently"
	species_blacklist = list(SPECIES_PODPERSON_WEAK,)
	mob_trait = TRAIT_RECONSTRUCTIVE_METABOLISM
	hardcore_value = -10
	icon = FA_ICON_BRIEFCASE_MEDICAL

/datum/quirk/reconstructive_metabolism/process(seconds_per_tick)
	var/mob/living/carbon/QH = quirk_holder
	if(!QH)
		return
	// Quirk holder must be injured
	if(QH.health >= QH.maxHealth )
		// Do nothing
		return

	if(QH.nutrition <= 1)
		// Do nothing
		return

	// Define health needing updates
	var/need_mob_update = FALSE

	// Check brute threshold
	if(QH.get_brute_loss() >= 0.1)
		need_mob_update += QH.adjust_brute_loss(((QH.get_brute_loss() * -1) / 50 + 0.2 + (-1 * QH.nutrition / 500)) * seconds_per_tick, updating_health = FALSE)
		if(QH.get_brute_loss() <= 1.5)
			QH.set_brute_loss(0, updating_health = FALSE)
	// Check burn threshold
	if(QH.get_fire_loss() >= 0.1)
		need_mob_update += QH.adjust_fire_loss(((QH.get_fire_loss() * -1) / 50 + 0.1 + (-1 * QH.nutrition / 500)) * seconds_per_tick, updating_health = FALSE)
		if(QH.get_fire_loss() <= 1.5)
			QH.set_fire_loss(0, updating_health = FALSE)

	// Check tox threshold
	if(QH.get_tox_loss() >= 0.1)
		need_mob_update += QH.adjust_tox_loss(((QH.get_tox_loss() * -1) / 50 + 0.1 + (-1 * QH.nutrition / 500)) * seconds_per_tick, updating_health = FALSE, forced = TRUE)
		if(QH.get_tox_loss() <= 1.5)
			QH.set_tox_loss(0, updating_health = FALSE)

	// Check oxy threshold
	if(QH.get_oxy_loss() >= 0.1)
		need_mob_update += QH.adjust_oxy_loss(((QH.get_oxy_loss() * -1) / 50 + 0.1 + (-1 * QH.nutrition / 500)) * seconds_per_tick, updating_health = FALSE, forced = TRUE)
		if(QH.get_oxy_loss() <= 1.5)
			QH.set_oxy_loss(0, updating_health = FALSE)


	// Check if healing will be applied
	if(need_mob_update)
		// Subtrackt nutrition
		QH.nutrition -= (QH.get_brute_loss() + QH.get_fire_loss() + QH.get_tox_loss() + QH.get_oxy_loss()) / 10
		QH.updatehealth()
