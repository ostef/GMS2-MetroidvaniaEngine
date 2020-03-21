/// @desc Handle state transition
state_machine_handle_transition();

// Draw debug infos
debug_draw_text(x, y, "state: " + currentStateName, c_white, fa_center, fa_top);
debug_draw_text(x, y + 5, "is grounded: " + string(bGrounded), c_white, fa_center, fa_top);
debug_draw_text(x, y + 2 * 5, "is on platform: " + string(bStandingOnPlatform), c_white, fa_center, fa_top);
debug_draw_text(x, y + 3 * 5, "is on slope: " + string(bOnSlope), c_white, fa_center, fa_top);
