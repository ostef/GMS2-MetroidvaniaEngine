/// @func player_move_state()
var xAxis = input_get_axis_value("Move");
var bJump = input_get_action_value("Jump");
var bJumpRelease = input_get_action_value("Jump Release");
var bDuck = input_get_action_value("Duck");

xVel = xAxis * 2 * time_get_timescale();

// Update facing
if (xVel != 0)
{
	bFacingLeft = xVel < 0;
}

apply_gravity();

#region Jumping
if (bJump && !bDuck && bGrounded)
{
	yVel = -calculate_jump_force(maxJumpHeight, grav * time_get_timescale());
}

// Variable jump height
if (bJumpRelease)
{
	var jumpForce = calculate_jump_force(jumpHeight, grav * time_get_timescale());
	
	if (yVel < -jumpForce)
	{
		yVel = -jumpForce;
	}
}
#endregion

// Ducking
if (bDuck)
{
	state_transition_to("Duck");
}

// Animate
if (bGrounded)
{
	if (xAxis == 0)
	{
		character_set_animation(s_player_idle, 0, 1);
		character_set_animation_speed(lerp(animationSpeed, 0, .005));
		
		if (animationSpeed < .1)
		{
			character_set_animation_speed(0);
			image_index = 0;
		}
	}
	else
	{
		character_set_animation(s_player_run, 0, 1);
	}
}
else
{
	if (sprite_index != s_player_jump && sprite_index != s_player_jump_forward)
	{
		var spr = xVel == 0 ? s_player_jump : s_player_jump_forward;
		character_set_animation(spr, yVel < 0 ? 0 : 1, 0);
	}
	
	if (yVel >= 0)
	{
		character_set_animation_speed(1);
	}
	
	if (animation_end(s_player_jump) || animation_end(s_player_jump_forward))
	{
		character_set_animation_speed(0);
	}
}
