/// @func state_machine_transition(stateName)
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
}
