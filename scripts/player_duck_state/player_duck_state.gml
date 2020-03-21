/// @func player_duck_state()
var xAxis = input_get_axis_value("Move");
var bJump = input_get_action_value("Jump");
var bDuck = input_get_action_value("Duck");
var bStandUp = input_get_action_value("Stand Up");

if (xAxis != 0)
{
	bFacingLeft = xAxis < 0;
}

apply_gravity();

if (!bGrounded)
{
	state_transition_to("Move");
}

if (bJump && bStandingOnPlatform)
{
	fall_off_platform();
}

if (bDuck)
{
	character_set_animation(s_player_stand_up, 0, 1);
}
else if (bStandUp)
{
	character_set_animation(s_player_duck, 0, 1);
}

if (animation_end(s_player_duck))
{
	character_set_animation_speed(0);
}
else if (animation_end(s_player_stand_up))
{
	state_transition_to("Move");
}
