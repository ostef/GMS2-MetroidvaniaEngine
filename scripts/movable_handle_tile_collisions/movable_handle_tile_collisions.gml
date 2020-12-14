/// @func movable_handle_tile_collisions()
/// @desc Handle collision with tiles
function movable_handle_tile_collisions() {
	var tileWidth = Collisions.tileWidth;
	var tileHeight = Collisions.tileHeight;

	// Round up the position, just in case
	// Having a non integer position makes the alogorithm freak out, even with integer velocities: non-integer position + integer velocity = non-integer position
	x = round(x);
	y = round(y);

#region Horizontal
	{
		var xDir = xVel >= 0 ? 1 : -1;
		var x1 = xDir == 1 ? bbox_right : bbox_left + xVel;
		var y1 = bbox_top;
		var x2 = xDir == 1 ? bbox_right + xVel : bbox_left;
		var y2 = bbox_bottom;
		var cellCloseX = floor(xDir == 1 ? bbox_right / tileWidth : bbox_left / tileWidth);
		var cellFarX = floor(xDir == 1 ? (bbox_right + xVel) / tileWidth : (bbox_left + xVel) / tileWidth);
		var cellMinY = floor(bbox_top / tileHeight);
		var cellMaxY = floor(bbox_bottom / tileHeight);
		// Don't go out of bounds!
		cellCloseX = clamp(cellCloseX, 0, Collisions.tilemapWidth - 1);
		cellFarX = clamp(cellFarX, 0, Collisions.tilemapWidth - 1);
		cellMinY = clamp(cellMinY, 0, Collisions.tilemapHeight - 1);
		cellMaxY = clamp(cellMaxY, 0, Collisions.tilemapHeight - 1);
	
		var bCollided = false;

		for (var i = cellCloseX; i != cellFarX + xDir; i += xDir)
		{
			for (var j = cellMinY; j <= cellMaxY; j++)
			{
				bCollided = false;
			
				// Don't check with bottom most tile when on slope
				if (bOnSlope && j == cellMaxY) { continue; }
				var tileId = collision_get_tile_at(i, j);
				var bSlopeTile = collision_tile_is_slope(tileId);
				var bLeftSlopeTile = collision_tile_is_left_slope(tileId);
				// Only collide with solid tiles
				if (tileId == CollisionTile.Void || tileId == CollisionTile.Platform) { continue; }
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
					var bOnVerticalSide = xDir == 1 ? bLeftSlopeTile : !bLeftSlopeTile;
					var sideTileX = clamp(bLeftSlopeTile ? i - 1 : i + 1, 0, Collisions.tilemapWidth - 1);
					var bSideTileFree = collision_get_tile_at(sideTileX, j) == CollisionTile.Void || collision_get_tile_at(sideTileX, j) == CollisionTile.Platform;
				
					if (!bOnVerticalSide || !bSideTileFree) { continue; }
				}
		
				// Update x velocity
				x += xDir == 1 ? tileX1 - x1 - 1 : tileX2 - x2;
				xVel = 0;
		
				break;
			}
	
			if (bCollided) { break; }
		}
	}
#endregion

	// Apply x movement
	x += xVel;
	x = clamp(x, positionLimitX1 + mask_get_xoffset(), positionLimitX2 - mask_get_width() + mask_get_xoffset());

#region Vertical
	{
		var yDir = yVel >= 0 ? 1 : -1;
		var x1 = bbox_left;
		var y1 = yDir == 1 ? bbox_bottom : bbox_top + yVel;
		var x2 = bbox_right;
		var y2 = yDir == 1 ? bbox_bottom + yVel : bbox_top;
		var cellMinX = floor(bbox_left / tileWidth);
		var cellMaxX = floor(bbox_right / tileWidth);
		var cellCloseY =  floor(yDir == 1 ? bbox_bottom / tileHeight : bbox_top / tileHeight);
		var cellFarY = floor(yDir == 1 ? (bbox_bottom + yVel) / tileWidth : (bbox_top + yVel) / tileWidth);
		// Don't go out of bounds!
		cellMinX = clamp(cellMinX, 0, Collisions.tilemapWidth - 1);
		cellMaxX = clamp(cellMaxX, 0, Collisions.tilemapWidth - 1);
		cellCloseY = clamp(cellCloseY, 0, Collisions.tilemapHeight - 1);
		cellFarY = clamp(cellFarY, 0, Collisions.tilemapHeight - 1);
	
		var bCollided = false;
	
		for (var j = cellCloseY; j != cellFarY + yDir; j += yDir)
		{
			for (var i = cellMinX; i < cellMaxX + 1; i++)
			{
				bCollided = false;
			
				// Don't check with bottom most tile when on slope
				if (bOnSlope && j == cellCloseY) { continue; }
				var tileId = collision_get_tile_at(i, j);
				// Only collide with solid tiles
				if (tileId == CollisionTile.Void) { continue; }
				// Get the tile rectangle coordinates
				var tileX1 = i * tileWidth;
				var tileY1 = j * tileHeight;
				var tileX2 = tileX1 + tileWidth;
				var tileY2 = tileY1 + tileHeight;
			
				// Collide only with the bottom of the slope
				if (collision_tile_is_slope(tileId) && (yDir == 1 || bbox_top < tileY2))
				{
					continue;
				}
			
				bCollided = rectangle_in_rectangle(x1, y1, x2, y2, tileX1, tileY1, tileX2, tileY2);
				if (!bCollided) { continue; }
		
				// Collide with platforms
				if (tileId == CollisionTile.Platform && (bFallOffPlatform || yDir == -1 || y1 > tileY1 - 1))
				{
					continue;
				}
		
				// Update y velocity
				y += yDir == 1 ? tileY1 - y1 - 1 : tileY2 - y2;
				yVel = 0;
		
				break;
			}
	
			if (bCollided) { break; }
		}
	}
#endregion

	// Apply y movement
	y += yVel;
	y = clamp(y, positionLimitY1 + mask_get_yoffset(), positionLimitY2 - mask_get_height() + mask_get_yoffset());



}
