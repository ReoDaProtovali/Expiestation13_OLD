//Expie Tails
/datum/preference/choiced/experiment_tail
	savefile_key = "feature_experiment_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/experiment
	should_generate_icons = TRUE

/datum/preference/choiced/experiment_tail/init_possible_values()
	return assoc_to_keys_features(GLOB.tails_list_experiment)

/datum/preference/choiced/experiment_tail/icon_for(value)
	var/datum/sprite_accessory/experiment_tail = GLOB.tails_list_experiment[value]
	if(experiment_tail.icon_state == null || experiment_tail.icon_state == "none")
		var/icon/invalid_icon = icon('icons/mob/landmarks.dmi', "x")
		return invalid_icon
	var/icon/final_icon = icon(experiment_tail.icon, "m_tail_experiment_[experiment_tail.icon_state]_BEHIND")
	return final_icon

/datum/preference/choiced/experiment_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_experiment"] = value

/datum/preference/choiced/experiment_tail/create_default_value()
	var/datum/sprite_accessory/tails/experiment/normal/tail = /datum/sprite_accessory/tails/experiment/normal
	return initial(tail.name)


//Expie Headspikes
/datum/preference/choiced/experiment_headspikes
	savefile_key = "feature_experiment_headspikes"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/experiment_headspikes
	should_generate_icons = TRUE

/datum/preference/choiced/experiment_headspikes/init_possible_values()
	return assoc_to_keys_features(GLOB.headspikes_list_experiment)

/datum/preference/choiced/experiment_headspikes/icon_for(value)
	var/datum/sprite_accessory/experiment_headspikes = GLOB.headspikes_list_experiment[value]
	if(experiment_headspikes.icon_state == null || experiment_headspikes.icon_state == "none")
		var/icon/invalid_icon = icon('icons/mob/landmarks.dmi', "x")
		return invalid_icon
	var/icon/final_icon = icon(experiment_headspikes.icon, "m_headspikes_experiment_[experiment_headspikes.icon_state]_BEHIND", EAST) //Look to the side
	return final_icon

/datum/preference/choiced/experiment_headspikes/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["headspikes_experiment"] = value

/datum/preference/choiced/experiment_headspikes/create_default_value()
	var/datum/sprite_accessory/experiment_headspikes/intact/headspikes = /datum/sprite_accessory/experiment_headspikes/intact
	return initial(headspikes.name)
