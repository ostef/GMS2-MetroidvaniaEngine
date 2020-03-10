/// @func player_move_state()
var xAxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));

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
