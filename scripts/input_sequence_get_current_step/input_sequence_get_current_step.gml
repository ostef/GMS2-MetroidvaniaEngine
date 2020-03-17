/// @func input_sequence_get_current_step(sequenceName)
/// @desc Get the step of a given input sequence
/// @arg {string} sequenceName
var sequenceName = argument0;
var value = o_input_system.sequenceValues[? sequenceName];

// Sanity check
if (is_undefined(value))
{
	return 0;
}

return value[0];
