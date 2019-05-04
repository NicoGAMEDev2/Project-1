draw_self();
if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) && description1 != "")
{
	xDraw = x - sprite_xoffset + sprite_width/2;
	yDraw = y - sprite_yoffset + sprite_height;
	draw_set_color(c_blue);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_text_ext(xDraw, yDraw, description1, font_get_size(font0), 200);
}