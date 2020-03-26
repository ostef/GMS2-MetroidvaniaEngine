/// @func slope_tile_get_min(tile)
/// @arg {CollisionTile} tile
var tile = argument0;

switch (tile)
{
	case CollisionTile.RSlope:
	case CollisionTile.RSlopeSmallStart:
	case CollisionTile.RSlopeVerySmallStart:
		return 16;
		
	case CollisionTile.LSlope:
	case CollisionTile.LSlopeSmallEnd:
	case CollisionTile.LSlopeVerySmallEnd:
		return 0;
	
	case CollisionTile.LSlopeSmallStart:
	case CollisionTile.RSlopeSmallEnd:
	case CollisionTile.RSlopeVerySmallMiddle2:
	case CollisionTile.LSlopeVerySmallMiddle1:
		return 8;
		
	case CollisionTile.RSlopeVerySmallEnd:
	case CollisionTile.LSlopeVerySmallMiddle2:
		return 4;
		
	case CollisionTile.RSlopeVerySmallMiddle1:
	case CollisionTile.LSlopeVerySmallStart:
		return 12;
}

return 0;
