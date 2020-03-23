#region Movement
var moveAxis = sign(input_get_axis_value("Move"));

xVel = moveSpeed * moveAxis * time_get_timescale();

apply_gravity();

// Stop jumping
if (input_get_action_value("Stop Jumping"))
{
	var jumpForce = calculate_jump_force(jumpHeight, grav);
	
	if (yVel < -jumpForce)
	{
		yVel = -jumpForce;
	}
}
#endregion

#region State transition
if (bGrounded)
{
	state_transition_to(groundedState);
}
#endregion

#region Animation
if (moveAxis != 0)
{
	bFacingLeft = moveAxis < 0;
}

if (yVel < 0)
{
	if (!animation_is_playing(jumpAnim) && !animation_is_playing(jumpForwardAnim))
	{
		animation_play(moveAxis == 0 ? jumpAnim : jumpForwardAnim);
	}
}
else
{
	animation_play(fallAnim);
}
#endregion
