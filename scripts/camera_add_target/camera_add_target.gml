/// @func camera_add_target(target)
/// @arg target
var target = argument0;

// Add a target to the list
if (!ds_list_find_index(o_camera.targets, target))
{
	ds_list_add(o_camera.targets, target);
}
