/// @func state_exists(stateIndex)
/// @desc Returns true if the state exists, false if not
/// @arg {int} stateIndex
var stateIndex = argument0;

return stateIndex >= 0 && stateIndex < ds_list_size(stateList);
