/// @func log_message(level, message)
/// @desc Log a message with the specified level
/// @arg {LogLevel} level
/// @arg {string} message
/// @arg {int} instanceId
var level = argument[0];
var message = argument[1];
var instanceId = argument_count > 2 ? argument[2] : LOG_GLOBAL;
var display = "[" + log_level_get_name(level) + "](" + time_get_timestamp() + ") " + message;
var maxLogMessages = instanceId == LOG_GLOBAL ? LOG_GLOBAL_MAX_MESSAGES : LOG_INSTANCE_MAX_MESSAGES;
var logMessages = Debug.instanceLogMap[? instanceId];

// Create the entry if it does not exist
if (is_undefined(logMessages))
{
	logMessages = ds_list_create();
	ds_map_add_list(Debug.instanceLogMap, instanceId, logMessages);
}

// Add the an entry to the log messages
ds_list_add(logMessages, [level, display]);

if (ds_list_size(logMessages) > maxLogMessages)
{
	ds_list_delete(logMessages, 0);
}
 
// Log to file if started
var file = Debug.instanceLogOutputFileMap[? instanceId];

if (!is_undefined(file))
{
	// Write a line to the output log file
	file_text_write_string(file, display + "\n");
}
 
// Show a debug message if global logging
if (instanceId == LOG_GLOBAL)
{
	// Show a message in the debugger
	show_debug_message(display);
	
	Debug.alarm[0] = LOG_MESSAGE_TIME_ON_SCREEN - LOG_MESSAGE_FADE_TIME;
}

// Crash the game if level is fatal
if (level == LogLevel.Fatal)
{
	show_error(message, false);
}
