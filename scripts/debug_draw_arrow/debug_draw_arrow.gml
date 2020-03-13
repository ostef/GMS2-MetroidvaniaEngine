/// @func debug_draw_arrow(x1, y1, x2, y2, size, color)
/// @desc Draw a debug rectangle on the screen
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2
/// @arg {real} size
/// @arg {int} color
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var size = argument4;
var color = argument5;

ds_list_add(o_debug.drawCommands, [ShapeType.Arrow, x1, y1, x2, y2, size, color]);
