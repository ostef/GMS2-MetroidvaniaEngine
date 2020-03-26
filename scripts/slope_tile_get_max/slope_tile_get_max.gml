/// @func slope_tile_get_max(tile)
/// @arg {CollisionTile} tile
var tile = argument0;

switch (tile)
{
	case CollisionTile.RSlope:
	case CollisionTile.RSlopeSmallEnd:
	case CollisionTile.RSlopeVerySmallEnd:
		return 0;
	
	case CollisionTile.RSlopeSmallStart:
	case CollisionTile.LSlopeSmallEnd:
	case CollisionTile.RSlopeVerySmallMiddle1:
	case CollisionTile.LSlopeVerySmallMiddle2:
		return 8;
		
	case CollisionTile.LSlope:
	case CollisionTile.LSlopeSmallStart:
	case CollisionTile.LSlopeVerySmallStart:
		return 16;
		
	case CollisionTile.RSlopeVerySmallMiddle2:
	case CollisionTile.LSlopeVerySmallEnd:
		return 4;
		
	case CollisionTile.RSlopeVerySmallStart:
	case CollisionTile.LSlopeVerySmallMiddle1:
		return 12;
}

return 0;
