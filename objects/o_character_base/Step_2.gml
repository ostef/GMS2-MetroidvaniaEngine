/// @desc Draw debug infos
debug_draw_text(x, bbox_bottom, "is grounded: " + string(bGrounded), .3, c_white, 1, fa_center, fa_top);
debug_draw_text(x, bbox_bottom + 5, "is on platform: " + string(bStandingOnPlatform), .3, c_white, 1, fa_center, fa_top);
debug_draw_text(x, bbox_bottom + 2 * 5, "is on slope: " + string(bOnSlope), .3, c_white, 1, fa_center, fa_top);
debug_draw_text(x, bbox_bottom + 3 * 5, "slope angle: " + string(slopeAngle), .3, c_white, 1, fa_center, fa_top);
