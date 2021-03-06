/// @func snap_lower(val, interval)
/// @desc Return the value snapped to the nearest multiple of interval that is lower than val
/// @arg {real} val
/// @arg {real} interval
function snap_lower(argument0, argument1) {
	var val = argument0;
	var interval = argument1;

	return floor(val / interval) * interval;



}
