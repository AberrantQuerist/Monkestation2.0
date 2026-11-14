/obj/item/implant/bookworm
	name = "bookworm implant"
	// TODO: give it its own sprite and icon state.


/obj/item/implant/bookworm/Initialize(mapload)
	. = ..()


/datum/action/cooldown/spell/touch/bookworm_blast
	name = "bookworm blast" // Change the spell name each time a new word is completed. Default to "A" as simple and next to no damage.
	desc = "Strike with the power of lexicography!"
	background_icon_state = "bg_heretic"
	overlay_icon_state = "bg_heretic_border"
	button_icon = 'icons/mob/actions/actions_ecult.dmi'
	button_icon_state = "mansus_grasp"
	sound = 'sound/items/tools/welder.ogg'

	school = SCHOOL_EVOCATION
	cooldown_time = 10 SECONDS

	invocation = "NULL" // Changes to new word each time one is completed.
	invocation_type = INVOCATION_SHOUT
	// Mimes can cast it. Chaplains can cast it. Anyone can cast it, so long as they have a hand.
	spell_requirements = SPELL_CASTABLE_WITHOUT_INVOCATION

	hand_path = /obj/item/melee/touch_attack/mansus_fist

// Okay so like
// imagine heretic stun hand spells.
// But they're determined by TGUI window output. :)
// And do knockback at higher levels.

/obj/item/implanter/bookworm
	name = "bookworm implanter"
	// TODO: give it its own sprite and icon state.
	imp_type = /obj/item/implanter/bookworm

/obj/item/implantcase/bookworm
	name = "implant case - 'Bookworm'"
	// TODO: give it its own sprite and icon state.
	imp_type = /obj/item/implanter/bookworm
