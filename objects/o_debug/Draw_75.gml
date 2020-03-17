/// @desc Display log output
var charHeight = string_height(" ");
draw_text(10, 10, "FPS: " + string(1000000 / delta_time));

// Draw the logging messages
if (bShowLogOutput)
{
	var logMessages = instanceLogMap[? LOG_GLOBAL];
	
	if (!is_undefined(logMessages))
	{
		for (var i = 0; i < ds_list_size(logMessages); i++)
		{
			var current = logMessages[| i];
			var level = current[0];
			var message = current[1];
			var color = log_level_get_color(level);
			var alpha = i == 0 && alarm[0] < 0 ? alarm[1] / LOG_MESSAGE_FADE_TIME : 1.0;
	
			draw_text_color(10, 10 + charHeight + 2 + (charHeight) * i, message, color, color, color, color, alpha);
		}
	}
}
