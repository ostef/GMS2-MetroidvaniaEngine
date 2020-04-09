/// @func fsm_goto(stateMachine, stateIndex)
/// @arg {FSM} stateMachine
/// @arg {int} stateIndex
var stateMachine = argument0;
var stateIndex = argument1;
assert(is_fsm(stateMachine), "Argument is not an FSM!");
var stateList = stateMachine[@ FSM.StateList];

// Transition to next state
if (fsm_state_exists(stateMachine, stateMachine[@ FSM.CurrentStateIndex]))
{
	var stateEntry = stateList[| stateMachine[@ FSM.CurrentStateIndex]];
	
	// Execute on current state exit
	if (script_exists(stateEntry[@ StateEntry.OnExit]))
	{
		script_execute(stateEntry[@ StateEntry.OnExit]);
	}
	
	// Add the current state to the history
	ds_stack_push(stateMachine[@ FSM.StateHistory], stateMachine[@ FSM.CurrentStateIndex]);
}

// set current state
stateMachine[@ FSM.CurrentStateIndex] = stateIndex;
var stateEntry = stateList[| stateMachine[@ FSM.CurrentStateIndex]];

// Execute on current state enter
if (script_exists(stateEntry[@ StateEntry.OnEnter]))
{
	script_execute(stateEntry[@ StateEntry.OnEnter]);
}

// Reset the current state step count
stateMachine[@ FSM.CurrentStateSteps] = 0;
