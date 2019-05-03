if(item != noone && itemSelect.item_amount <= 0) 
{
	sprite_item = noone;
	item = noone;
	itemSelect = noone;			
}
	
if(window_mouse_get_x() < xBounds)
{
	if(item != noone || mouse_check_button(mb_left)) x -= 0.1 * (xBounds - window_mouse_get_x());
}
else if(window_mouse_get_x() > 1600 - xBounds)
{
	if(item != noone || mouse_check_button(mb_left)) x += 0.1 *(window_mouse_get_x() - (1600 - xBounds));
}
else 
{
	x = camera_get_view_x(view_camera[0]) + 800;
	y = camera_get_view_y(view_camera[0]) + 450;
}	 
