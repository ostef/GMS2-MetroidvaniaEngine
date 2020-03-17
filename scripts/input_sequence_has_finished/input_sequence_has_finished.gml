/// @func input_sequence_has_finished(sequenceName)
/// @desc Get the state of the input sequence
/// @arg {string} sequenceName
var sequenceName = argument0;
var stepList = o_input_system.sequenceMap[? sequenceName];

// Sanity check
if (is_undefined(stepList))
{
	log_error("INPUT: Input sequence " + sequenceName + " does not exist");
	
	return false;
}

var value = o_input_system.sequenceValues[? sequenceName];
var stepCount = ds_list_size(stepList);

return value[0] == stepCount;
