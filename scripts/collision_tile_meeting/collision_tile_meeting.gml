/// @func collision_tile_meeting(x, y, tile)
/// @desc Similar to place meeting, but with collision tiles. Keep in mind this script will use the bbox infos and won't use precise or shaped collision masks! The behaviour is undefined if used outside the room bounds
/// @arg {real} x
/// @arg {real} y
/// @arg {CollisionTile} tile
function collision_tile_meeting(argument0, argument1, argument2) {
	var xx = argument0;
	var yy = argument1;
	var tile = argument2;
	var xMovement = xx - x;
	var yMovement = yy - y;

	return collision_tile_in_rectangle(bbox_left + xMovement, bbox_top + yMovement , bbox_right + xMovement, bbox_bottom + yMovement, tile);



}
