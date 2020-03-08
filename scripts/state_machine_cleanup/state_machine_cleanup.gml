/// @func state_machine_cleanup()
ds_stack_destroy(stateHistory);
ds_map_destroy(stateMap);
