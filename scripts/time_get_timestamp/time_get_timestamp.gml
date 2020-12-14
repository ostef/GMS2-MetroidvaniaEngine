/// @func time_get_timestamp()
/// @desc Get the time as a formatted string (hour:minute:second)
function time_get_timestamp() {
	return string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);



}
