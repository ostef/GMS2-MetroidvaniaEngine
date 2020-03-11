/// @func camera_remove_target(target)
/// @arg target
var target = argument0;
var pos = o_camera.target[| target];

// Remove the target if it was found
if (pos)
{
	ds_list_delete(o_camera.targets, pos);
}