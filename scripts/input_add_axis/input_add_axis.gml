/// @func input_add_axis(axisName)
/// @desc Add an input axis mapping
/// @arg {string} axisName
var axisName = argument[0];
var entry = ds_map_find_value(o_input_system.axesMap, axisName);

// Check if the entry exists
if (is_undefined(entry))
{
	entry = ds_list_create();
	// Create the entry in the axes map
	ds_map_add(o_input_system.axesMap, axisName, entry);
	log_trace("INPUT: Added axis " + axisName);
}
