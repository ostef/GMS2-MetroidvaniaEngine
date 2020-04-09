/// @func fsm_create()
/// @desc Create a finite state machine object
enum FSM
{
	StateList,
	StateHistory,
	CurrentStateIndex,
	CurrentStateSteps,
	PropertyCount
}

enum StateEntry
{
	OnEnter,
	OnUpdate,
	OnExit
}

return [ds_list_create(), ds_stack_create(), noone, noone];
