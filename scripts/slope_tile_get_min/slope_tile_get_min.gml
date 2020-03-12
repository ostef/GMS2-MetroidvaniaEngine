/// @desc slope_tile_get_min
/// @arg tileId
var tileId = argument0;

switch (tileId)
{
	case TILE_RSLOPE:
	case TILE_RSLOPE_SMALL_START:
		return 16;
		
	case TILE_LSLOPE:
		return 0;
	
	case TILE_LSLOPE_SMALL_START:
		return 8;
		
	case TILE_RSLOPE_SMALL_END:
		return 8;
	
	case TILE_LSLOPE_SMALL_END:
		return 0;
}

return 0;
