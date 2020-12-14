/// @func debug_draw_instance_log_output(x,y, instanceId, size, color, alpha)
/// @desc Draw the log output of a specific instance
/// @arg {real} x
/// @arg {real} y
/// @arg {int} instanceId
/// @arg {real} size
/// @arg {int} color
/// @arg {real} alpha
function debug_draw_instance_log_output(argument0, argument1, argument2, argument3, argument4, argument5) {
	var xx = argument0;
	var yy = argument1;
	var instanceId = argument2;
	var size = argument3;
	var color = argument4;
	var alpha = argument5;
	var logOutputList = Debug.instanceLogMap[? instanceId];

	// Sanity check
	if (is_undefined(logOutputList))
	{
		return;
	}

	var logOutput = "";
	for (var i = 0; i < ds_list_size(logOutputList); i++)
	{
		var current = logOutputList[| i];
		logOutput += current[1] + "\n";
	}

	debug_draw_text(xx, yy, logOutput, size, color, alpha, fa_center, fa_bottom);



}
