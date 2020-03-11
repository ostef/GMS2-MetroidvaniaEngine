/// @func input_get_action_value(actionName)
/// @desc Get the value of a given input action
/// @arg {string} actionName
var actionName = argument0;
var actionValue = false;
var entry = ds_map_find_value(o_input_system.actionsMap, actionName);

if (!is_undefined(entry))
{
	for (var i = 0; i < ds_list_size(entry); i++)
	{
		var current = ds_list_find_value(o_input_system.actionsMap, i);
		var actionType = current[0];
		var inputType = current[1];
		var input = current[2];
		
#region Update input value based on input type
		switch (actionType)
		{
			case ActionType.Normal:
				switch (inputType)
				{
					case InputType.Keyboard:
						if (keyboard_check(input))
						{
							actionValue = true;
						}
				
						break;
				
					case InputType.GamepadButton:
						if (gamepad_is_connected(0) && gamepad_button_check(0, input))
						{
							actionValue = true;
						}
				
						break;
				
					case InputType.GamepadAxis:
						if (gamepad_is_connected(0) && abs(gamepad_axis_value(0, input)))
						{
							actionValue = true;
						}
				
						break;
				}
				break;
				
			case ActionType.Pressed:
				switch (inputType)
				{
					case InputType.Keyboard:
						if (keyboard_check_pressed(input))
						{
							actionValue = true;
						}
				
						break;
				
					case InputType.GamepadButton:
						if (gamepad_is_connected(0) && gamepad_button_check_pressed(0, input))
						{
							actionValue = true;
						}
				
						break;
				
					case InputType.GamepadAxis:
						if (gamepad_is_connected(0) && abs(gamepad_axis_value(0, input)))
						{
							actionValue = true;
						}
				
						break;
				}
				break;
				
			case ActionType.Released:
				switch (inputType)
				{
					case InputType.Keyboard:
						if (keyboard_check_released(input))
						{
							actionValue = true;
						}
				
						break;
				
					case InputType.GamepadButton:
						if (gamepad_is_connected(0) && gamepad_button_check_released(0, input))
						{
							actionValue = true;
						}
				
						break;
				
					case InputType.GamepadAxis:
						if (gamepad_is_connected(0) && abs(gamepad_axis_value(0, input)))
						{
							actionValue = true;
						}
				
						break;
				}
				break;
		}
#endregion
		
		if (actionValue) { break; }
	}
}
else
{
	log_error("INPUT: Axis " + axisName + " does not exist!");
}

return actionValue;
