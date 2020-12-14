/// @func fsm_destroy(stateMachine)
/// @desc Destroy a finite state machine
/// @arg {FSM} stateMachine
function fsm_destroy(argument0) {
	var stateMachine = argument0;
	assert(is_fsm(stateMachine), "Trying to destroy an invalid FSM");

	ds_stack_destroy(stateMachine[FSM.StateHistory]);
	ds_list_destroy(stateMachine[FSM.StateList]);



}
