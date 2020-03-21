/// @func state_machine_handle_transition()
// Transition to next state
if (bTransitioning)
{
	// Execute on current state exit
	if (is_array(currentStateEntry) && currentStateEntry[ON_STATE_EXIT] != noone)
	{
		script_execute(currentStateEntry[ON_STATE_EXIT]);
	}
	
	// Add the current state to the history
	if (currentStateIndex != noone)
	{
		ds_stack_push(stateHistory, currentStateName);
	}
	
	// Set the state name and entry
	currentStateName = nextStateName;
	currentStateEntry = nextStateEntry;
	
	// Execute on current state enter
	if (is_array(currentStateEntry) && currentStateEntry[ON_STATE_ENTER] != noone)
	{
		script_execute(currentStateEntry[ON_STATE_ENTER]);
	}
	
	// Reset the next state info
	nextStateName = "";
	nextStateEntry = undefined;
	// Reset the transition flag
	bTransitioning = false;
	// Reset the current state step count
	currentStateSteps = 0;
}
