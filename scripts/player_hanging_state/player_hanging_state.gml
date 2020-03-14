/// @func player_hanging_state()
var xAxis = input_get_axis_value("Move");
var bJump = input_get_action_value("Jump");

// Jump off ledge
if (bJump)
{
	xVel = xAxis;
	yVel = -jumpForce;
	state_transition_to("Move");
}

// Fall off ledge
if (keyboard_check_pressed(ord("S")))
{
	state_transition_to("Move");
}
