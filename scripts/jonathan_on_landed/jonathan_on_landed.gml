function jonathan_on_landed() {
	// Play the landing sequence
	if (input_get_axis_value("Move") == 0.0)
	{
		animation_sequence_play(landSequence);
	}



}
