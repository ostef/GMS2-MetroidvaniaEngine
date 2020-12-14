/// @func time_get_datestamp()
/// @desc Get the date as a formatted string (month.day.year)
function time_get_datestamp() {
	return string(current_month) + "." + string(current_day) + "." + string(current_year);



}
