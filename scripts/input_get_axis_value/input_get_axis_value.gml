/// @func input_get_axis_value(axisName)
/// @desc Get the value of a given axis
/// @arg {string} axisName
function input_get_axis_value(argument0) {
	var axisName = argument0;
	var value = InputSystem.axisValues[? axisName];

	// Sanity check
	if (is_undefined(value))
	{
		log_error("INPUT: Axis " + axisName + " does not exist!");

		return 0.0;
	}

	return value;



}
