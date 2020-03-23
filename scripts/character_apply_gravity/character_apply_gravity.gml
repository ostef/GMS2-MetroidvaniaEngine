/// @func character_apply_gravity()
/// @desc Apply gravity on character
if (!bGrounded)
{
	yVel += grav * time_get_timescale();
}
else if (!bWasGrounded)
{
	yVel = 0;
}
