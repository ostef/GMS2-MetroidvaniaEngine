/// @func string_wrap_width
/// @arg {string} str
/// @arg {real} width
/// @arg {char} break
function string_wrap_width(argument0, argument1, argument2) {

	// https://www.gmlscripts.com/script/string_wordwrap_width
	// GMLscripts.com/license

	var text_current = argument0;
	var width = argument1;
	var break_char = argument2;
	var text_output = "";

	if (is_real(break_char))
	{
		break_char = "#";
	}

	text_output = "";

	for (var i = 1; i < string_length(text_current); i++)
	{
		// If the string exceeds the width limit
		if (string_width(string_copy(text_current, 1, i)) > width)
		{
			// Insert line break
			text_output += string_copy(text_current, 1, i - 1) + string(break_char);
			// Remove the text we just looked at from the current text string
			text_current = string_copy(text_current, i, string_length(text_current) - (i - 1));
			i = 1;
		}
	}

	if (string_length(text_current) > 0)
	{
		text_output += text_current;
	}

	return text_output;



}
