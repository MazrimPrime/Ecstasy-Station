/obj/item/ammo_casing/nail
	name = "Nail"
	desc = "A nail of a nail gun."
	icon = 'modular_zzzecstasy/icons/obj/weapons/guns/ammo.dmi'
	icon_state = "nail"
	caliber = CALIBER_NAIL
	projectile_type = /obj/projectile/bullet/nail

	//randomspread = 2

/obj/item/ammo_casing/nail/update_icon_state()
	if(!loaded_projectile)
		qdel(src)
		return

	return ..()
