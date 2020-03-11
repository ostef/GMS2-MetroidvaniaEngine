/// @func input_map_to_axis(axisName, inputType, input, bPositive)
/// @desc Map an input to a given axis
/// @arg {string} axisName
/// @arg {InputType} inputType
/// @arg {int} input
/// @arg {bool} bPositive
var axisName = argument0;
var inputType = argument1;
var input = argument2;
var bPositive = argument3;
var entry = o_input_system.axesMa[? axisName];

if (!is_undefined(entry))
{
	ds_list_add(entry, [inputType, input, bPositive]);
	log_trace("INPUT: Added mapping to " + axisName + " axis");
}
else
{
	log_error("INPUT: Trying to add a mapping to a non-existing axis");
}
