/// @func snap(val, interval)
/// @desc Return the value snapped to the nearest multiple of interval
/// @arg {real} val
/// @arg {real} interval
function snap(argument0, argument1) {
	var val = argument0;
	var interval = argument1;

	return round(val / interval) * interval;



}
