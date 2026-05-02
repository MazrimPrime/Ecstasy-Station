/datum/round_event_control/New()
	. = ..()
	if(!(TAG_OPFOR_ONLY in tags) && (TAG_CREW_ANTAG in tags))
		LAZYADD(tags, TAG_OPFOR_ONLY)
	if((TAG_MINORANTAG in tags) && (TAG_OPFOR_ONLY in tags)) //Added on to stop splurt code from adding tags to stuff we don't want it to
		LAZYREMOVE(tags, TAG_OPFOR_ONLY)
