/// @func collision_tile_is_slope(tile)
/// @arg {CollisionTile} tile
function collision_tile_is_slope(argument0) {
	var tile = argument0;

	return tile >= CollisionTile.RSlope && tile <= CollisionTile.LSlopeVerySmallStart;



}
