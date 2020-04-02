/// @func debug_draw_text(x, y, text, size, color, alpha, halign, valign)
/// @desc Draw some text at a specific location in the room
/// @arg {real} x
/// @arg {real} y
/// @arg {string} text
/// @arg {real} size
/// @arg {int} color
/// @arg {real} alpha
/// @arg {int} halign
/// @arg {int} valign
var xx = argument0;
var yy = argument1;
var text = argument2
var size = argument3;
var color = argument4;
var alpha = argument5;
var halign = argument6;
var valign = argument7;

enum DrawText
{
	X = 1,
	Y,
	Text,
	Size,
	Color,
	Alpha,
	HorizontalAlign,
	VerticalAlign
}

ds_list_add(Debug.drawCommands, [DebugDrawType.Text, xx, yy, text, size, color, alpha, halign, valign]);
