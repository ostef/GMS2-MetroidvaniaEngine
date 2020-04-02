/// @func debug_draw_circle(x, y, radius, color, alpha, bFilled)
/// @desc Draw a debug circle on the screen
/// @arg {real} x
/// @arg {real} y
/// @arg {real} radius
/// @arg {int} color
/// @arg {real} alpha
/// @arg {bool} bFilled
var xx = argument0;
var yy = argument1;
var radius = argument2;
var color = argument3;
var alpha = argument4;
var bFilled = argument5;

enum DrawCircle
{
	X = 1,
	Y,
	Radius,
	Color,
	Alpha,
	FilledFlag
}

ds_list_add(Debug.drawCommands, [DebugDrawType.Circle, xx, yy, radius, color, alpha, bFilled]);
