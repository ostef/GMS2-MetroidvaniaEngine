/// @func fsm_state_exists(stateMachine, stateIndex)
/// @desc Returns true if the FSM has the given state, false if not
/// @arg {FSM} stateMachine
/// @arg {int} stateIndex
var stateMachine = argument0;
var stateIndex = argument1;
assert(is_fsm(stateMachine), "Argument is not an FSM!");

return stateIndex >= 0 && stateIndex < ds_list_size(stateMachine[FSM.StateList]);
