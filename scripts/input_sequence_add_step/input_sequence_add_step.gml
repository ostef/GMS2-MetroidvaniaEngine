/// @func input_sequence_add_step(sequenceName, actionName)
/// @desc Add a step to an input sequence
/// @arg {string} sequenceName
/// @arg {string} actionName
function input_sequence_add_step(argument0, argument1) {
	var sequenceName = argument0;
	var actionName = argument1;
	var stepList = InputSystem.sequenceMap[? sequenceName];

	// Sanity check
	if (is_undefined(stepList))
	{
		log_error("INPUT: Sequence " + sequenceName + " does not exist");
	
		return;
	}

	// Add the action name to the step list
	ds_list_add(stepList, actionName);
	log_info("INPUT: Added action step " + actionName + " to " + sequenceName + " sequence");



}
