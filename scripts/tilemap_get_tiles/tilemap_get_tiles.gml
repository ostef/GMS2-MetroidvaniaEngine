/// @func tilemap_get_tiles(tilemap)
/// @desc Get the tiles in the tilemap as a 2d array
/// @arg {tilemap} tilemap
var tilemap = argument0;
var width = tilemap_get_width(tilemap);
var height = tilemap_get_height(tilemap);
var tilemapData = array_create(width * height);

// Iterate through the tilemap and populate the array
for (var i = 0; i < width; i++)
{
	for (var j = 0; j < height; j++)
	{
		tilemapData[i, j] = tilemap_get(tilemap, i, j);
	}
}

return tilemapData;
