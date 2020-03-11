/// @desc Cleanup
// Action map
var current = ds_map_find_first(actionsMap);
while (!is_undefined(current))
{
	var entry = ds_map_find_value(actionsMap, current);
	ds_list_destroy(entry);
	current = ds_map_find_next(actionsMap, current);
}

ds_map_destroy(actionsMap);

// Axis map
var current = ds_map_find_first(axesMap);
while (!is_undefined(current))
{
	var entry = ds_map_find_value(axesMap, current);
	ds_list_destroy(entry);
	current = ds_map_find_next(axesMap, current);
}

ds_map_destroy(axesMap);

// Axis values
ds_map_destroy(axisValues);
ds_map_destroy(previousAxisValues);

// Action values
ds_map_destroy(actionValues);
ds_map_destroy(previousActionValues);
