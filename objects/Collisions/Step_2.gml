/// @desc Draw the tile grid
// Don't draw the grid, but keep the code in case we need it again
exit;

for (var i = 0; i < tilemapWidth; i++)
{
	debug_draw_line(i * tileWidth - 1, 0, i * tileWidth - 1, tilemapHeight * tileHeight, c_white, .5);
}

for (var j = 0; j < tilemapHeight; j++)
{
	debug_draw_line(0, j * tileHeight - 1, tilemapWidth * tileWidth, j * tileHeight - 1, c_white, .5);
}

