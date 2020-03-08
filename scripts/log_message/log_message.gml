/// @func log_message(level, message)
/// @desc Log a message with the specified level
/// @arg {LogLevel} level
/// @arg {string} message
var level = argument0;
var message = argument1;

show_debug_message("[" + log_level_name(level) + "] " + message);

// Crash the game if level is fatal
if (level == LogLevel.Fatal)
{
	show_error(message, false);
}
