/// @func camera_add_target(target, weight)
/// @arg {int} target
/// @arg {real} weight
var target = argument0;
var weight = argument1;

ds_list_add(o_camera.targets, [target, weight]);
