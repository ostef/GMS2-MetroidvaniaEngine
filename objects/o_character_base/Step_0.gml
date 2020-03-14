/// @desc Execute current state
// Update previous velocity
xVelPrevious = xVel;
yVelPrevious = yVel;

state_machine_execute();

#region Force set scale and angle
if (image_xscale != 1)
{
	image_xscale = 1;
	log_warning("'image_xscale' is not 1! Use variable 'xScale' instead");
	log_warning("Setting 'image_xscale' to 1");
}

if (image_yscale != 1)
{
	image_yscale = 1;
	log_warning("'image_yscale' is not 1! Use variable 'yScale' instead");
	log_warning("Setting 'image_yscale' to 1");
}

if (image_angle != 0)
{
	image_angle = 0;
	log_warning("'image_angle' is not 0! Use variable 'rotation' instead");
	log_warning("Setting 'image_angle' to 0");
}
#endregion

// Handle sub-pixel movement
xVelRemainder += xVel;
xVel = floor(xVelRemainder);
xVelRemainder -= xVel;

yVelRemainder += yVel;
yVel = floor(yVelRemainder);
yVelRemainder -= yVel;

handle_tile_collisions();
check_for_ground();
handle_slopes();

debug_draw_arrow(x, y, x + xVel * 10, y, 2, c_red);
debug_draw_arrow(x, y, x, y + yVel * 10, 2, c_green);
