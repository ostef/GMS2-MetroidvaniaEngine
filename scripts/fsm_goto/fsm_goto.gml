/// @func fsm_goto(stateMachine, stateIndex)
/// @arg {FSM} stateMachine
/// @arg {int} stateIndex
var stateMachine = argument0;
var stateIndex = argument1;
assert(is_fsm(stateMachine), "Argument is not an FSM");

if (fsm_state_exists(stateMachine, stateIndex))
{
	stateMachine[@ FSM.NextStateIndex] = stateIndex;
}

return false;