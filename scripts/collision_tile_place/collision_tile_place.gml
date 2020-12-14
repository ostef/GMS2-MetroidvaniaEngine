/// @func collision_tile_place(x, y, tile)
/// @desc Similar to instance_place, but with collision tiles. Keep in mind this script will use the bbox infos and won't use precise or shaped collision masks! The behaviour is undefined if used outside the room bounds
/// @arg {real} x
/// @arg {real} y
/// @arg {CollisionTile} tile
function collision_tile_place(argument0, argument1, argument2) {
	var xx = argument0;
	var yy = argument1;
	var tile = argument2;
	var xMovement = xx - x;
	var yMovement = yy - y;

	var tileX = NaN;
	var tileY = NaN;
	var tileWidth = Collisions.tileWidth;
	var tileHeight = Collisions.tileHeight;
	var cellStartX = floor((bbox_left + xMovement) / tileWidth);
	var cellEndX = floor((bbox_right + xMovement) / tileWidth);
	var cellStartY = floor((bbox_top + yMovement) / tileHeight);
	var cellEndY = floor((bbox_bottom + yMovement) / tileHeight);
	// Don't go out of bounds!
	cellStartX = clamp(cellStartX, 0, Collisions.tilemapWidth - 1);
	cellEndX = clamp(cellEndX, 0, Collisions.tilemapWidth - 1);
	cellStartY = clamp(cellStartY, 0, Collisions.tilemapHeight - 1);
	cellEndY = clamp(cellEndY, 0, Collisions.tilemapHeight - 1);

	var bCollided = false;
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
			if (rectangle_in_rectangle(bbox_left + xMovement, bbox_top + yMovement, bbox_right + xMovement, bbox_bottom + yMovement, tileX1, tileY1, tileX2, tileY2))
			{
				tileX = tileX1;
				tileY = tileY1;
				bCollided = true;
			
				break;
			}
		}
	
		if (bCollided) { break; }
	}

	return point(tileX, tileY);



}
