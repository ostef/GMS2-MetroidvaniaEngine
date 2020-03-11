/// @desc Cleanup
ds_map_destroy(actionsMap);

// Axes map
var current = ds_map_find_first(axesMap);
while (!is_undefined(current))
{
	var entry = ds_map_find_value(axesMap, current);
	ds_list_destroy(entry);
	current = ds_map_find_next(axesMap, current);
}

ds_map_destroy(axesMap);
