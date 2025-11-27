/// Creature blood. Both sawian and aliens that have yellow and mostly compatible blood.
/datum/blood_type/yellow
	name = "Y" // For some reason, simplemobs have a bloodtype name of "Y-". I hope this doesnt become an issue later.
	color = "#e1b100"
	compatible_types = list(
		/datum/blood_type/yellow,
		/datum/blood_type/yellow/alien,
	)

/datum/blood_type/yellow/alien
	name = "Y-A"
	color = "#e1cf0e"
	compatible_types = list(
		/datum/blood_type/yellow,
		/datum/blood_type/yellow/alien,
	)

