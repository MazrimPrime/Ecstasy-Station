/datum/round_event_control/hull_beach
	name = "Hull Beach"
	typepath = /datum/round_event/hull_beach
	max_occurrences = 1
	weight = 10
	category = EVENT_CATEGORY_ENGINEERING
	description = "A piece of poorly maintained hull has broken open draining the surrounding area of atmosphere."
	min_players = 5

/datum/round_event/hull_beach
	announce_when = 5
	start_when = 0
	end_when = 10
	var/area/event_area

/datum/round_event/hull_beach/start()
	var/list/areas = get_areas(/area/station/hallway)

	if(length(areas))
		event_area = pick(areas)


		var/list/candidates = list()
		for(var/turf/T in get_area_turfs(event_area))
			if(is_safe_turf(T))
				candidates += T

		if(length(candidates))
			var/turf/T = pick(candidates)
			notify_ghosts(
				message = "The hull has crumbled away!",
				source = T,
				click_interact = TRUE
			)
			T.ChangeTurf(/turf/open/space)

/datum/round_event/hull_beach/announce(fake)
	var/location_text = "an unknown area"

	if(event_area)
		location_text = event_area.name

	priority_announce(
		text = "Atmospheric sensors report a hull breach in [location_text].",
		title = "Hull Beach Alert",
		//sound =
	)
