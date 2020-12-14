/// @func input_sequence_get_last_step_time(sequenceName)
/// @desc Get the time since the last step was met in an input sequence
/// @arg {string} sequenceName
function input_sequence_get_last_step_time(argument0) {
	var sequenceName = argument0;
	var value = InputSystem.sequenceValues[? sequenceName];

	// Sanity check
	if (is_undefined(value))
	{
		return 0.0;
	}

	return value[1];



}
