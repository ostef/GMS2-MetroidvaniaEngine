/// @func state_machine_execute()
/// @desc Execute the current state
// Execute on state update
if (state_exists(currentStateIndex))
{
	var stateEntry = stateList[| currentStateIndex];
	script_execute(stateEntry[ON_STATE_UPDATE]);
	
	// Increment the current state step count
	currentStateSteps++;
}
