/obj/item/organ/internal/tongue/sawian
	name = "sawian tongue"
	desc = "Todo."

	say_mod = "barks"

	color = COLOR_CARP_YELLOW

	taste_sensitivity = 15
	liked_foodtypes = MEAT | SEAFOOD | JUNKFOOD
	disliked_foodtypes = CLOTH | GROSS | BUGS | GORE
	toxic_foodtypes = TOXIC | ALCOHOL

/obj/item/organ/internal/tongue/sawian/get_laugh_sound()
	. = ..() //Later

/obj/item/organ/internal/tongue/sawian/get_scream_sound()
	return 'expiestation/sound/voice/experiment/death1.ogg'
