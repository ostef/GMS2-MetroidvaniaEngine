/// @func input_sequence_reset(sequenceName)
/// @desc Reset the input sequence state
/// @arg {string} sequenceName
var sequenceName = argument0;

// Sanity check
if (!ds_map_exists(o_input_system.sequenceValues, sequenceName))
{
	log_error("INPUT: Input sequence " + sequenceName + " does not exist");

	return;
}

o_input_system.sequenceValues[? sequenceName] = [0, 0.0];
