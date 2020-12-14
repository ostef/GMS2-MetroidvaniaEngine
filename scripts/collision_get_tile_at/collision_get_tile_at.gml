/// @func collision_get_tile_at(column, row)
/// @desc Get the collision tile id at a position
/// @arg {int} column
/// @arg {int} row
function collision_get_tile_at(argument0, argument1) {
	var column = argument0;
	var row = argument1;

	assert(column >= 0 && column < Collisions.tilemapWidth && row >= 0 && row < Collisions.tilemapHeight, "Accessing collision map outside of range");

	return Collisions.tiles[column, row];



}
