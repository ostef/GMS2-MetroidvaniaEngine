/// @desc Update input values
ds_map_copy(previousAxisValues, axisValues);
ds_map_copy(previousActionValues, actionValues);

// Set gamepad axis deadzone
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.19);
}

// Iterate through the registered axes and update their value
{
	var current = ds_map_find_first(axisMap);
	while (!is_undefined(current))
	{
		axisValues[? current] = input_calculate_axis_value(current);
		current = ds_map_find_next(axisMap, current);
	}
}

// Iterate through the registered actions and update their value
{
	var current = ds_map_find_first(actionMap);
	while (!is_undefined(current))
	{
		actionValues[? current] = input_calculate_action_value(current);
		current = ds_map_find_next(actionMap, current);
	}
}
