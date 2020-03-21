/// @func state_machine_add_state(stateName, onEnter, onUpdate, onExit)
/// @desc Register a state into the state machine
/// @arg {string} stateName
/// @arg {script} onEnter
/// @arg {script} onUpdate
/// @arg {script} onExit
var stateName = argument0;
var onEnter = argument1;
var onUpdate = argument2;
var onExit = argument3;

if (ds_map_exists(stateMap, stateName))
{
	instance_log_error("STATE MACHINE: State " + stateName + " already exists!");
	
	return false;
}

// We only need the on update script to be valid
if (onUpdate != noone)
{
	stateMap[? stateName] = [onEnter, onUpdate, onExit];
	instance_log_info("STATE MACHINE: Created state " + stateName);
	
	return true;
}

instance_log_error("STATE MACHINE: State " + stateName + " creation failed: onUpdate script is 'noone'");

return false;
