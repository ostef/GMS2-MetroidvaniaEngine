/// @func debug_draw_text(x, y, text, color, alpha, halign, valign)
/// @desc Draw some text at a specific location in the room
/// @arg {real} x
/// @arg {real} y
/// @arg {string} text
/// @arg {int} color
/// @arg {real} alpha
/// @arg {int} halign
/// @arg {int} valign
var xx = argument0;
var yy = argument1;
var text = argument2;
var color = argument3;
var alpha = argument4;
var halign = argument5;
var valign = argument6;

ds_list_add(o_debug.drawCommands, [DebugDrawType.Text, xx, yy, text, color, alpha, halign, valign]);
