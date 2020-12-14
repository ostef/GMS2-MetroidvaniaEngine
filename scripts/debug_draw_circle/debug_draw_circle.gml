/// @func debug_draw_circle(x, y, radius, color, alpha, bFilled)
/// @desc Draw a debug circle on the screen
/// @arg {real} x
/// @arg {real} y
/// @arg {real} radius
/// @arg {int} color
/// @arg {real} alpha
/// @arg {bool} bFilled
function debug_draw_circle(argument0, argument1, argument2, argument3, argument4, argument5) {
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



}
