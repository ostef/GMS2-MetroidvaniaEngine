/// @desc Debug drawing
if (global.bDebugDrawing)
{
	for (var i = 0; i < ds_list_size(global.debugRects); i++)
	{
		var data = ds_list_find_value(global.debugRects, i);
		draw_rectangle_color(data[0], data[1], data[2], data[3], data[4], data[4], data[4], data[4], false);
	}
}

// Clear the debug rects
ds_list_clear(global.debugRects);
