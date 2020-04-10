/// @func is_fsm(value)
/// @desc Returns true if the argument is an FSM, false if not
/// @arg {any} value
var value = argument0;

if (!is_array(value)) { return false; }
if (array_length_1d(value) != 5) { return false; }
if (!ds_exists(value[FSM.StateList], ds_type_list)) { return false; }
if (!ds_exists(value[FSM.StateHistory], ds_type_stack)) { return false; }

return true;
