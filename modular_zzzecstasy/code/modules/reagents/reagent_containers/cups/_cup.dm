/obj/item/reagent_containers/cup/beaker/vortex
	name = "vortex beaker"
	desc = "A vortex beaker, powered by experimental alien technology \
		and Element Cuban combined with the Compound Pete. Can hold up to \
		900 units."
	icon_state = "beakerbluespace"
	inhand_icon_state = "beaker_bluespace"
	custom_materials = list(/datum/material/glass =SHEET_MATERIAL_AMOUNT * 2.5, /datum/material/plasma =SHEET_MATERIAL_AMOUNT * 1.5, /datum/material/diamond =HALF_SHEET_MATERIAL_AMOUNT, /datum/material/bluespace =HALF_SHEET_MATERIAL_AMOUNT)
	volume = 900
	amount_per_transfer_from_this = 10
	possible_transfer_amounts = list(5,10,15,20,25,30,50,100,300,600,900)
	can_lid = FALSE
