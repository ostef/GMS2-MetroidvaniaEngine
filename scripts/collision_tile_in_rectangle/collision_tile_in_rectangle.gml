/// @func collision_tile_in_rectangle(x1, y1, x2, y2, tile)
/// @desc Similar to place meeting, but with collision tiles. Keep in mind this script will use the bbox infos and won't use precise or shaped collision masks! The behaviour is undefined if used outside the room bounds
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2
/// @arg {CollisionTile} tile
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var tile = argument4;

var tileWidth = o_collisions.tileWidth;
var tileHeight = o_collisions.tileHeight;
var cellStartX = floor(x1 / tileWidth);
var cellEndX = floor(x2 / tileWidth);
var cellStartY = floor(y1 / tileHeight);
var cellEndY = floor(y2 / tileHeight);
// Don't go out of bounds!
cellStartX = clamp(cellStartX, 0, o_collisions.tilemapWidth - 1);
cellEndX = clamp(cellEndX, 0, o_collisions.tilemapWidth - 1);
cellStartY = clamp(cellStartY, 0, o_collisions.tilemapHeight - 1);
cellEndY = clamp(cellEndY, 0, o_collisions.tilemapHeight - 1);

for (var i = cellStartX; i <= cellEndX; i++)
{
	for (var j = cellStartY; j <= cellEndY; j++)
	{
		if (collision_get_tile_at(i, j) != tile) { continue; }
		
		// Get the tile rectangle coordinates
		var tileX1 = i * tileWidth;
		var tileY1 = j * tileHeight;
		var tileX2 = tileX1 + tileWidth;
		var tileY2 = tileY1 + tileHeight;
		
		// If a collision occured, set the flag and break
		if (rectangle_in_rectangle(x1, y1, x2, y2, tileX1, tileY1, tileX2, tileY2))
		{
			return true;
		}
	}
}

return false;
