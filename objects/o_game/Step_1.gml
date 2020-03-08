/// @desc Delta timing
global.deltaMicros = delta_time;
global.deltaMillis = 1000.0 * global.deltaMicros;
global.deltaSeconds = 1000.0 * global.deltaMillis;
global.deltaTimeMult = global.deltaSeconds * game_get_speed(gamespeed_fps);
