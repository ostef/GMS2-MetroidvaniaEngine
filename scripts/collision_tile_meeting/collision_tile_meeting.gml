/// @func collision_tile_meeting(x, y, tileId)
/// @desc Similar to place meeting, but with collision tiles. Keep in mind this script will use the bbox infos and won't use precise or shaped collision masks! The behaviour is undefined if used outside the room bounds
/// @arg {real} x
/// @arg {real} y
/// @arg {int} tileId
var xx = argument0;
var yy = argument1;
var tileId = argument2;
var xOriginal = x;
var yOriginal = y;
// Move the object to the desired position
x = xx;
y = yy;

var bCollided = collision_rectangle_in_tile(bbox_left, bbox_top, bbox_right, bbox_bottom, tileId);

// Reset the x and y position
x = xOriginal;
y = yOriginal;

return bCollided;
