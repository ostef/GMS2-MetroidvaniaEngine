/// @func input_calculate_action_value(actionName)
/// @desc Get the value of a given input action
/// @arg {string} actionName
var actionName = argument0;
var actionValue = false;
var entry = InputSystem.actionMap[? actionName];

if (!is_undefined(entry))
{
	for (var i = 0; i < ds_list_size(entry); i++)
	{
		var current = entry[| i];
		var actionType = current[0];
		var inputType = current[1];
		var input = current[2];
		
		// Update input value based on input type
		switch (actionType)
		{
			case ActionType.Normal:
				if (input_button_check(inputType, input))
				{
					actionValue = true;
				}
				
				break;
				
			case ActionType.Pressed:
				if (input_button_check_pressed(inputType, input))
				{
					actionValue = true;
				}
				
				break;
				
			case ActionType.Released:

				if (input_button_check_released(inputType, input))
				{
					actionValue = true;
				}
				
				break;
		}
		
		if (actionValue) { break; }
	}
}
else
{
	log_error("INPUT: Axis " + actionName + " does not exist!");
}

return actionValue;
