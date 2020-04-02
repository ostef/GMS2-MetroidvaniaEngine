/// @func debug_draw_rect(x1, y1, x2, y2, color, alpha, bFilled)
/// @desc Draw a debug rectangle on the screen
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2
/// @arg {int} color
/// @arg {real} alpha
/// @arg {bool} bFilled
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var color = argument4;
var alpha = argument5;
var bFilled = argument6;

enum DrawRect
{
	X1 = 1,
	Y1,
	X2,
	Y2,
	Color,
	Alpha,
	FilledFlag
}


ds_list_add(Debug.drawCommands, [DebugDrawType.Rectangle, x1, y1, x2, y2, color, alpha, bFilled]);
