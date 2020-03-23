/// @func calculate_jump_force(jumpHeight, gravity)
/// @desc Calculate the jump force required to reach a specific jumpHeight
/// @arg {real} jumpHeight
/// @arg {real} gravity
var jumpHeight = argument0;
var grav = argument1;

return sqrt(2 * grav * jumpHeight * time_get_timescale());
