/// @func event_callback_register(eventName, callbackInstanceId, callbackScript)
/// @desc Register an event callback to be called when an event has been fired
/// @arg {string} eventName
/// @arg {int} callbackInstanceId
/// @arg {scrip} callbackScript
function event_callback_register(argument0, argument1, argument2) {
	var eventName = argument0;
	var instanceId = argument1;
	var script = argument2;
	var callbackList = Events.eventCallbackMap[? eventName];
	assert(script_exists(script), "EVENTS: Callback script does not exist");

	// Create an entry if it does not exist
	if (is_undefined(callbackList))
	{
		callbackList = ds_list_create();
		ds_map_add_list(Events.eventCallbackMap, eventName, callbackList);
	}

	var callback = event_callback(instanceId, script);

	// Check if the callback has been registered already
	for (var i = 0; i < ds_list_size(callbackList); i++)
	{
		if (array_equals(callbackList[| i], callback))
		{
			log_error("EVENT: Callback [" + instanceId + "; " + script_get_name(script) + "] for event " + eventName + " has already been registered");
		
			return false;
		}
	}

	ds_list_add(callbackList, callback);
	log_info("EVENTS: Registered callback for event " + eventName);

	return true;



}
