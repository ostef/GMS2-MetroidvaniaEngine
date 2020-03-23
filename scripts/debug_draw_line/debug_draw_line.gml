/// @func debug_draw_line(x1, y1, x2, y2, color, alpha)
/// @desc Draw a debug rectangle on the screen
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2
/// @arg {int} color
/// @arg {real} alpha
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var color = argument4;
var alpha = argument5;

ds_list_add(o_debug.drawCommands, [DebugDrawType.Line, x1, y1, x2, y2, color, alpha]);
