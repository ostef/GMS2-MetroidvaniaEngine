/// @desc Remove first log message
ds_list_delete(logMessages, 0);

// Set the alarm to remove the next message
if (!ds_list_empty(logMessages))
{
	alarm[0] = LOG_MESSAGE_TIME_ON_SCREEN;
}
