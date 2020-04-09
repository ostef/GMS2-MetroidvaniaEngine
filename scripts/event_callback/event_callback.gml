/// @func event_callback(instanceId, script)
/// @desc Create an event callback object
/// @arg {int} instanceId
/// @arg {script} script
var instanceId = argument0;
var script = argument1;

enum EventCallback
{
	InstanceId,
	Script
}

return [instanceId, script];
