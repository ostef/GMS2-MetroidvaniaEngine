/// @func snap_upper(val, interval)
/// @desc Return the value snapped to the nearest multiple of interval that is greater than val
/// @arg {real} val
/// @arg {real} interval
var val = argument0;
var interval = argument1;

return ceil(val / interval) * interval;
