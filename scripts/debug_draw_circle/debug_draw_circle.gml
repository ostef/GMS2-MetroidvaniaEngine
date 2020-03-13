/// @func debug_draw_circle(x, y, color, bFilled)
/// @desc Draw a debug circle on the screen
/// @arg {real} x
/// @arg {real} y
/// @arg {real} x2
/// @arg {real} y2
/// @arg {int} color
/// @arg {bool} bFilled
var xx = argument0;
var yy = argument1;
var color = argument2;
var bFilled = argument3;

ds_list_add(o_debug.drawCommands, [ShapeType.Circle, xx, yy, color, bFilled]);
