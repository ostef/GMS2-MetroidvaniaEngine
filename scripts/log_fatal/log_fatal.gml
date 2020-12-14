/// @func log_trace(message)
/// @desc Log a fatal message (used in assertions)
/// @arg {string} message
function log_fatal(argument0) {
	var message = argument0;

	log_message(LogLevel.Fatal, message);



}
