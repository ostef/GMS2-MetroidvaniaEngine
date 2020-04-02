/// @func camera_remove_target(target)
/// @arg target
var target = argument0;
var pos = ds_list_find_index(Camera.target, target);

// Remove the target if it was found
if (pos)
{
	ds_list_delete(Camera.targets, pos);
}