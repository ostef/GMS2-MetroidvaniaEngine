/// @func state_machine_init()
/// @desc Initialize all variables for state machine
stateMap = ds_map_create();
stateHistory = ds_stack_create();

currentStateSteps = 0;
currentStateEntry = noone;
currentStateName = "";

bTransitioning = false;
nextStateEntry = noone;
nextStateName = "";
