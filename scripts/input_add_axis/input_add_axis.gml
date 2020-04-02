/// @func input_add_axis(axisName)
/// @desc Add an input axis mapping
/// @arg {string} axisName
var axisName = argument[0];
var entry = InputSystem.axisMap[? axisName];

// Check if the entry exists
if (is_undefined(entry))
{
	entry = ds_list_create();
	ds_map_add_list(InputSystem.axisMap, axisName, entry);
	log_info("INPUT: Added axis " + axisName);
}
