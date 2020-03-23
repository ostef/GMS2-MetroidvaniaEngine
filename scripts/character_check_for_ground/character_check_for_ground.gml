/// @func character_check_for_ground()
// Jump off platform
if (bFallOffPlatform && bStandingOnPlatform)
{
	y++;
}

// Reset the grounded flags
bFallOffPlatform = false;
bWasGrounded = bGrounded;
bGrounded = false;
bWasStandingOnPlatform = bStandingOnPlatform;
bStandingOnPlatform = false;

// Don't check for ground when going upwards
if (yVel < 0) { exit; }

var tileWidth = o_collisions.tileWidth;
var tileHeight = o_collisions.tileHeight;
var cellMinX = floor(bbox_left / tileWidth);
var cellMaxX = floor(bbox_right / tileWidth);
var cellY = ceil((bbox_bottom) / tileHeight);
cellMinX = clamp(cellMinX, 0, o_collisions.tilemapWidth - 1);
cellMaxX = clamp(cellMaxX, 0, o_collisions.tilemapWidth - 1);
cellY = clamp(cellY, 0, o_collisions.tilemapHeight - 1);

for (var i = cellMinX; i < cellMaxX + 1; i++)
{
	var tileId = o_collisions.tiles[i, cellY];
	var tileY = cellY * tileHeight;
	// Check if tile is solid or platform
	if (tileId != TILE_SOLID && tileId != TILE_PLATFORM) { continue; }
	
	if (tileY - bbox_bottom == 1)
	{
		// Handle platforms
		if (tileId == TILE_PLATFORM && bbox_bottom - 1 < tileY)
		{
			bGrounded = true;
			bStandingOnPlatform = true;
			y = tileY;
		
			// Continue so we check if we are also partly on a solid tile
			continue;
		}
	
		bGrounded = true;
		bStandingOnPlatform = false;
		y = tileY;
	
		break;
	}
}
