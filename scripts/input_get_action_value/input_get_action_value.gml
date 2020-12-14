/// @func input_get_action_value(actionName)
/// @desc Get the value of a given action
/// @arg {string} actionName
function input_get_action_value(argument0) {
	var actionName = argument0;
	var value = InputSystem.actionValues[? actionName];

	// Sanity check
	if (is_undefined(value))
	{
		log_error("INPUT: Action " + actionName + " does not exist!");

		return false;
	}

	return value;



}
