/// @func get_weighted_average_pos(weightAndInstances)
/// @desc Get the weighted average position of a list of instances
/// @arg {ds_list} weightAndInstances
function get_weighted_average_pos(argument0) {
	var weightAndInstances = argument0;
	var count = ds_list_size(weightAndInstances);
	var sumX = 0;
	var sumY = 0;
	var totalWeight = 0;

	// Iterate through the array and calculate the average position
	for (var i = 0; i < count; i++)
	{
		var current = weightAndInstances[| i];
		var instance = current[0];
		var weight = current[1];
		// Check if the instance exists
		if (instance == noone) { continue; }
	
		sumX += instance.x * weight;
		sumY += instance.y * weight;
		totalWeight += weight;
	}

	// Prevent division by zero
	if (totalWeight == 0)
	{
		return [0, 0];
	}

	return [sumX / totalWeight, sumY / totalWeight];




}
