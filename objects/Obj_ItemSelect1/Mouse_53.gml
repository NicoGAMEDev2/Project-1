if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) && !obj_GameController.inPlay)
{
	obj_mouse.sprite_item = sprite_index;
	obj_mouse.item = item;
	obj_mouse.itemSelect = id;
}
