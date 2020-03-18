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

enum DebugDrawType
{
	Rectangle = 0,
	Circle = 1,
	Line = 2,
	Arrow = 3,
	Text = 4
}

// Debug drawing
bDebugDrawing = true;
drawCommands = ds_list_create();
// Debug logging
bShowLogOutput = true;
instanceLogMap = ds_map_create();	// Key is the instance id, value is the log message list
logOutputFile = file_text_open_append("log.txt");

file_text_write_string(logOutputFile, "\n\n#################### " + time_get_datestamp() + " ####################\n");
log_info("Game started");
