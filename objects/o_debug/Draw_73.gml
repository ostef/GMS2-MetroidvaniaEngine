/// @desc Debug drawing
if (bDebugDrawing)
{
	for (var i = 0; i < ds_list_size(drawCommands); i++)
	{
		var data = drawCommands[| i];
		var drawType = data[0];
		
		switch (drawType)
		{
			case DebugDrawType.Rectangle:
				var color = data[DEBUG_RECT_COLOR];
				draw_set_alpha(data[DEBUG_RECT_ALPHA]);
				draw_rectangle_color(data[DEBUG_RECT_X1], data[DEBUG_RECT_Y1], data[DEBUG_RECT_X2], data[DEBUG_RECT_Y2], color, color, color, color, !data[DEBUG_RECT_FILLED_FLAG]);
				draw_set_alpha(1);
				break;
				
			case DebugDrawType.Circle:
				draw_set_alpha(data[DEBUG_CIRCLE_ALPHA]);
				draw_circle_color(data[DEBUG_CIRCLE_X], data[DEBUG_CIRCLE_Y], data[DEBUG_CIRCLE_RADIUS], data[DEBUG_CIRCLE_COLOR], data[DEBUG_CIRCLE_COLOR], !data[DEBUG_CIRCLE_FILLED_FLAG]);
				draw_set_alpha(1);
				break;
				
			case DebugDrawType.Line:
				draw_set_alpha(data[DEBUG_LINE_ALPHA]);
				draw_line_color(data[DEBUG_LINE_X1], data[DEBUG_LINE_Y1], data[DEBUG_LINE_X2], data[DEBUG_LINE_Y2], data[DEBUG_LINE_COLOR], data[DEBUG_LINE_COLOR]);
				draw_set_alpha(1);
				break;
				
			case DebugDrawType.Arrow:
				draw_set_color(data[DEBUG_ARROW_COLOR]);
				draw_set_alpha(data[DEBUG_ARROW_ALPHA]);
				draw_arrow(data[DEBUG_ARROW_X1], data[DEBUG_ARROW_Y1], data[DEBUG_ARROW_X2], data[DEBUG_ARROW_Y2], data[DEBUG_ARROW_SIZE]);
				draw_set_alpha(1);
				draw_set_color(c_white);
				break;
				
			case DebugDrawType.Text:
				var color = data[DEBUG_TEXT_COLOR];
				draw_set_halign(data[DEBUG_TEXT_HALIGN]);
				draw_set_valign(data[DEBUG_TEXT_VALIGN]);
				draw_text_transformed_color(data[DEBUG_TEXT_X], data[DEBUG_TEXT_Y], data[DEBUG_TEXT_DATA], .3, .3, 0, color, color,color, color, data[DEBUG_TEXT_ALPHA]);
				draw_set_valign(fa_left);
				draw_set_halign(fa_top);
				break;
		}
	}
}

// Clear the draw command list
ds_list_clear(drawCommands);
