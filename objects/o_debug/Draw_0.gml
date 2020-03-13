/// @desc Debug drawing
if (bDebugDrawing)
{
	// Draw all the debug rects
	for (var i = 0; i < ds_list_size(drawCommands); i++)
	{
		var data = drawCommands[| i];
		var shapeType = data[0];
		
		switch (shapeType)
		{
			case ShapeType.Rectangle:
				draw_rectangle_color(data[1], data[2], data[3], data[4], data[5], data[5], data[5], data[5], data[6]);
				break;
				
			case ShapeType.Circle:
				draw_circle_color(data[1], data[2], data[3], data[4], data[4], data[5]);
				break;
				
			case ShapeType.Line:
				draw_line_color(data[1], data[2], data[3], data[4], data[5], data[5]);
				break;
				
			case ShapeType.Arrow:
				draw_set_color(data[6]);
				draw_arrow(data[1], data[2], data[3], data[4], data[5]);
				draw_set_color(c_white);
				break;
		}
	}
}

// Clear the debug rects
ds_list_clear(drawCommands);
