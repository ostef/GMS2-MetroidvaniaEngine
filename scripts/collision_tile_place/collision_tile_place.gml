/// @func collision_tile_place(x, y, tileId)
/// @desc Similar to instance_place, but with collision tiles. Keep in mind this script will use the bbox infos and won't use precise or shaped collision masks! The behaviour is undefined if used outside the room bounds
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

var tileX = NaN;
var tileY = NaN;
var tileWidth = o_collisions.tileWidth;
var tileHeight = o_collisions.tileHeight;
var cellStartX = floor(bbox_left / tileWidth);
var cellEndX = floor(bbox_right / tileWidth);
var cellStartY = floor(bbox_top / tileHeight);
var cellEndY = floor(bbox_bottom / tileHeight);
// Don't go out of bounds!
cellStartX = clamp(cellStartX, 0, o_collisions.tilemapWidth - 1);
cellEndX = clamp(cellEndX, 0, o_collisions.tilemapWidth - 1);
cellStartY = clamp(cellStartY, 0, o_collisions.tilemapHeight - 1);
cellEndY = clamp(cellEndY, 0, o_collisions.tilemapHeight - 1);

var bCollided = false;
for (var i = cellStartX; i <= cellEndX; i++)
{
	for (var j = cellStartY; j <= cellEndY; j++)
	{
		if (collision_get_tile_at(i, j) != tileId) { continue; }
		
		// Get the tile rectangle coordinates
		var tileX1 = i * tileWidth;
		var tileY1 = j * tileHeight;
		var tileX2 = tileX1 + tileWidth;
		var tileY2 = tileY1 + tileHeight;
		
		// If a collision occured, set the flag and break
		if (rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, tileX1, tileY1, tileX2, tileY2))
		{
			tileX = tileX1;
			tileY = tileY1;
			bCollided = true;
			
			break;
		}
	}
	
	if (bCollided) { break; }
}

// Reset the x and y position
x = xOriginal;
y = yOriginal;

return point(tileX, tileY);
