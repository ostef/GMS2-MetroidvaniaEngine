/// @func snap(val, interval)
/// @desc Return the value snapped to the nearest multiple of interval
/// @arg {real} val
/// @arg {real} interval
var val = argument0;
var interval = argument1;

return round(val / interval) * interval;
