/// @func state_transition_to_previous()
/// @desc Transition to the previous state
var stateIndex = ds_stack_pop(stateHistory);

if (state_exists(stateIndex))
{
	return state_transition_to(stateIndex);
}

return false;
