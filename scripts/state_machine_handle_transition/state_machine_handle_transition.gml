/// @func state_machine_handle_transition()
// Transition to next state
if (bTransitioning)
{
	stateEntry = stateList[| currentStateIndex];
	// Execute on current state exit
	if (stateEntry[ON_STATE_EXIT] != noone)
	{
		script_execute(stateEntry[ON_STATE_EXIT]);
	}
	
	// Add the current state to the history
	if (currentStateIndex != noone)
	{
		ds_stack_push(stateHistory, currentStateIndex);
	}
	
	// Set the state name and entry
	currentStateIndex = nextStateIndex;
	stateEntry = stateList[| currentStateIndex];
	
	// Execute on current state enter
	if (stateEntry[ON_STATE_ENTER] != noone)
	{
		script_execute(stateEntry[ON_STATE_ENTER]);
	}
	
	// Reset the next state index
	nextStateIndex = noone;
	// Reset the transition flag
	bTransitioning = false;
	// Reset the current state step count
	currentStateSteps = 0;
}
