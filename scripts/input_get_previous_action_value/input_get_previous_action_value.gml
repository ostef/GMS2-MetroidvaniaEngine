/// @func input_get_previous_action_value(actionName)
/// @desc Get the previous value of a given action
/// @arg {string} actionName
function input_get_previous_action_value(argument0) {
	var actionName = argument0;
	var value = InputSystem.previousActionValues[? actionName];

	// Sanity check
	if (is_undefined(value))
	{
		log_error("INPUT: Action " + actionName + " does not exist!");

		return false;
	}

	return value;



}
