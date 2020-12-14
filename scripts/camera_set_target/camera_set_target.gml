/// @func camera_set_target(target)
/// @desc Set the camera target
function camera_set_target(argument0) {
	var target = argument0;

	camera_clear_targets();
	camera_add_target(target, 1.0);

	with (Camera)
	{
		x = target.x + followXOffset;
		y = target.y + followYOffset;
	}



}
