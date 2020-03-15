/// @func time_get_multiplier()
/// @desc Get the value to multiply with in for time scaling and delta timing
/// @desc Get the delta time multiplied by the game speed
return time_get_delta() * game_get_speed(gamespeed_fps) * time_get_timescale();
