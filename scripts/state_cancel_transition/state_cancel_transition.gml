/// @func state_cancel_transition()
/// @desc Cancel the transition to the next state
if (bTransitioning)
{
	show_debug_message("STATE_MACHINE: Cancelling state transition to " + nextStateName);

	bTransitioning = false;
	nextStateName = "";
	nextStateEntry = undefined;
}
