/obj/item/gun/ballistic/automatic/nail_gun
	name = "\improper Nail Gun"
	desc = "An industrial-grade nail gun modified to feed from detachable magazines. Intended for construction work, though it looks more than capable of putting nail's in things besides drywall."
	abstract_type = /obj/item/gun/ballistic/automatic
	icon =  'modular_zzzecstasy/icons/obj/weapons/guns/ballistic.dmi'
	icon_state = "nail_gun"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	inhand_icon_state = "drill"

	mag_display = TRUE
	mag_display_ammo = TRUE
	casing_ejector = TRUE

	w_class = WEIGHT_CLASS_NORMAL
	can_suppress = FALSE

	bolt_type = BOLT_TYPE_OPEN
	show_bolt_icon = FALSE

	burst_size = 1
	actions_types = list()
	semi_auto = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/nail_gun_mag

	fire_sound = 'sound/items/weapons/gun/smg/shot_suppressed.ogg'
	fire_sound_volume = 50
	rack_sound = 'sound/items/weapons/gun/smg/smgrack.ogg'
	drop_sound = 'sound/items/handling/gun/ballistics/smg/smg_drop1.ogg'
	pickup_sound = 'sound/items/handling/gun/ballistics/smg/smg_pickup1.ogg'

	pin = /obj/item/firing_pin

/obj/item/gun/ballistic/automatic/nail_gun/modified
	desc = "An industrial-grade nail gun modified to feed from detachable magazines. Intended for construction work, though it looks more than capable of putting nail's in things besides drywall. This one seems to have also been modified to fire continuously."

/obj/item/gun/ballistic/automatic/nail_gun/modified/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)
