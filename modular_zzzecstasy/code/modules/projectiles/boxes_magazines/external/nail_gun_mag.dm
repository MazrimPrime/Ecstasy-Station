/obj/item/ammo_box/magazine/nail_gun_mag
	name = "\improper Nail Gun Mag"
	desc = "A mag full of nails, specifically for a Nail Gun."
	icon = 'modular_zzzecstasy/icons/obj/weapons/guns/ammo.dmi'
	icon_state = "nail_gun_mag-60"
	base_icon_state = "nail_gun_mag"
	ammo_type = /obj/item/ammo_casing/nail
	caliber = CALIBER_NAIL
	max_ammo = 60

/obj/item/ammo_box/magazine/nail_gun_mag/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 10)]"
