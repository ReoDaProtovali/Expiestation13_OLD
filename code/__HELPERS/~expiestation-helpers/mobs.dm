/proc/random_unique_sawian_name(gender, attempts_to_find_unique_name=10)
	for(var/i in 1 to attempts_to_find_unique_name)
		. = capitalize(sawian_name(gender))

		if(!findname(.))
			break
