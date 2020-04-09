/// @desc Process events
for (var i = 0; i < ds_list_size(registeredEventList); i++)
{
	var eventObject = registeredEventList[| i];
	var callbackList = eventCallbackMap[? eventObject[Event.Name]];

	for (var j = 0; !is_undefined(callbackList) && j < ds_list_size(callbackList); j++)
	{
		var callback = callbackList[| j];
		
		if (instance_exists(callback[EventCallback.InstanceId]))
		{
			with (callback[EventCallback.InstanceId])
			{
				script_execute(callback[EventCallback.Script], eventObject[Event.Data]);
			}
		}
		else if (callback[EventCallback.InstanceId] == noone)
		{
			script_execute(callback[EventCallback.Script], eventObject[Event.Data]);
		}
	}
}

// Clear the list of registered events
ds_list_clear(registeredEventList);
