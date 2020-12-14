/// @func event_callback(instanceId, script)
/// @desc Create an event callback object
/// @arg {int} instanceId
/// @arg {script} script
function event_callback(argument0, argument1) {
	var instanceId = argument0;
	var script = argument1;

	enum EventCallback
	{
		InstanceId,
		Script
	}

	return [instanceId, script];



}
