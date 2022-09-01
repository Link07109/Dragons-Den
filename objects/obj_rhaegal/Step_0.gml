/// @description AI

if !phase_2 { // PHASE 1
	if gray_hearts_p1 > 0 {
		// TODO: phase 1 code
	} else {
		phase_2 = true
	}
} else { // PHASE 2
	if gray_hearts_p2 > 0 {
		// TODO: phase 2 code
	} else {
		if dead == true {
			// do some death animation
			
			dead = false
		}
	}		
}