#region Movement
var previousMoveAxis = sign(input_get_previous_axis_value("Move"));
var moveAxis = sign(input_get_axis_value("Move"));

xVel = moveSpeed * moveAxis * time_get_timescale();

apply_gravity();

// Falling
if (!bGrounded)
{
	state_transition_to(airborneState);
}

// Jumping
if (input_get_action_value("Jump") && bGrounded)
{
	yVel = -calculate_jump_force(maxJumpHeight, grav);
	state_transition_to(airborneState);
}

// Ducking
if (input_get_action_value("Duck"))
{
	state_transition_to(duckedState);
}

// Attacking
if (input_get_action_value("Light Attack"))
{
	state_transition_to(groundedAttackState);
}
#endregion

#region Animation
if (moveAxis == 0)
{
	if (previousMoveAxis != 0) 
	{
		animation_sequence_play(stopSequence);
	}
}
else
{
	var faceDir = bFacingLeft ? -1 : 1;
	
	if (!animation_sequence_is_playing(turnAroundSequence) && !animation_sequence_is_playing(moveSequence))
	{
		animation_sequence_play(faceDir != sign(moveAxis) ? turnAroundSequence : moveSequence);
	}
	
	bFacingLeft = moveAxis < 0;
}
#endregion
