/// @func state_machine_cleanup()
ds_stack_destroy(stateHistory);
ds_list_destroy(stateList);
