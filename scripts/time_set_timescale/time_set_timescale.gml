/// @func time_set_timescale(timescale)
/// @arg {real} timescale
var timescale = argument0;

o_game.timescale = timescale;

// Update all animation speeds
with (all)
{
	image_speed *= o_game.timescale;
}
