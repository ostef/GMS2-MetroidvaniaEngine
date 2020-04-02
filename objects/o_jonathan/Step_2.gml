/// @desc Draw the mask
event_inherited();

// Screen transition
var screenBounds = instance_place(x, y, o_screen_bounds);

if (screenBounds != noone)
{
	camera_set_limits(screenBounds.x, screenBounds.y,
			screenBounds.x + sprite_get_width(s_screen_bounds) * screenBounds.image_xscale,
			screenBounds.y + sprite_get_height(s_screen_bounds) * screenBounds.image_yscale);
}

var current = ds_map_find_first(inventory);
var i = 0;
while (!is_undefined(current))
{
	var item = inventory[? current];
	debug_draw_text(x, bbox_top - i * 5, current + " : " + string(item[InventorySlot.ItemCount]), .3, c_white, 1.0, fa_center, fa_bottom);
	i++;
	current = ds_map_find_next(inventory, current);
}
