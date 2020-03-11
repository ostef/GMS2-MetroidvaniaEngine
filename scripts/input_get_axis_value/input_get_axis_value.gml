/// @func input_map_to_axis(axisName)
/// @desc Get the value of a give axis
/// @arg {string} axisName
var axisName = argument0;
var axisValue = 0;
var entry = o_input_system.axisMap[? axisName];

if (!is_undefined(entry))
{
	// Calculate the total axis value
	for (var i = 0; i < ds_list_size(entry); i++)
	{
		var current = entry[| i];
		var inputType = current[0];
		var input = current[1];
		var bPositive = current[2];
		var dir = bPositive ? 1 : -1;
		
		// Update input value based on input type
		axisValue += dir * input_button_check(inputType, input);
	}
}
else
{
	log_error("INPUT: Axis " + axisName + " does not exist!");
}

return clamp(axisValue, -1, 1);
