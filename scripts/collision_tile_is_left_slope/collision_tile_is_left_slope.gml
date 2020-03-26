/// @func collision_tile_is_left_slope(tile)
/// @arg {CollisionTile} tile
var tile = argument0;

return tile == CollisionTile.LSlope ||
	   tile == CollisionTile.LSlopeSmallStart || tile == CollisionTile.LSlopeSmallEnd ||
	   tile == CollisionTile.LSlopeVerySmallStart || tile == CollisionTile.LSlopeVerySmallMiddle1 ||
	   tile == CollisionTile.LSlopeVerySmallMiddle2 || tile == CollisionTile.LSlopeVerySmallEnd;
