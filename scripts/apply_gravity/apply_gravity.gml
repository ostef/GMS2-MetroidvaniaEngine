/// @func apply_gravity()
/// @desc Apply gravity on character
if (!bGrounded)
{
	yVel += grav;
}
else if (!bWasGrounded)
{
	yVel = 0;
}
