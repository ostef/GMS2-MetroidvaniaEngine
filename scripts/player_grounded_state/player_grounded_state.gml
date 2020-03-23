#region Movement
var moveAxis = input_get_axis_value("Move");

xVel = moveAxis;

// Jumping
if (input_get_action_value("Jump") && bGrounded)
{
	player_jump();
}
#endregion

#region Animation
if (moveAxis == 0)
{
	if (!animation_is_playing(idleAnim))
	{
		animation_sequence_play(stopSequence);
	}
}
else
{
	if (!animation_is_playing(runAnim))
	{
		animation_sequence_play(movementSequence);
	}
	
	bFacingLeft = moveAxis < 0;
}
#endregion
