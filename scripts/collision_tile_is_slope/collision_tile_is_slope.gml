/// @func collision_tile_is_slope(tile)
/// @arg {CollisionTile} tile
var tile = argument0;

return tile >= CollisionTile.RSlope && tile <= CollisionTile.LSlopeVerySmallStart;
