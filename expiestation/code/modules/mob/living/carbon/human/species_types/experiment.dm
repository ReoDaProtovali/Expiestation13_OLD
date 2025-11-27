/datum/species/sawian/experiment
	//The one we all come from?
	name = "\improper Experiment"
	plural_form = "Experiments"
	id = SPECIES_EXPERIMENT

	inherent_traits = list(
		TRAIT_NO_UNDERWEAR
	)
	mutant_bodyparts = list(
		"experiment_headspikes" = "Intact",
	)
	external_organs = list(
		/obj/item/organ/external/tail/experiment = "Normal",
	)

	mutanteyes = /obj/item/organ/internal/eyes/sawian/experiment
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	species_cookie = /obj/item/food/meat/slab
	meat = /obj/item/food/meat/slab/human/mutant/sawian

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/experiment,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/experiment,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/experiment,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/experiment,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/experiment,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/experiment,
	)
	eyes_icon = 'expiestation/icons/mob/species/experiment/experiment_eyes.dmi'

	digitigrade_customization = DIGITIGRADE_FORCED

/datum/species/sawian/on_species_gain(mob/living/carbon/carbon_target, datum/species/old_species)
	. = ..()
	carbon_target.faction |= FACTION_SAWIAN

/datum/species/sawian/on_species_loss(mob/living/carbon/carbon_target)
	. = ..()
	carbon_target.faction -= FACTION_SAWIAN

/datum/species/sawian/experiment/create_pref_unique_perks()
	var/list/to_add = ..() //Grab sawian traits

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "paw",
			SPECIES_PERK_NAME = "Sharp Claws",
			SPECIES_PERK_DESC = "[plural_form] have particularly sharp claws that on average deal more damage than the average unarmed attack.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "microscope",
			SPECIES_PERK_NAME = "Engineered Biology",
			SPECIES_PERK_DESC = "[plural_form] have a biology that probably isnt natural, though it seems normal to them. this might result in some medical practices and chemicals having unexpected results compared to regular biologies.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "paw",
			SPECIES_PERK_NAME = "Canid Metabolism",
			SPECIES_PERK_DESC = "[plural_form] are mostly canine, and suffer certain dietary restrictions - Notably, \
			caffine and chocolate are to be avoided. However, Raw meats suit them just fine.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "paw",
			SPECIES_PERK_NAME = "Cannon Fodder",
			SPECIES_PERK_DESC = "[plural_form] are the most common [/datum/species/sawian::name], they're often seen as low ranking and expendable as a result.",
		)
	)

	return to_add
/*
/datum/species/sawian/experiment/albino
	name = "\improper Albino Experiment"
	plural_form = "Albino Experiments"
	id = SPECIES_EXPERIMENT_ALBINO
*/
