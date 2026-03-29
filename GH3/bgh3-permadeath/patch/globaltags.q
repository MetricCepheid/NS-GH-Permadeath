cheat_largegems = -1

script restore_options_from_global_tags 
	getglobaltags \{user_options}
	if (<lefty_flip_p1>)
		change \{pad_event_up_inversion = true}
	else
		change \{pad_event_up_inversion = false}
	endif

	// Restore saved hyperspeed setting
	Change GlobalName = Cheat_HyperSpeed NewValue = <Cheat_HyperSpeed>

	// Disable original "Audio Lag" setting on PC
	if iswinport
		winportsetsongskew value = 0
	endif

endscript
