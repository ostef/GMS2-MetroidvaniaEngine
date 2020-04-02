/// @func time_set_timescale(timescale)
/// @arg {real} timescale
var timescale = clamp(argument0, 0, 100);

Game.timescale = timescale;
log_trace("TIME: Set timescale to " + string(timescale));
