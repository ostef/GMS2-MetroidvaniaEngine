/// @desc Handle state transition
state_machine_handle_transition();
animation_system_update();

// Draw debug infos
debug_draw_text(x, y, "is grounded: " + string(bGrounded), c_white, 1, fa_center, fa_top);
debug_draw_text(x, y + 5, "is on platform: " + string(bStandingOnPlatform), c_white, 1, fa_center, fa_top);
debug_draw_text(x, y + 2 * 5, "is on slope: " + string(bOnSlope), c_white, 1, fa_center, fa_top);
