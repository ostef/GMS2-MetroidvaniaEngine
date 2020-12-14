/// @func instance_log_trace(message)
/// @desc Log a fatal message (used in assertions)
/// @arg {string} message
function instance_log_fatal(argument0) {
	var message = argument0;

	instance_log_message(LogLevel.Fatal, message);



}
