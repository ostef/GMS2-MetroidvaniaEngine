/// @func debug_draw_arrow(x1, y1, x2, y2, size, color, alpha)
/// @desc Draw a debug rectangle on the screen
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2
/// @arg {real} size
/// @arg {int} color
/// @arg {real} alpha
function debug_draw_arrow(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;
	var size = argument4;
	var color = argument5;
	var alpha = argument6;

	enum DrawArrow
	{
		X1 = 1,
		Y1,
		X2,
		Y2,
		Size,
		Color,
		Alpha
	}

	ds_list_add(Debug.drawCommands, [DebugDrawType.Arrow, x1, y1, x2, y2, size, color, alpha]);



}
