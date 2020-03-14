/// @desc Debug drawing
if (bDebugDrawing)
{
	// Draw all the debug rects
	for (var i = 0; i < ds_list_size(drawCommands); i++)
	{
		var data = drawCommands[| i];
		var drawType = data[0];
		
		switch (drawType)
		{
			case DebugDrawType.Rectangle:
				draw_rectangle_color(data[1], data[2], data[3], data[4], data[5], data[5], data[5], data[5], !data[6]);
				break;
				
			case DebugDrawType.Circle:
				draw_circle_color(data[1], data[2], data[3], data[4], data[4], !data[5]);
				break;
				
			case DebugDrawType.Line:
				draw_line_color(data[1], data[2], data[3], data[4], data[5], data[5]);
				break;
				
			case DebugDrawType.Arrow:
				draw_set_color(data[6]);
				draw_arrow(data[1], data[2], data[3], data[4], data[5]);
				draw_set_color(c_white);
				break;
				
			case DebugDrawType.Text:
				draw_set_halign(data[5]);
				draw_set_valign(data[6]);
				draw_text_color(data[1], data[2], data[3], data[4], data[4], data[4], data[4], 1);
				draw_set_valign(fa_left);
				draw_set_halign(fa_top);
				break;
		}
	}
}

// Clear the debug rects
ds_list_clear(drawCommands);
