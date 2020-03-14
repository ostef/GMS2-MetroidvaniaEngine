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

enum ShapeType
{
	Rectangle = 0,
	Circle = 1,
	Line = 2,
	Arrow = 3
}

bDebugDrawing = true;
drawCommands = ds_list_create();
bShowLogOutput = true;
instanceLogMap = ds_map_create();
