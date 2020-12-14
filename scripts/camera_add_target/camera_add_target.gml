/// @func camera_add_target(target, weight)
/// @arg {int} target
/// @arg {real} weight
function camera_add_target(argument0, argument1) {
	var target = argument0;
	var weight = argument1;

	ds_list_add(Camera.targets, [target, weight]);



}
