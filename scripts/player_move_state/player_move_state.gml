/// @func player_move_state()
var xAxis = input_get_axis_value("Move");

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
