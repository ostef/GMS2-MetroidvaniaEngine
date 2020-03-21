/// @func state_machine_add_state(onEnter, onUpdate, onExit)
/// @desc Register a state into the state machine. Returns the state index
/// @arg {script} onEnter
/// @arg {script} onUpdate
/// @arg {script} onExit
var onEnter = argument0;
var onUpdate = argument1;
var onExit = argument2;

// We only need the on update script for the state to be valid
if (onUpdate != noone)
{
	ds_list_add(stateList, [onEnter, onUpdate, onExit]);
	instance_log_info("STATE MACHINE: Created state [" + script_get_name(onEnter) + ", " + script_get_name(onUpdate) + ", " + script_get_name(onExit) + "]");
	
	return ds_list_size(stateList) - 1;
}

instance_log_error("STATE MACHINE: State creation failed: onUpdate script is 'noone'");

return noone;
