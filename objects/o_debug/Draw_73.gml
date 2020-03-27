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
				var color = data[DrawRect.Color];
				draw_set_alpha(data[DrawRect.Alpha]);
				draw_rectangle_color(data[DrawRect.X1], data[DrawRect.Y1], data[DrawRect.X2], data[DrawRect.Y2], color, color, color, color, !data[DrawRect.FilledFlag]);
				draw_set_alpha(1);
				break;
				
			case DebugDrawType.Circle:
				draw_set_alpha(data[DrawCircle.Alpha]);
				draw_circle_color(data[DrawCircle.X], data[DrawCircle.Y], data[DrawCircle.Radius], data[DrawCircle.Color], data[DrawCircle.Color], !data[DrawCircle.FilledFlag]);
				draw_set_alpha(1);
				break;
				
			case DebugDrawType.Line:
				draw_set_alpha(data[DrawLine.Alpha]);
				draw_line_color(data[DrawLine.X1], data[DrawLine.Y1], data[DrawLine.X2], data[DrawLine.Y2], data[DrawLine.Color], data[DrawLine.Color]);
				draw_set_alpha(1);
				break;
				
			case DebugDrawType.Arrow:
				draw_set_color(data[DrawArrow.Color]);
				draw_set_alpha(data[DrawArrow.Alpha]);
				draw_arrow(data[DrawArrow.X1], data[DrawArrow.Y1], data[DrawArrow.X2], data[DrawArrow.Y2], data[DrawArrow.Size]);
				draw_set_alpha(1);
				draw_set_color(c_white);
				break;
				
			case DebugDrawType.Text:
				var color = data[DrawText.Color];
				draw_set_halign(data[DrawText.HorizontalAlign]);
				draw_set_valign(data[DrawText.VerticalAlign]);
				draw_text_transformed_color(data[DrawText.X], data[DrawText.Y], data[DrawText.Text], data[DrawText.Size], data[DrawText.Size], 0, color, color,color, color, data[DrawText.Alpha]);
				draw_set_valign(fa_left);
				draw_set_halign(fa_top);
				break;
		}
	}
}

// Clear the draw command list
ds_list_clear(drawCommands);
