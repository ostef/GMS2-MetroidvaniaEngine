/// @func input_map_to_action(actionName, actionType, inputType, input);
/// @desc Map an input to a given action
/// @arg {string} actionName
/// @arg {ActionType} actionType
/// @arg {InputType} inputType
/// @arg {int} input
function input_map_to_action(argument0, argument1, argument2, argument3) {
	var actionName = argument0;
	var actionType = argument1;
	var inputType = argument2;
	var input = argument3;
	var entry = InputSystem.actionMap[? actionName];

	if (!is_undefined(entry))
	{
		ds_list_add(entry, [actionType, inputType, input]);
		log_info("INPUT: Added mapping to " + actionName + " action");
	}
	else
	{
		log_error("INPUT: Trying to add a mapping to a non-existing action (" + actionName + ")");
	}



}
