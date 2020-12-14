/// @func event_register(eventName, eventData)
/// @desc Register an event to be triggered in the event phase
/// @arg {string} eventName
/// @arg {any} eventData
function event_register(argument0, argument1) {
	var eventName = argument0;
	var eventData = argument1;

	ds_list_add(Events.registeredEventList, event(eventName, eventData));



}
