/// @func camera_remove_target(target)
/// @arg target
var target = argument0;
var pos = ds_list_find_index(o_camera.target, target);

if (pos)
{
	ds_list_delete(o_camera.targets, pos);
}