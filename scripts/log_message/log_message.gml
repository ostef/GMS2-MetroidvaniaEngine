/// @func log_message(level, message)
/// @desc Log a message with the specified level
/// @arg {LogLevel} level
/// @arg {string} message
var level = argument0;
var message = argument1;
var display = "[" + log_level_get_name(level) + "](" + time_get_timestamp() + ") " + message;

show_debug_message(display);

// Add the an entry to the messages in o_debug
ds_list_add(o_debug.logMessages, [level, display]);
o_debug.alarm[0] = LOG_MESSAGE_TIME_ON_SCREEN;

// Crash the game if level is fatal
if (level == LogLevel.Fatal)
{
	show_error(message, false);
}
