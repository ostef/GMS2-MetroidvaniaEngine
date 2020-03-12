/// @func input_get_action_value(actionName)
/// @desc Get the value of a given action
/// @arg {string} axisName
var actionName = argument0;
var value = o_input_system.actionValues[? actionName];

if (!is_undefined(value))
{
	return value;
}

log_error("INPUT: Action " + actionName + " does not exist!");

return false;
