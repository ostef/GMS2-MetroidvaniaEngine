/// @func input_sequence_get_current_step(sequenceName)
/// @desc Get the step of a given input sequence
/// @arg {string} sequenceName
function input_sequence_get_current_step(argument0) {
	var sequenceName = argument0;
	var value = InputSystem.sequenceValues[? sequenceName];

	// Sanity check
	if (is_undefined(value))
	{
		return 0;
	}

	return value[0];



}
