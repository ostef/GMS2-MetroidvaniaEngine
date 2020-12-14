/// @func fsm_execute(stateMachine)
/// @desc Execute the current state
/// @arg {FSM} stateMachine
function fsm_execute(argument0) {
	var stateMachine = argument0;
	assert(is_fsm(stateMachine), "Argument is not an FSM!");

	// Execute on state update
	if (fsm_state_exists(stateMachine, stateMachine[FSM.CurrentStateIndex]))
	{
		var stateList = stateMachine[FSM.StateList];
		var stateEntry = stateList[| stateMachine[FSM.CurrentStateIndex]];
		script_execute(stateEntry[StateEntry.OnUpdate]);
	
		// Increment the current state step count
		stateMachine[@ FSM.CurrentStateSteps] = stateMachine[FSM.CurrentStateSteps] + 1;
	}


}
