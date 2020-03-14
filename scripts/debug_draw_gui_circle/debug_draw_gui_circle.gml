/// @func debug_draw_gui_circle(x, y, radius, color, bFilled)
/// @desc Draw a debug circle on the screen
/// @arg {real} x
/// @arg {real} y
/// @arg {real} radius
/// @arg {int} color
/// @arg {bool} bFilled
var xx = argument0;
var yy = argument1;
var radius = argument2;
var color = argument3;
var bFilled = argument4;

ds_list_add(o_debug.guiDrawCommands, [DebugDrawType.Circle, xx, yy, radius, color, bFilled]);
