/// @func state_machine_execute()
/// @desc Execute the current state
// Execute on state update
if (is_array(currentStateEntry))
{
	script_execute(currentStateEntry[ON_STATE_UPDATE]);
	
	// Increment the current state step count
	currentStateSteps++;
}

#region Transition to next state
if (bTransitioning)
{
	// Execute on current state exit
	if (is_array(currentStateEntry) && currentStateEntry[ON_STATE_EXIT])
	{
		script_execute(currentStateEntry[ON_STATE_EXIT]);
	}
	
	// Add the current state to the history
	if (currentStateName != "")
	{
		ds_stack_push(stateHistory, currentStateName);
	}
	
	// Set the state name and entry
	currentStateName = nextStateName;
	currentStateEntry = nextStateEntry;
	
	// Execute on current state enter
	if (is_array(currentStateEntry) && currentStateEntry[ON_STATE_ENTER])
	{
		script_execute(currentStateEntry[ON_STATE_ENTER]);
	}
	
	// Reset the next state info
	nextStateName = "";
	nextStateEntry = undefined;
	// Reset the transition flag
	bTransitioning = false;
}
#endregion
