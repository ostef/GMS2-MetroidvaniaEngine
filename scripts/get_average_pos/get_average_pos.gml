/// @func get_average_pos(instances)
/// @desc Get the average position of a list of object instances
/// @arg {ds_list} instances
function get_average_pos(argument0) {
	var instances = argument0;
	var count = ds_list_size(instances);
	var sumX = 0;
	var sumY = 0;
	var instCount = 0;

	// Iterate through the array and calculate the average position
	for (var i = 0; i < count; i++)
	{
		var current = instances[| i];
		// Check if the instance exists
		if (current == noone) { continue; }
	
		sumX += current.x;
		sumY += current.y;
		instCount++;
	}

	// Prevent division by zero
	if (instCount == 0)
	{
		return [0, 0];
	}

	return [sumX / instCount, sumY / instCount];



}
