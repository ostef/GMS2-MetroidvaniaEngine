/// @desc Cleanup
// Action map
var current = ds_map_find_first(actionMap);
while (!is_undefined(current))
{
	var entry = ds_map_find_value(actionMap, current);
	ds_list_destroy(entry);
	current = ds_map_find_next(actionMap, current);
}

ds_map_destroy(actionMap);

// Axis map
var current = ds_map_find_first(axisMap);
while (!is_undefined(current))
{
	var entry = ds_map_find_value(axisMap, current);
	ds_list_destroy(entry);
	current = ds_map_find_next(axisMap, current);
}

ds_map_destroy(axisMap);

// Axis values
ds_map_destroy(axisValues);
ds_map_destroy(previousAxisValues);

// Action values
ds_map_destroy(actionValues);
ds_map_destroy(previousActionValues);
