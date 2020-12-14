/// @func input_add_action(actionName)
/// @desc Add an input action mapping
/// @arg {string} actionName
function input_add_action(argument0) {
	var actionName = argument0;
	var entry = InputSystem.actionMap[? actionName];

	if (is_undefined(entry))
	{
		entry = ds_list_create();
		ds_map_add_list(InputSystem.actionMap, actionName, entry);
		log_info("INPUT: Added action " + actionName);
	}



}
