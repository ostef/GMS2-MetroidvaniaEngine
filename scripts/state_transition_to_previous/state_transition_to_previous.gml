/// @func state_transition_to_previous()
/// @desc Transition to the previous state
if (!ds_stack_empty(stateHistory))
{
	var stateName = ds_stack_pop(stateHistory);
	return state_transition_to(stateName);
}

return false;
