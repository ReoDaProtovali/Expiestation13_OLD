/obj/item/bodypart/head/experiment
	icon_greyscale = 'expiestation/icons/mob/species/experiment/bodyparts_greyscale.dmi'
	icon_static = 'expiestation/icons/mob/species/experiment/bodyparts.dmi'
	limb_id = SPECIES_EXPERIMENT
	is_dimorphic = FALSE
	should_draw_greyscale = FALSE
	unarmed_damage_low = 4 //Expies bite hard
	unarmed_damage_high = 6

	head_flags = HEAD_LIPS | HEAD_EYESPRITES | HEAD_EYEHOLES | HEAD_DEBRAIN
	//bodypart_traits = list(TRAIT_ANTENNAE)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/chest/experiment
	icon_greyscale = 'expiestation/icons/mob/species/experiment/bodyparts_greyscale.dmi'
	icon_static = 'expiestation/icons/mob/species/experiment/bodyparts.dmi'
	limb_id = SPECIES_EXPERIMENT
	is_dimorphic = TRUE
	should_draw_greyscale = FALSE
	//wing_types = list() //Winged expie when?
	bodypart_traits = list(TRAIT_TACKLING_TAILED_DEFENDER)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/arm/left/experiment
	icon_greyscale = 'expiestation/icons/mob/species/experiment/bodyparts_greyscale.dmi'
	icon_static = 'expiestation/icons/mob/species/experiment/bodyparts.dmi'
	limb_id = SPECIES_EXPERIMENT
	should_draw_greyscale = FALSE
	unarmed_attack_verb = "slash"
	unarmed_damage_low = 6
	unarmed_damage_high = 9
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/weapons/slashmiss.ogg'
	/*
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	*/

/obj/item/bodypart/arm/right/experiment
	icon_greyscale = 'expiestation/icons/mob/species/experiment/bodyparts_greyscale.dmi'
	icon_static = 'expiestation/icons/mob/species/experiment/bodyparts.dmi'
	limb_id = SPECIES_EXPERIMENT
	should_draw_greyscale = FALSE
	unarmed_attack_verb = "slash"
	unarmed_damage_low = 6
	unarmed_damage_high = 9
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/weapons/slashmiss.ogg'
	/*
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	*/

/obj/item/bodypart/leg/left/experiment
	icon_greyscale = 'expiestation/icons/mob/species/experiment/bodyparts_greyscale.dmi'
	icon_static = 'expiestation/icons/mob/species/experiment/bodyparts.dmi'
	should_draw_greyscale = FALSE
	limb_id = SPECIES_EXPERIMENT
	can_be_digitigrade = TRUE
	digitigrade_id = "digitigrade"
	footprint_sprite = FOOTPRINT_SPRITE_PAWS
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/leg/right/experiment
	icon_greyscale = 'expiestation/icons/mob/species/experiment/bodyparts_greyscale.dmi'
	icon_static = 'expiestation/icons/mob/species/experiment/bodyparts.dmi'
	should_draw_greyscale = FALSE
	limb_id = SPECIES_EXPERIMENT
	can_be_digitigrade = TRUE
	digitigrade_id = "digitigrade"
	footprint_sprite = FOOTPRINT_SPRITE_PAWS
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
