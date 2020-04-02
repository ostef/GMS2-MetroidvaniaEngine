/// @func game_runs_in_ide()
if (debug_mode) { return true; }
if (code_is_compiled()) { return false; }
if (parameter_count() == 3 && parameter_string(1) == "-game") { return true; }

return false;
