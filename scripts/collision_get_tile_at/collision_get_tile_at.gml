/// @func collision_get_tile_at(column, row)
/// @desc Get the collision tile id at a position
/// @arg column
/// @arg row
var column = argument0;
var row = argument1;

assert(column >= 0 && column < o_collisions.tilemapWidth && row >= 0 && row < o_collisions.tilemapHeight, "Accessing collision map outside of range");

return o_collisions.tiles[column, row];
