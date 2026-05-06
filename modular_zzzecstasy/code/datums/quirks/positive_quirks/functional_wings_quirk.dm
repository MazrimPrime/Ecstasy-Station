/datum/quirk/functional_wings_quirk
	name = "Functional Wings"
	desc = "You possess functional wings capable of allowing flight through atmosphere."
	value = 8
	quirk_flags = QUIRK_CHANGES_APPEARANCE
	gain_text = span_notice("You feel wings resting at your back...")
	lose_text = span_notice("You no longer feel wings resting at your back...")
	medical_record_text = "Patient possesses functional wings capable of allowing flight through atmosphere"
	species_blacklist = null
	mob_trait = TRAIT_FUNCTIONAL_WINGS
	hardcore_value = -10
	icon = FA_ICON_DOVE
	var/obj/item/organ/wings/functional/picked_functional_wings

/datum/quirk_constant_data/functional_wings_quirk
	associated_typepath = /datum/quirk/functional_wings_quirk
	customization_options = list(/datum/preference/choiced/functional_wings)

/datum/quirk/functional_wings_quirk/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source, unique = TRUE, announce = FALSE)
	var/wing_pref = client_source?.prefs?.read_preference(/datum/preference/choiced/functional_wings)

	if(isnull(wing_pref))
		return ..()
	picked_functional_wings = GLOB.functional_wings_choice[wing_pref] || GLOB.functional_wings_choice[pick(GLOB.functional_wings_choice)]
	return ..()

/datum/quirk/functional_wings_quirk/add_unique(client/client_source)
	if(!iscarbon(quirk_holder))
		return

	var/mob/living/carbon/quirk_holder_carbon = quirk_holder
	picked_functional_wings = new picked_functional_wings()
	picked_functional_wings.Insert(quirk_holder_carbon)

/datum/quirk/functional_wings_quirk/remove()
	QDEL_NULL(picked_functional_wings)
	return ..()
