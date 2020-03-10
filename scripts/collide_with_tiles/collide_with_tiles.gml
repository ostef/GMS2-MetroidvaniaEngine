/// @func collide_with_tiles()
/// @desc Handle tile collisions
#region Horizontal
{
	var xDir = xVel >= 0 ? 1 : -1;
	var tileWidth = o_collisions.tileWidth;
	var tileHeight = o_collisions.tileHeight;
	var currentXVel = xDir * min(abs(xVel), tileWidth);
	
	while (xVel != 0)
	{
		var bCollided = false;
		// Get collision rect
		var x1 = bbox_right;
		var x2 = bbox_left;
		var y1 = bbox_top;
		var y2 = bbox_bottom;
		var cellX = floor(x1 / tileWidth);
		var cellMinY = floor(y1 / tileHeight);
		var cellMaxY = floor(y2 / tileHeight);
		// Don't go out of bounds!
		cellX = clamp(cellX, 0, o_collisions.tilemapWidth - 1);
		cellMinY = clamp(cellMinY, 0, o_collisions.tilemapHeight - 1);
		cellMaxY = clamp(cellMaxY, 0, o_collisions.tilemapHeight - 1);
	
		for (var cellY = cellMinY; cellY <= cellMaxY; cellY++)
		{
			var tileId = collision_get_tile_at(cellX, cellY);
			// Only collide with solid tiles
			if (tileId != TILE_SOLID) { continue; }
			// We collided with a solid tile
			bCollided = true;
			// Get the tile rect
			var tileX1 = cellX * tileWidth;
			var tileY1 = cellY * tileHeight;
			var tileX2 = tileX1 + tileWidth;
			var tileY2 = tileY1 + tileHeight;
			// Debug drawing
			debug_draw_rect(tileX1, tileY1, tileX2 - 1, tileY2 - 1, c_red);
			// Null out xVel
			xVel = 0;
			currentXVel = 0;
			// Modify x pos
			x = xDir == 1 ? tileX1 - 1 - (mask_get_width() - mask_get_xoffset()) : tileX2 + mask_get_xoffset();
		}
		
		if (bCollided) { break; }
	
		// Apply movement
		x += currentXVel;
		x = clamp(x, mask_get_xoffset(), room_width - mask_get_width() + mask_get_xoffset());
		// Update current x velocity
		xVel -= currentXVel;
		currentXVel = xDir * min(abs(xVel), tileWidth);
	}
}
#endregion
