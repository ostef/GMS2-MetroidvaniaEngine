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
	yVel = -calculate_jump_force(jumpHeight, grav * time_get_timescale());
}

// Fall off platform
if (keyboard_check_pressed(ord("S")))
{
	fall_off_platform();
}

// Animate
if (bGrounded)
{
	if (xAxis == 0)
	{
		character_set_animation(s_player_idle, 0, 1);
	}
	else
	{
		character_set_animation(s_player_run, 0, 1);
	}
}
else
{
	character_set_animation(s_player_jump, yVel < 0 ? 0 : 1, 0);
	
	if (yVel > 0)
	{
		animationSpeed = 1;
	}
	
	if (animation_end(s_player_jump))
	{
		animationSpeed = 0;
	}
}
