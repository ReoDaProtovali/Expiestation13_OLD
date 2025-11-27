/proc/sawian_name()
	/*
	if(prob(20))
		. = "[pick(sawian_names)]"
	*/
	if(!. || prob(10))
		. += "[rand(10000, 99999)]" //Just an ID for now...

