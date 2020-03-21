/// @desc Initialize variables
singleton_check();

// Debug drawing
bDebugDrawing = false;
drawCommands = ds_list_create();
// Debug logging
bShowLogOutput = false;
instanceLogMap = ds_map_create();	// Key is the instance id, value is the log message list
logOutputFile = file_text_open_append("log.txt");

file_text_write_string(logOutputFile, "\n#################### " + time_get_datestamp() + " ####################\n");
log_info("Game started");
