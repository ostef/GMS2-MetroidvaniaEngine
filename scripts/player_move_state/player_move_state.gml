/// @func player_move_state()
var xAxis = input_get_axis_value("Move");
var bJump = input_get_action_value("Jump");

xVel = xAxis * 2 * time_get_timescale();

// Update facing
if (xVel != 0)
{
	bFacingLeft = xVel < 0;
}

apply_gravity();

// Jumping
if (bJump && bGrounded)
{
	yVel = -jumpForce * time_get_timescale();
}

// Fall off platform
if (keyboard_check_pressed(ord("S")))
{
	fall_off_platform();
}
