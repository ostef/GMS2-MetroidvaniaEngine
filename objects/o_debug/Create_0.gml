/// @desc Initialize variables
singleton_check();

enum LogLevel
{
	Trace = 0,
	Info = 1,
	Warning = 2,
	Error = 3,
	Fatal = 4
}

bDebugDrawing = true;
debugRects = ds_list_create();
bShowLogOutput = true;
logMessages = ds_list_create();
