/// @func input_get_axis_value(axisName)
/// @desc Get the value of a given axis
/// @arg {string} axisName
var axisName = argument0;
var value = o_input_system.axisValues[? axisName];

if (!is_undefined(value))
{
	return value;
}

log_error("INPUT: Axis " + axisName + " does not exist!");

return 0.0;
