/// @func log_level_name(level)
/// @desc Get the name of the log level
/// @arg {LogLevel} level
var level = argument0;

switch (level)
{
	case LogLevel.Trace: return "TRACE";
	case LogLevel.Info: return "INFO";
	case LogLevel.Warning: return "WARNING";
	case LogLevel.Error: return "ERROR";
	case LogLevel.Fatal: return "FATAL";
}

return "UNKNOWN";
