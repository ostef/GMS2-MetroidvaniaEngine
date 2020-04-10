/// @desc Cleanup
log_info("Game ended. Session time: " + string(current_time / 1000) + " seconds");

// Close all instance log files
var current = ds_map_find_first(instanceLogOutputFileMap);
while (!is_undefined(current))
{
	var file = instanceLogOutputFileMap[? current];
	file_text_close(file);
	current = ds_map_find_next(instanceLogOutputFileMap, current);
}

ds_map_destroy(instanceLogOutputFileMap);
ds_map_destroy(instanceLogMap);
ds_list_destroy(drawCommands);
