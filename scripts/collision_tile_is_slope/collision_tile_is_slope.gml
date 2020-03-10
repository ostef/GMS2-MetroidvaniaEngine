/// @func collision_tile_is_slope(tileId)
/// @arg {int} tileId
var tileId = argument0;

return tileId >= TILE_RSLOPE && tileId <= TILE_LSLOPE_SMALL_START;
