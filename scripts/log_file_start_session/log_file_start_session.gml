/// @func log_file_start_session(instanceId)
/// @arg {int} instanceId
var instanceId = argument0;
var filenamePrefix = instanceId == LOG_GLOBAL ? "log_" : "instance" + string(instanceId) + "_log_";

Debug.instanceLogOutputFileMap[? instanceId] = file_text_open_write(filenamePrefix + time_get_datestamp() + "_" + string(current_hour) + "h" + string(current_minute) + "m" + string(current_second) + "s.txt");
