/// @func log_message(level, message)
/// @desc Log a message with the specified level
/// @arg {LogLevel} level
/// @arg {string} message
/// @arg {int} instanceId
var level = argument[0];
var message = argument[1];
var instanceId = argument_count > 2 ? argument[2] : LOG_GLOBAL;
var display = "[" + log_level_get_name(level) + "](" + time_get_timestamp() + ") " + message;
// Get the log messages list corresponding to the instanceId
var logMessages = o_debug.instanceLogMap[? instanceId];

// Create the entry if it does not exist
if (is_undefined(logMessages))
{
	logMessages = ds_list_create();
	ds_map_add_list(o_debug.instanceLogMap, instanceId, logMessages);
}

// Add the an entry to the log messages
ds_list_add(logMessages, [level, display]);
 
// Show a debug message if global logging
if (instanceId == LOG_GLOBAL)
{
	show_debug_message(display);
	o_debug.alarm[0] = LOG_MESSAGE_TIME_ON_SCREEN - LOG_MESSAGE_FADE_TIME;
}

// Crash the game if level is fatal
if (level == LogLevel.Fatal)
{
	show_error(message, false);
}
