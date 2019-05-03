
if(sprite_item != noone) draw_sprite(sprite_item, 0, window_mouse_get_x(), window_mouse_get_y());
draw_set_colour(c_yellow);
draw_rectangle(xBounds, 0, 1600 - xBounds, 900, true)
if(window_mouse_get_x() < xBounds)
{
	draw_sprite_ext(mouse_arrow, 0, window_mouse_get_x(), window_mouse_get_y(), mouse_arrow.image_xscale, mouse_arrow.image_yscale, 180, image_blend, image_alpha);
}
else if(window_mouse_get_x() > 1600 - xBounds)
{
	draw_sprite_ext(mouse_arrow, 0, window_mouse_get_x(), window_mouse_get_y(), mouse_arrow.image_xscale, mouse_arrow.image_yscale, 0, image_blend, image_alpha);
}