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
		invisibility = 101
		addtimer(CALLBACK(src, PROC_REF(proc_qdel), ), 0) //if I don't wait it tries to delete moving casing ;(
		return
	return ..()


/obj/item/ammo_casing/nail/proc/proc_qdel()
	qdel(src)
	return
