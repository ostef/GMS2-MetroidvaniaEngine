/// @func character_check_for_ground()
// Reset the grounded flags
bWasGrounded = bGrounded;
bGrounded = false;
bWasStandingOnPlatform = bStandingOnPlatform;
bStandingOnPlatform = false;

// Don't check for ground when going upwards
if (yVel < 0) { exit; }

var tileWidth = Collisions.tileWidth;
var tileHeight = Collisions.tileHeight;
var cellMinX = floor(bbox_left / tileWidth);
var cellMaxX = floor(bbox_right / tileWidth);
var cellY = ceil((bbox_bottom) / tileHeight);
cellMinX = clamp(cellMinX, 0, Collisions.tilemapWidth - 1);
cellMaxX = clamp(cellMaxX, 0, Collisions.tilemapWidth - 1);
cellY = clamp(cellY, 0, Collisions.tilemapHeight - 1);

for (var i = cellMinX; i < cellMaxX + 1; i++)
{
	var tileId = Collisions.tiles[i, cellY];
	var tileY = cellY * tileHeight;
	// Check if tile is solid or platform
	if (tileId != CollisionTile.Solid && tileId != CollisionTile.Platform) { continue; }
	
	if (tileY - bbox_bottom == 1)
	{
		// Handle platforms
		if (tileId == CollisionTile.Platform && bbox_bottom - 1 < tileY)
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

// Jump off platform
if (bFallOffPlatform && bStandingOnPlatform)
{
	y++;
	bStandingOnPlatform = false;
	bGrounded = false;
}

bFallOffPlatform = false;
