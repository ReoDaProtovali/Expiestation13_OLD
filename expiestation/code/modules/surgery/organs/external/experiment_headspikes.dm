/obj/item/organ/external/experiment_headspikes
	name = "experiment headspikes"
	desc = "severed spikes from the back of an experiment's head. Stiff and filled with cartilage to give them their signature shape and structure."
	//icon_state = "experiment_headspikes"
	//icon = 'expiestation/icons/obj/medical/organs/organs.dmi'

	zone = BODY_ZONE_HEAD
	slot = ORGAN_SLOT_EXTERNAL_HEADSPIKES

	preference = "feature_experiment_headspikes"

	bodypart_overlay = /datum/bodypart_overlay/mutant/experiment_headspikes

	//dna_block = DNA_EXPERIMENT_HEADSPIKES_BLOCK
	restyle_flags = EXTERNAL_RESTYLE_FLESH

/datum/bodypart_overlay/mutant/experiment_headspikes
	layers = EXTERNAL_FRONT | EXTERNAL_BEHIND
	feature_key = "headspikes_experiment"

/datum/bodypart_overlay/mutant/experiment_headspikes/get_global_feature_list()
	return GLOB.headspikes_list_experiment

/*
/datum/bodypart_overlay/mutant/experiment_headspikes/can_draw_on_bodypart(mob/living/carbon/human/human)
	. = ..()
*/
