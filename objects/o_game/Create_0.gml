/// @desc Initialize variables
global.deltaMicros = 0.0;
global.deltaMillis = 0.0;
global.deltaSeconds = 0.0;
global.deltaTimeMult = 0.0;

// Debug logging
enum LogLevel
{
	Trace = 0,
	Info = 1,
	Warning = 2,
	Error = 3,
	Fatal = 4
}

global.bDebugDrawing = true;
global.debugRects = ds_list_create();
