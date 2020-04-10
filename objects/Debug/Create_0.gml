/// @desc Initialize variables
singleton_check();

// Debug drawing
bDebugDrawing = false;
drawCommands = ds_list_create();
// Debug logging
bShowLogOutput = false;
instanceLogMap = ds_map_create();	// Key is the instance id, value is the log message list
instanceLogOutputFileMap = ds_map_create();
log_file_start_session(LOG_GLOBAL);
log_info("Game started");
