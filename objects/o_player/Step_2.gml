/// @desc Draw debug info
debug_draw_text(x, y + 4, "is grounded: " + string(bGrounded), c_white, fa_center, fa_middle);
debug_draw_text(x, y + 4 + 15, "is on platform: " + string(bStandingOnPlatform), c_white, fa_center, fa_middle);
debug_draw_text(x, y + 4 + 2 * 15, "is on slope: " + string(bOnSlope), c_white, fa_center, fa_middle);
