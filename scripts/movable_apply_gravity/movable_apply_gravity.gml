/// @func movable_apply_gravity()
/// @desc Apply gravity
function movable_apply_gravity() {
	if (!bGrounded)
	{
		yVel += grav * time_get_timescale();
	}
	else if (!bWasGrounded)
	{
		yVel = 0;
	}



}
