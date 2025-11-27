/obj/item/organ/external/tail/experiment
	name = "experiment tail"
	desc = "A severed experiment tail."
	//icon_state = "experiment_tail"
	//icon = 'expiestation/icons/obj/medical/organs/organs.dmi'

	preference = "feature_experiment_tail"

	bodypart_overlay = /datum/bodypart_overlay/mutant/tail/experiment

	//wag_flags = WAG_ABLE
	//dna_block = DNA_EXPERIMENT_TAIL_BLOCK

/datum/bodypart_overlay/mutant/tail/experiment
	layers = EXTERNAL_FRONT | EXTERNAL_BEHIND
	feature_key = "tail_experiment"

/datum/bodypart_overlay/mutant/tail/experiment/get_global_feature_list()
	return GLOB.tails_list_experiment

/datum/bodypart_overlay/mutant/tail/experiment/get_base_icon_state()
	return ..()
/*
/datum/bodypart_overlay/mutant/tail/experiment/can_draw_on_bodypart(mob/living/carbon/human/human)
	. = ..()
*/
