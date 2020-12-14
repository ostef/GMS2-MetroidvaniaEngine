/// @func event_callback_unregister(eventName, callbackInstanceId, callbackScript)
/// @desc Unregister an event callback
/// @arg {string} eventName
/// @arg {int} callbackInstanceId
/// @arg {scrip} callbackScript
function event_callback_unregister(argument0, argument1, argument2) {
	var eventName = argument0;
	var instanceId = argument1;
	var script = argument2;
	var callbackList = Events.eventCallbackMap[? eventName];

	// Sanity checks
	if (is_undefined(callbackList))
	{
		log_error("EVENTS: No callback for event " + eventName + " has been registered");
	
		return false;
	}

	// Look for the event callback and remove it from the list
	for (var i = 0; i < ds_list_size(callbackList); i++)
	{
		if (array_equals(callbackList[| i], event_callback(instanceId, script)))
		{
			ds_list_delete(callbackList, i);
			log_info("EVENTS: Unregistered callback for event " + eventName);
		
			return true;
		}
	}

	log_error("EVENTS: Callback for event " + eventName + " has not been registered");

	return false;



}
