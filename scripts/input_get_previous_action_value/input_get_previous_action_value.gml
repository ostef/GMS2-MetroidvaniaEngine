/// @func input_get_previous_action_value(actionName)
/// @desc Get the previous value of a given action
/// @arg {string} actionName
var actionName = argument0;
var value = o_input_system.previousActionValues[? actionName];

// Sanity check
if (is_undefined(value))
{
	log_error("INPUT: Action " + actionName + " does not exist!");

	return false;
}

return value;
