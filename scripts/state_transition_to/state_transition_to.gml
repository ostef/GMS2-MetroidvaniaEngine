/// @func state_transition_to(stateName)
/// @desc Switch to another state
/// @arg {string} stateName
var stateName = argument0;
var stateEntry = ds_map_find_value(stateMap, stateName);

// If the state exists, set the next state entry
if (!is_undefined(stateEntry))
{
	nextStateName = stateName;
	nextStateEntry = stateEntry;
	bTransitioning = true;
	
	show_debug_message("STATE_MACHINE: Transitioning to state " + nextStateName);
}
else
{
	show_debug_message("STATE_MACHINE: Tried transitioning to an non-existing state (" + stateName + "). Make sure you typed the state name correctly and the state has properly been added");
}
