/// @func fsm_handle_transition(stateMachine)
/// @arg {FSM} stateMachine
var stateMachine = argument0;
assert(is_fsm(stateMachine), "Argument is not an FSM!");
var stateList = stateMachine[FSM.StateList];

// Check if transitioning
if (!fsm_state_exists(stateMachine, stateMachine[FSM.NextStateIndex])) { exit; }

// Transition to next state
if (fsm_state_exists(stateMachine, stateMachine[FSM.CurrentStateIndex]))
{
	var stateEntry = stateList[| stateMachine[FSM.CurrentStateIndex]];
	
	// Execute on current state exit
	if (script_exists(stateEntry[StateEntry.OnExit]))
	{
		script_execute(stateEntry[StateEntry.OnExit]);
	}
	
	// Add the current state to the history
	ds_stack_push(stateMachine[FSM.StateHistory], stateMachine[FSM.CurrentStateIndex]);
}

// Set current state and reset the next state index
stateMachine[@ FSM.CurrentStateIndex] = stateMachine[FSM.NextStateIndex];
stateMachine[@ FSM.NextStateIndex] = noone;
var stateEntry = stateList[| stateMachine[FSM.CurrentStateIndex]];

// Execute on current state enter
if (script_exists(stateEntry[StateEntry.OnEnter]))
{
	script_execute(stateEntry[StateEntry.OnEnter]);
}

// Reset the current state step count
stateMachine[@ FSM.CurrentStateSteps] = 0;
