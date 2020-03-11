/// @func player_move_state()
var xAxis = input_get_axis_value("Move");
var bJump = input_get_action_value("Jump");

xVel = xAxis * 2;

if (xVel != 0)
{
	bFacingLeft = xVel < 0;
}

apply_gravity();

if (keyboard_check_pressed(ord("S")))
{
	fall_off_platform();
}
