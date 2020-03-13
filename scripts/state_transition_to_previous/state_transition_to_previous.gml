/// @func state_transition_to_previous()
/// @desc Transition to the previous state
var stateName = ds_stack_pop(stateHistory);

if (!is_undefined(stateName))
{
	
	return state_transition_to(stateName);
}

return false;
