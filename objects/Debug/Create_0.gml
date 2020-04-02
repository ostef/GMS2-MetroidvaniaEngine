/// @desc Initialize variables
singleton_check();

// Debug drawing
bDebugDrawing = false;
drawCommands = ds_list_create();
// Debug logging
bShowLogOutput = false;
instanceLogMap = ds_map_create();	// Key is the instance id, value is the log message list
logOutputFile = file_text_open_write("log_" + time_get_datestamp() + "_" + string(current_hour) + "h" + string(current_minute) + "m" + string(current_second) + "s.txt");
log_info("Game started");
