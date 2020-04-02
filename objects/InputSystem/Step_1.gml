/// @desc Get input values and update sequences
// Set gamepad axis deadzone
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.19);
}

#region Update input values
ds_map_copy(previousAxisValues, axisValues);
ds_map_copy(previousActionValues, actionValues);

// Iterate through the registered axes and update their value
{
	var current = ds_map_find_first(axisMap);
	while (!is_undefined(current))
	{
		axisValues[? current] = input_calculate_axis_value(current);
		// Continue iteration
		current = ds_map_find_next(axisMap, current);
	}
}

// Iterate through the registered actions and update their value
{
	var current = ds_map_find_first(actionMap);
	while (!is_undefined(current))
	{
		actionValues[? current] = input_calculate_action_value(current);
		// Continue iteration
		current = ds_map_find_next(actionMap, current);
	}
}
#endregion

#region Update input sequence
{
	var current = ds_map_find_first(sequenceMap);
	while (!is_undefined(current))
	{
		// Check for next condition
		var actionList = sequenceMap[? current];
		var values = sequenceValues[? current];
		var previousStep = values[0];
		var currentStep = previousStep;
		var previousTime = values[1];
		var currentTime = previousTime;
		
		// If the input sequence has not finished
		if (previousStep < ds_list_size(actionList))
		{
			// Get the next step action value
			var actionName = actionList[| previousStep];
			var bAction = input_get_action_value(actionName);
			
			if (bAction)
			{
				// Set the sequence value entry
				sequenceValues[? current] = [previousStep + 1, 0.0];
				currentStep++;
			}
		}
		
		// Update the step timer if we have not advanced
		if (currentStep == previousStep)
		{
			var currentValue = sequenceValues[? current];
			currentTime += delta_time / 1000000;
			// Update sequence value
			sequenceValues[? current] = [currentValue[0], currentValue[1] + delta_time / 1000000];
		}
		
		// Check if the timer has exceeded the hold time
		if (currentTime > sequenceStepHoldTime)
		{
			// Reset step counter and step timer
			sequenceValues[? current] = [0, 0.0];
		}
		
		// Continue iteration
		current = ds_map_find_next(sequenceMap, current);
	}
}
#endregion
