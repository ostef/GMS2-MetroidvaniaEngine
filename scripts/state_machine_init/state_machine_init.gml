/// @func state_machine_init()
/// @desc Initialize all variables for state machine
stateList = ds_list_create();
stateHistory = ds_stack_create();

currentStateSteps = 0;
currentStateIndex = noone;
nextStateIndex = noone;

bTransitioning = false;
