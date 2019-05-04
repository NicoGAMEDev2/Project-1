event_inherited();
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_yellow);
xDraw = x - sprite_xoffset + sprite_width/2;
yDraw = y - sprite_yoffset + sprite_height;
if(item_name != "") 
{
	if(item_limit < 0) draw_text(xDraw, yDraw, item_name);
	else draw_text(xDraw, yDraw, item_name + ": " + string(item_amount));
}

if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) && description != "")
{
	draw_set_color(c_blue);
	draw_set_valign(fa_bottom);
	draw_text_ext(xDraw, y - sprite_yoffset - 20, description, font_get_size(font0), 200);
	
	draw_set_color(c_aqua);
	draw_text(window_mouse_get_x(), window_mouse_get_y(), "Cost $" + string(cost));
}