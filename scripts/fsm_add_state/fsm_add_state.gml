/// @func fsm_add_state(stateMachine, onEnter, onUpdate, onExit)
/// @desc Register a state into the state machine. Returns the state index
/// @arg {FSM} stateMachine
/// @arg {script} onEnter
/// @arg {script} onUpdate
/// @arg {script} onExit
var stateMachine = argument0;
var onEnter = argument1;
var onUpdate = argument2;
var onExit = argument3;
assert(is_fsm(stateMachine), "Argument is not an FSM!");

// We only need the on update script for the state to be valid
if (script_exists(onUpdate))
{
	ds_list_add(stateMachine[@ FSM.StateList], [onEnter, onUpdate, onExit]);
	instance_log_info("STATE MACHINE: Created state [" + script_get_name(onEnter) + ", " + script_get_name(onUpdate) + ", " + script_get_name(onExit) + "]");
	
	return ds_list_size(stateMachine[@ FSM.StateList]) - 1;
}

instance_log_error("STATE MACHINE: State creation failed: onUpdate script does not exist");

return noone;
