/// @func fsm_goto_previous(stateMachine)
/// @desc Transition to the previous state
/// @arg {FSM} stateMachine
var stateMachine = argument0;
assert(is_fsm(stateMachine), "Argument is not an FSM!");
var stateIndex = ds_stack_pop(stateMachine[@ FSM.StateHistory]);

if (fsm_state_exists(stateMachine, stateIndex))
{
	return fsm_goto(stateMachine, stateIndex);
}

return false;