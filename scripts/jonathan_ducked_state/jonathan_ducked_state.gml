function jonathan_ducked_state() {
	var moveAxis = sign(input_get_axis_value("Move"));
	var duckAction = input_get_action_value("Duck");

	xVel = 0;
	movable_apply_gravity();

	if (moveAxis != 0)
	{
		bFacingLeft = moveAxis < 0;
	}

	if (duckAction)
	{
		animation_play(duckAnim);
	}
	else
	{
		fsm_goto(fsm, groundedState);
		animation_play(idleAnim);
	}

	if (input_get_action_value("Jump"))
	{
		if (bStandingOnPlatform)
		{
			movable_fall_off_platform();
		}
		else
		{
			yVel = -calculate_jump_force(maxJumpHeight, grav);
		}
	
		fsm_goto(fsm, airborneState);
	}



}
