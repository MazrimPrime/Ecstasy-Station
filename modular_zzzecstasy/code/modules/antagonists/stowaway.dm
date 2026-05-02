/datum/antagonist/stowaway
	name = "\improper Stowaway"
	show_in_antagpanel = TRUE
	roundend_category = "Stowaways"
	pref_flag = ROLE_STOWAWAY
	show_name_in_check_antagonists = TRUE
	show_to_ghosts = TRUE
	ui_name = "AntagInfoGeneric"
	suicide_cry = "WHAT AM I EVEN DOING!!"
	preview_outfit = /datum/outfit/stowaway

//////////////////////////////////////////on_gain//////////////////////////////////////
/datum/antagonist/stowaway/on_gain()
	if(!owner)
		return

	var/mob/living/carbon/human/H = owner.current
	if(!istype(H) || QDELETED(H))
		for(var/obj/item/I in H.contents)
			qdel(I)
		return

	addtimer(CALLBACK(src, PROC_REF(apply_stowaway_pre), H), 0)

	. = ..()


////////////////////////////////////////Check for existence//////////////////////////////////
/datum/antagonist/stowaway/proc/apply_stowaway_pre(mob/living/carbon/human/species/H)
	if(!H.dna.species)
		addtimer(CALLBACK(src, PROC_REF(apply_stowaway_pre), H), 0)
	else
		addtimer(CALLBACK(src, PROC_REF(apply_stowaway), H), 0)


////////////////////////////////////////Apply Stowaway///////////////////////////////////////
/datum/antagonist/stowaway/proc/apply_stowaway(mob/living/carbon/human/species/H)
	if(!H || QDELETED(H))
		return

	// ForceMove to maintenance
	var/list/areas = get_areas(/area/station/maintenance/solars)
	if(length(areas))
		var/area/A = pick(areas)

		var/list/candidates = list()
		for(var/turf/T in get_area_turfs(A))
			if(is_safe_turf(T)) // Makes sure the turf they're being teleported to is safe.
				candidates += T

		if(length(candidates))
			H.forceMove(pick(candidates))

	// Delete EVERYTHING the mob has equipped or is holding
	for(var/obj/item/I in H.delete_equipment())
		qdel(I)

	// Remove crew records
	for(var/datum/record/crew/R in GLOB.manifest.general)
		if(R.name == H.real_name)
			qdel(R)

	// Remove locked records
	for(var/datum/record/locked/R in GLOB.manifest.locked)
		if(R.name == H.real_name)
			qdel(R)

	H.job = "Stowaway"

	//Give gear
	H.equipOutfit(/datum/outfit/stowaway)

	forge_objectives()

/datum/antagonist/stowaway/greet()
	to_chat(owner, span_warning("<b>You're an unregistered individual aboard this fine vessel.</b>"))
	to_chat(owner, span_warning("<b>Do your best to hide or blend in.</b>"))
	to_chat(owner, "<big>[span_warning("<b>(You are not allowed to kill anyone or grievously injure them in self-defense.)</b>")]</big>")
	owner.announce_objectives()

/datum/outfit/stowaway
	name = "Stowaway (Preview only)"

	uniform = /obj/item/clothing/under/color/grey
	gloves = /obj/item/clothing/gloves/color/yellow
	mask = /obj/item/clothing/mask/gas
	shoes = /obj/item/clothing/shoes/sneakers
	belt = /obj/item/storage/belt/utility
	back = /obj/item/storage/backpack
	l_hand = /obj/item/multitool
	r_hand = /obj/item/radio

	belt_contents = list(
		/obj/item/screwdriver,
		/obj/item/wrench,
		/obj/item/crowbar,
		/obj/item/wirecutters,
	)

// /datum/objective/stowaway/check_completion()
//	return owner.current && owner.current.stat != DEAD

/datum/antagonist/stowaway/forge_objectives()
	var/datum/objective/survival = new /datum/objective/survive()
	survival.owner = owner
	objectives += survival
	var/datum/objective/escape = new /datum/objective/escape()
	escape.owner = owner
	objectives += escape
