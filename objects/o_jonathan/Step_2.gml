/// @desc Update animations and transition between screens
event_inherited();

// Screen transition
var screenBounds = instance_place(x, y, o_screen_bounds);

if (screenBounds != noone)
{
	camera_set_limits(screenBounds.x, screenBounds.y,
			screenBounds.x + sprite_get_width(s_screen_bounds) * screenBounds.image_xscale,
			screenBounds.y + sprite_get_height(s_screen_bounds) * screenBounds.image_yscale);
}

// Draw mask
debug_draw_rect(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, .5, true);
