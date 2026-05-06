/datum/preference/choiced/functional_wings
	category = PREFERENCE_CATEGORY_MANUALLY_RENDERED
	savefile_key = "functional_wings"
	savefile_identifier = PREFERENCE_CHARACTER

/datum/preference/choiced/functional_wings/create_default_value()
	return "Random"

/datum/preference/choiced/functional_wings/init_possible_values()
	return list("Random") + assoc_to_keys(GLOB.functional_wings_choice)

/datum/preference/choiced/functional_wings/is_accessible(datum/preferences/preferences)
	. = ..()
	if (!.)
		return FALSE

	return /datum/quirk/functional_wings_quirk::name in preferences.all_quirks

/datum/preference/choiced/functional_wings/apply_to_human(mob/living/carbon/human/target, value)
	return
