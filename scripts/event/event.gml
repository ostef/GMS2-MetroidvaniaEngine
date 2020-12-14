/// @func event(eventName, eventData)
/// @desc Create an event object
/// @arg {string} eventName
/// @arg {any} eventData
function event(argument0, argument1) {
	var eventName = argument0;
	var eventData = argument1;

	enum Event
	{
		Name,
		Data
	}

	return [eventName, eventData];



}
