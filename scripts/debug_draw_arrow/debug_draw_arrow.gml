/// @func debug_draw_arrow(x1, y1, x2, y2, size, color, alpha)
/// @desc Draw a debug rectangle on the screen
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2
/// @arg {real} size
/// @arg {int} color
/// @arg {real} alpha
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var size = argument4;
var color = argument5;
var alpha = argument6;

ds_list_add(o_debug.drawCommands, [DebugDrawType.Arrow, x1, y1, x2, y2, size, color, alpha]);
