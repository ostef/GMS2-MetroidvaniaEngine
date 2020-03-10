/// @func handle_tile_collisions()
/// @desc Handle collision with tiles
// Horizontal
{
	var xDir = xVel >= 0 ? 1 : -1;
	var tileWidth = o_collisions.tileWidth;
	var tileHeight = o_collisions.tileHeight;
	var x1 = xDir == 1 ? bbox_right : bbox_left + xVel;
	var y1 = bbox_top;
	var y2 = bbox_bottom;
	var x2 = xDir == 1 ? bbox_right + xVel : bbox_left;
	var cellCloseX = floor(xDir == 1 ? bbox_right / tileWidth : bbox_left / tileWidth);
	var cellFarX = floor(xDir == 1 ? (bbox_right + xVel) / tileWidth : (bbox_left + xVel) / tileWidth);
	var cellMinY = floor(bbox_top / tileHeight);
	var cellMaxY = floor(bbox_bottom / tileHeight);
	// Don't go out of bounds!
	cellCloseX = clamp(cellCloseX, 0, o_collisions.tilemapWidth - 1);
	cellFarX = clamp(cellFarX, 0, o_collisions.tilemapWidth - 1);
	cellMinY = clamp(cellMinY, 0, o_collisions.tilemapHeight - 1);
	cellMaxY = clamp(cellMaxY, 0, o_collisions.tilemapHeight - 1);
	
	var bCollided = false;

	for (var i = cellCloseX; i != cellFarX + xDir; i += xDir)
	{
		for (var j = cellMinY; j <= cellMaxY; j++)
		{
			bCollided = false;
			
			var tileId = o_collisions.tiles[i, j];
			var bSlopeTile = collision_tile_is_slope(tileId);
			// Ignore slopes if not on bottom most tile
			if (bSlopeTile && j != cellMaxY) { continue; }
			// Only collide with solid tiles
			if (tileId == TILE_VOID || tileId == TILE_PLATFORM) { continue; }
			// Get the tile rectangle coordinates
			var tileX1 = i * tileWidth;
			var tileY1 = j * tileHeight;
			var tileX2 = tileX1 + tileWidth;
			var tileY2 = tileY1 + tileHeight;
			
			bCollided = rectangle_in_rectangle(x1, y1, x2, y2, tileX1, tileY1, tileX2, tileY2);
			if (!bCollided) { continue; }
			
			// If the tile is a slope
			if (bSlopeTile)
			{
				var bOnVerticalSide = collision_tile_is_left_slope(tileId) ? x2 < tileX1 : x1 > tileX2;
				
				// If not on vertical side, climb the slope
				if (!bOnVerticalSide)
				{
					yVel = -abs(xVel);
					continue;
				}
			}
		
			// Update y velocity
			xVel = xDir == 1 ? tileX1 - x1 - 1 : tileX2 - x2;
		
			break;
		}
	
		if (bCollided) { break; }
	}
}

// Apply x movement
x += xVel;
x = clamp(x, mask_get_xoffset(), room_width - mask_get_width() + mask_get_xoffset());

// Vertical
{
	var yDir = yVel >= 0 ? 1 : -1;
	var x1 = bbox_left;
	var y1 = yDir == 1 ? bbox_bottom : bbox_top + yVel;
	var y2 = yDir == 1 ? bbox_bottom + yVel : bbox_top;
	var x2 = bbox_right;
	var cellMinX = floor(bbox_left / tileWidth);
	var cellMaxX = floor(bbox_right / tileWidth);
	var cellCloseY =  floor(yDir == 1 ? bbox_bottom / tileHeight : bbox_top / tileHeight);
	var cellFarY = floor(yDir == 1 ? (bbox_bottom + yVel) / tileWidth : (bbox_top + yVel) / tileWidth);
	// Don't go out of bounds!
	cellMinX = clamp(cellMinX, 0, o_collisions.tilemapWidth - 1);
	cellMaxX = clamp(cellMaxX, 0, o_collisions.tilemapWidth - 1);
	cellCloseY = clamp(cellCloseY, 0, o_collisions.tilemapHeight - 1);
	cellFarY = clamp(cellFarY, 0, o_collisions.tilemapHeight - 1);
	
	var bCollided = false;

	for (var j = cellCloseY; j != cellFarY + yDir; j += yDir)
	{
		for (var i = cellMinX; i < cellMaxX + 1; i++)
		{
			bCollided = false;
			
			var tileId = o_collisions.tiles[i, j];
			// Only collide with solid tiles
			if (tileId == 0) { continue; }
			// Get the tile rectangle coordinates
			var tileX1 = i * tileWidth;
			var tileY1 = j * tileHeight;
			var tileX2 = tileX1 + tileWidth;
			var tileY2 = tileY1 + tileHeight;
			// Collide with the bottom of the slope
			if (collision_tile_is_slope(tileId) && (yDir == 1 || bbox_top < tileY2)) { continue; }
			
			bCollided = rectangle_in_rectangle(x1, y1, x2, y2, tileX1, tileY1, tileX2, tileY2);
			if (!bCollided) { continue; }
		
			// Handle platforms
			if (tileId == TILE_PLATFORM)
			{
				if (bFallOffPlatform) { continue; }
				if (yDir == -1) { continue; }
				if (y1 > tileY1 - 1) { continue; }
			}
		
			// Update y velocity
			yVel = yDir == 1 ? tileY1 - y1 - 1 : tileY2 - y2;
		
			break;
		}
	
		if (bCollided) { break; }
	}
}

// Apply y movement
y += yVel;
y = clamp(y, mask_get_yoffset(), room_height - mask_get_height() + mask_get_yoffset());
