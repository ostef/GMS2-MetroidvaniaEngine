/// @func character_handle_slopes()
// Reset the slope flag
bWasOnSlope = bOnSlope;
bOnSlope = false;
// Don't check for slope when going upwards
if (yVel < 0) { exit; }

var tileWidth = o_collisions.tileWidth;
var tileHeight = o_collisions.tileHeight;
var cellMinX = floor(bbox_left / tileWidth);
var cellMaxX = floor(bbox_right / tileWidth);
var cellCloseSlope = floor((bbox_bottom - 1) / tileHeight);
var cellFarSlope = cellCloseSlope + 1;
cellMinX = clamp(cellMinX, 0, o_collisions.tilemapWidth - 1);
cellMaxX = clamp(cellMaxX, 0, o_collisions.tilemapWidth - 1);
cellCloseSlope = clamp(cellCloseSlope, 0, o_collisions.tilemapHeight - 1);
cellFarSlope = clamp(cellFarSlope, 0, o_collisions.tilemapHeight - 1);

for (var j = cellCloseSlope; j <= cellFarSlope; j++)
{
	for (var i = cellMinX; i <= cellMaxX; i++)
	{
		var tileId = collision_get_tile_at(i, j);
		// Only check for slopes
		if (!collision_tile_is_slope(tileId)) { continue; }
		
		// Get the tile rectangle coordinates
		var tileX1 = i * tileWidth;
		var tileY1 = j * tileHeight;
		var bLeftSlope = collision_tile_is_left_slope(tileId);
		
		// Calculate the relative position
		var xRel = x - tileX1;
		var yRel = y - tileY1;
		
		// Get if we're on the top of the slope
		var bOnSlopeTop = bLeftSlope ?
			xRel >= -(mask_get_width() - mask_get_xoffset()) && xRel < 0 :	// If \ slope
			xRel >= tileWidth && xRel < tileWidth + mask_get_xoffset();		// If / slope
			
		var bOnSlopeBottom = bLeftSlope ?
			xRel > tileWidth && xRel <= tileWidth + mask_get_xoffset() :	// If \ slope
			xRel >= -(mask_get_width () - mask_get_xoffset()) && xRel < 0;	// If / slope
		
		// Make sure we're on slope
		if ((xRel < 0 || xRel > tileWidth) && !bOnSlopeTop && !bOnSlopeBottom) { continue; }
		if (yRel < 0 || yRel > tileHeight) { continue; }
		
		// Get the slope positions
		var slopeMin = slope_tile_get_min(tileId);
		var slopeMax = slope_tile_get_max(tileId);
		var newYRel = 0;
		
		// Calculate the new y position relative to the tile
		if (bOnSlopeTop)
		{
			newYRel = min(slopeMin, slopeMax);
		}
		else if (bOnSlopeBottom)
		{
			newYRel = max(slopeMin, slopeMax);
		}
		else
		{
			newYRel = round(lerp(slopeMin, slopeMax, xRel / tileWidth));
			// Consider we're on slope only if not on slope top or bottom
			bOnSlope = true;
		}
		
		// Update the position
		y = newYRel + tileY1;
		// We're grounded
		bGrounded = true;
		bStandingOnPlatform = false;
		
		if (!bOnSlopeTop && !bOnSlopeBottom)
		{
			return;
		}
	}
}