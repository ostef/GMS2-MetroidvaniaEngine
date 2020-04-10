/// @func movable_apply_gravity()
/// @desc Apply gravity
if (!bGrounded)
{
	yVel += grav * time_get_timescale();
}
else if (!bWasGrounded)
{
	yVel = 0;
}
