/// @func input_map_to_action(actionName, actionType, inputType, input);
/// @desc Map an input to a given action
/// @arg {string} actionName
/// @arg {int} actionType
/// @arg {int} inputType
/// @arg {int} input
var actionName = argument0;
var actionType = argument1;
var inputType = argument2;
var input = argument3;
var entry = ds_map_find_value(o_input_system.actionsMap, actionName);

if (!is_undefined(entry))
{
	ds_list_add(entry, [actionType, inputType, input]);
	log_trace("INPUT: Added mapping to action " + actionName);
}
else
{
	log_error("INPUT: Trying to add a mapping to a non-existing action (" + actionName + ")");
}
