/// @func camera_set_limits(x1, y1, x2, y2)
/// @desc Set the camera limits
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

with (o_camera)
{
	limitX1 = x1;
	limitY1 = y1;
	limitX2 = x2;
	limitY2 = y2;
}
