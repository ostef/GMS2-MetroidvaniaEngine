/// @desc Cleanup
log_info("Game ended. Session time: " + string(current_time / 1000) + " seconds");
file_text_close(logOutputFile);
ds_map_destroy(instanceLogMap);
ds_list_destroy(drawCommands);
