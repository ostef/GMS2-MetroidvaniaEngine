/// @func debug_draw_text(x, y, text, color, halign, valign)
/// @desc Draw some text at a specific location in the room
/// @arg {real} x
/// @arg {real} y
/// @arg {string} text
/// @arg {int} color
/// @arg {int} halign
/// @arg {int} valign
var xx = argument0;
var yy = argument1;
var text = argument2;
var color = argument3;
var halign = argument4;
var valign = argument5;

ds_list_add(o_debug.drawCommands, [DebugDrawType.Text, xx, yy, text, color, halign, valign]);
