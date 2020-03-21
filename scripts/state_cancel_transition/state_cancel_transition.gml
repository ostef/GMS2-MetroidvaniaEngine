/// @func state_cancel_transition()
/// @desc Cancel the transition to the next state
if (bTransitioning)
{
	instance_log_info("STATE_MACHINE: Cancelling state transition to " + string(nextStateIndex));

	bTransitioning = false;
	nextStateIndex = noone;
}
