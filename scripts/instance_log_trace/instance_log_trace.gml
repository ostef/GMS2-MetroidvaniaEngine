/// @func instance_log_trace(message)
/// @desc Log a debug message
/// @arg {string} message
function instance_log_trace(argument0) {
	var message = argument0;

	instance_log_message(LogLevel.Trace, message);



}
