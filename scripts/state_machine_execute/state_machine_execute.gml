/// @func state_machine_execute()
/// @desc Execute the current state
// Execute on state update
if (is_array(currentStateEntry))
{
	script_execute(currentStateEntry[ON_STATE_UPDATE]);
	
	// Increment the current state step count
	currentStateSteps++;
}
