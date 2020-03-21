/// @func animation_system_cleanup()
/// @desc Clean up the animation system
var current = ds_map_find_first(animationMap);
while (!is_undefined(current))
{
	var data = animationMap[? current];
	var frameEvents = data[3];
	
	// Clear the frame events array
	for (var i = 0; i < array_length_1d(frameEvents); i++)
	{
		ds_list_destroy(frameEvents[i]);
	}
	
	current = ds_map_find_next(animationMap, current);
}

// Destroy the animation map
ds_map_destroy(animationMap);
