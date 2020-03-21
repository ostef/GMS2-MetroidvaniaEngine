/// @func state_transition_to(stateIndex)
/// @desc Transition to another state. The state change will be made after current state execution has ended, which enables transition cancelling
/// @arg {int} stateIndex
var stateIndex = argument0;

// If the state exists, set the next state entry
if (state_exists(stateIndex))
{
	nextStateIndex = stateIndex;
	bTransitioning = true;
	
	instance_log_info("STATE_MACHINE: Transitioning to state " + string(stateIndex));
	
	return true;
}

instance_log_error("STATE_MACHINE: Tried transitioning to a non-existing state (" + string(stateIndex) + "). Make sure you typed the state name correctly and the state has properly been added");

return false;
