/datum/species/sawian
	//The one we all truly come from.
	name = "\improper Sawian"
	plural_form = "Sawians"
	id = SPECIES_SAWIAN
	visual_gender = FALSE

	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BEAST
	inherent_factions = list(FACTION_SAWIAN)

	mutanteyes = /obj/item/organ/internal/eyes/sawian
	mutanttongue = /obj/item/organ/internal/tongue/sawian
	mutantstomach = /obj/item/organ/internal/stomach/sawian
	mutantheart = /obj/item/organ/internal/heart/sawian
	mutantbrain = /obj/item/organ/internal/brain/sawian
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	species_cookie = /obj/item/food/meat/slab
	meat = /obj/item/food/meat/slab/human/mutant/sawian
	skinned_type = /obj/item/stack/sheet/animalhide/lizard
	exotic_bloodtype = /datum/blood_type/yellow
	digitigrade_customization = DIGITIGRADE_FORCED

/datum/species/sawian/check_roundstart_eligible()
	. = ..()
	if(id == SPECIES_SAWIAN) //Sawians exist only as a subtype for ease of inheritance.
		return FALSE

/datum/species/sawian/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_sawian_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname

/datum/species/sawian/experiment/create_pref_unique_perks()
	var/list/to_add = ..() //Grab sawian traits

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "trash-can",
			SPECIES_PERK_NAME = "Creature",
			SPECIES_PERK_DESC = "You're a creature, apparently.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "skull",
			SPECIES_PERK_NAME = "Negative expie quirk",
			SPECIES_PERK_DESC = "Being an expie isnt always the best.",
		),
	)

	return to_add
