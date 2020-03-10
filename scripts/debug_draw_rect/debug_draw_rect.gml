/// @func debug_draw_rect(x1, y1, x2, y2, color)
/// @desc Draw a debug rectangle on the screen
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg color
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var color = argument4;

ds_list_add(o_debug.debugRects, [x1, y1, x2, y2, color]);
