
if(sprite_item != noone) draw_sprite(sprite_item, 0, window_mouse_get_x(), window_mouse_get_y());
draw_set_colour(c_yellow);
draw_rectangle(xBounds, 0, 1600 - xBounds, 900, true)

wMouseX = window_mouse_get_x();
wMouseY = window_mouse_get_y();

if(wMouseX > (1600 - xBounds))
{
	i = 3;
	if(item != noone || mouse_check_button(mb_left)) i = 2;
	xScale = ((wMouseX - (1600 - xBounds)) / xBounds) + 0.5
	draw_sprite_ext(spr_arrow, i, wMouseX, wMouseY, xScale, 1, 0, spr_arrow.image_blend, spr_arrow.image_alpha);
}

else if(wMouseX < xBounds)
{
	xScale = ((xBounds - wMouseX) / xBounds) + 0.5
	i = 1;
	if(item != noone || mouse_check_button(mb_left)) i = 0;
	draw_sprite_ext(spr_arrow, i, wMouseX, wMouseY, xScale, 1, 0, spr_arrow.image_blend, spr_arrow.image_alpha);
}



