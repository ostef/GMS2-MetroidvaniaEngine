/// @func input_add_axis(axisName)
/// @desc Add an input axis mapping
/// @arg {string} axisName
var axisName = argument[0];
var entry = o_input_system.axisMap[? axisName];

// Check if the entry exists
if (is_undefined(entry))
{
	entry = ds_list_create();
	ds_map_add_list(o_input_system.axisMap, axisName, entry);
	log_info("INPUT: Added axis " + axisName);
}
