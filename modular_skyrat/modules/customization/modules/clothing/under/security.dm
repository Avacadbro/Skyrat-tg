// MODULAR SECURITY WEAR (NOT OVERRIDES, LOOK IN 'modular_skyrat\modules\goofsec\code\sec_clothing_overrides.dm')

// HEAD OF SECURITY
/obj/item/clothing/under/rank/security/head_of_security/peacekeeper/sol
	name = "sol chief of police uniform"
	desc = "A white satin shirt with a leather belt, the belt buckle is a large NT."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/under/security.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/under/security.dmi'
	icon_state = "policechiefalt"

// DETECTIVE
/obj/item/clothing/under/rank/security/detective/cowboy
	name = "blonde cowboy uniform"
	desc = "A blue shirt with some cool cowboy socks. You dig."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/uniforms.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/uniform.dmi'
	icon_state = "cowboy_uniform"
	mutant_variants = NONE
	can_adjust = FALSE

/obj/item/clothing/under/rank/security/detective/cowboy/armorless //Donator variant, just uses the sprite.
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)

/obj/item/clothing/suit/cowboyvest
	name = "blonde cowboy vest"
	desc = "A white cream vest lined with... fur, of all things, for desert weather. There's a small deer head logo sewn into the vest."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "cowboy_vest"
	body_parts_covered = CHEST|ARMS
	cold_protection = CHEST|ARMS
	mutant_variants = NONE
	heat_protection = CHEST|ARMS

/obj/item/clothing/suit/det_suit/cowboyvest
	name = "blonde cowboy vest"
	desc = "A white cream vest lined with... fur, of all things, for desert weather. There's a small deer head logo sewn into the vest."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "cowboy_vest"
	body_parts_covered = CHEST|ARMS
	cold_protection = CHEST|ARMS
	mutant_variants = NONE
	heat_protection = CHEST|ARMS

/obj/item/clothing/under/rank/security/detective/runner
	name = "runner sweater"
	desc = "<i>\"You look lonely.\"</i>"
	icon = 'modular_skyrat/master_files/icons/obj/clothing/uniforms.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/uniform.dmi'
	icon_state = "runner"
	mutant_variants = NONE
	can_adjust = FALSE

///Police Uniforms
/obj/item/clothing/under/rank/security/peacekeeper/sol/cadet
	name = "sol police cadet uniform"
	desc = "A light blue shirt with navy pants, perfect for pretending you matter."
	icon_state = "policecadetalt"

/obj/item/clothing/under/rank/security/peacekeeper/sol/traffic
	name = "sol traffic police uniform"
	desc = "A light blue shirt with navy pants, perfect for standing and shouting at cars."
	icon_state = "policetrafficalt"
///OFFICERS
/obj/item/clothing/under/rank/security/peacekeeper/sol
	name = "sol police uniform"
	desc = "A light blue shirt with navy pants, perfect for opressing the Underclasses, like Catgirls."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/under/security.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/under/security.dmi'
	icon_state = "policealt"

///WARDEN
/obj/item/clothing/under/rank/security/warden/peacekeeper/sol
	name = "sol warden uniform"
	desc = "A light blue shirt with navy pants, this one seems to have been modified for fat asses, like yourself."
	icon_state = "policewardenalt"

// End Police Uniforms

///SECMED
/obj/item/clothing/under/rank/medical/scrubs/skyrat/red/sec
	name = "security medic scrubs"
	desc = "It's made of a special fiber that provides minor protection against biohazards and acid, along with some light padding. This one is in a deep red."
	armor = list(MELEE = 10, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 10, FIRE = 30, ACID = 30, WOUND = 10)

/// PRISONER
/obj/item/clothing/under/rank/prisoner/protcust
	name = "protective custody prisoner jumpsuit"
	desc = "A mustard coloured prison jumpsuit, often worn by former Security members, informants and former CentComm employees. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#FFB600"

/obj/item/clothing/under/rank/prisoner/skirt/protcust
	name = "protective custody prisoner jumpskirt"
	desc = "A mustard coloured prison jumpskirt, often worn by former Security members, informants and former CentComm employees. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#FFB600"
	mutant_variants = NONE

/obj/item/clothing/under/rank/prisoner/lowsec
	name = "low security prisoner jumpsuit"
	desc = "A pale, almost creamy prison jumpsuit, this one denotes a low security prisoner, things like fraud and anything white collar. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#AB9278"

/obj/item/clothing/under/rank/prisoner/skirt/lowsec
	name = "low security prisoner jumpskirt"
	desc = "A pale, almost creamy prison jumpskirt, this one denotes a low security prisoner, things like fraud and anything white collar. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#AB9278"
	mutant_variants = NONE

/obj/item/clothing/under/rank/prisoner/highsec
	name = "high risk prisoner jumpsuit"
	desc = "A bright red prison jumpsuit, depending on who sees it, either a badge of honour or a sign to avoid. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#FF3400"

/obj/item/clothing/under/rank/prisoner/skirt/highsec
	name = "high risk prisoner jumpskirt"
	desc = "A bright red prison jumpskirt, depending on who sees it, either a badge of honour or a sign to avoid. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#FF3400"
	mutant_variants = NONE

/obj/item/clothing/under/rank/prisoner/supermax
	name = "supermax prisoner jumpsuit"
	desc = "A dark crimson red prison jumpsuit, for the worst of the worst, or the Clown. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#992300"

/obj/item/clothing/under/rank/prisoner/skirt/supermax
	name = "supermax prisoner jumpskirt"
	desc = "A dark crimson red prison jumpskirt, for the worst of the worst, or the Clown. Its suit sensors are stuck in the \"Fully On\" position."
	greyscale_colors = "#992300"
	mutant_variants = NONE

/obj/item/clothing/under/rank/prisoner/classic
	name = "classic prisoner jumpsuit"
	desc = "A black and white striped jumpsuit, like something out of a movie."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/uniforms.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/uniform.dmi'
	icon_state = "prisonerclassic"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_inhand_left = null
	greyscale_config_inhand_right = null
	greyscale_config_worn = null

/obj/item/clothing/under/rank/prisoner/syndicate
	name = "syndicate prisoner jumpsuit"
	desc = "A crimson red jumpsuit worn by syndicate captives. Its sensors have been shorted out."
	greyscale_colors = "#992300"
	has_sensor = FALSE
	
/obj/item/clothing/under/rank/prisoner/skirt/syndicate
	name = "syndicate prisoner jumpskirt"
	desc = "A crimson red jumpskirt worn by syndicate captives. Its sensors have been shorted out."
	greyscale_colors = "#992300"
	has_sensor = FALSE
	mutant_variants = NONE
