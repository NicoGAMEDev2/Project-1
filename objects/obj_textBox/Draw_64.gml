if(global.rm != 0)
{
	if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), Obj_interactable) || obj_mouse.itemSelect != noone) draw_self();
}
