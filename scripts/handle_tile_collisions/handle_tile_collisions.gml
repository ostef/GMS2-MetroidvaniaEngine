/// @func handle_tile_collisions()
var bboxSide = xVel > 0 ? bbox_right : bbox_left;

// Get whether or not a collision occured
for (var yy = bbox_top; yy < bbox_bottom; yy = clamp(yy + Collisions.tileHeight, bbox_top, bbox_bottom))
{
	if (tilemap_get_at_pixel(Collisions.tilemap, bboxSide + xVel, yy) == CollisionTile.Solid)
	{
		while (tilemap_get_at_pixel(Collisions.tilemap, bboxSide + sign(xVel), yy) != CollisionTile.Solid)
		{
			x += sign(xVel);
			bboxSide = xVel > 0 ? bbox_right : bbox_left;
		}
		
		xVel = 0;
		
		break;
	}
}

// Apply x movement
x += xVel;
x = clamp(x, positionLimitX1 + mask_get_xoffset(), positionLimitX2 - mask_get_width() + mask_get_xoffset());

bboxSide = yVel > 0 ? bbox_bottom : bbox_top;

// Get whether or not a collision occured
for (var xx = bbox_left; xx < bbox_right; xx = clamp(xx + Collisions.tileWidth, bbox_left, bbox_right))
{
	if (tilemap_get_at_pixel(Collisions.tilemap, xx, bboxSide + yVel) == CollisionTile.Solid)
	{
		while (tilemap_get_at_pixel(Collisions.tilemap, xx, bboxSide + sign(yVel)) != CollisionTile.Solid)
		{
			y += sign(yVel);
			bboxSide = yVel > 0 ? bbox_bottom : bbox_top;
		}
		
		yVel = 0;
		
		break;
	}
}

// Apply x movement
y += yVel;
y = clamp(y, positionLimitY1 + mask_get_yoffset(), positionLimitY2 - mask_get_height() + mask_get_yoffset());

