/// @func log_level_get_color(level
/// @desc Get the color corresponding to the given log level
/// @arg {LogLevel} level
function log_level_get_color(argument0) {
	var level = argument0;

	switch (level)
	{
		case LogLevel.Trace: return c_white;
		case LogLevel.Info: return c_lime;
		case LogLevel.Warning: return c_yellow;
		case LogLevel.Error: return c_red;
		case LogLevel.Fatal: return c_red;
	}

	return c_white;



}
