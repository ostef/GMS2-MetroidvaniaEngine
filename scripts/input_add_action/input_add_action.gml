/// @func input_add_action(actionName)
/// @desc Add an input action mapping
/// @arg {string} actionName
var actionName = argument0;
var entry = ds_map_find_value(o_input_system.actionsMap, actionName);

if (is_undefined(entry))
{
	entry = ds_list_create();
	ds_map_add(o_input_system.actionsMap, actionName, entry);
	log_trace("INPUT: Added action " + actionName);
}
