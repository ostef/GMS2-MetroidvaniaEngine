/// @desc Draw self
draw_sprite_ext(sprite_index, image_index, x, y, (bFacingLeft ? -1 : 1) * xScale, yScale, rotation, image_blend, image_alpha);
draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, .5);
