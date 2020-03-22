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
#endregion
