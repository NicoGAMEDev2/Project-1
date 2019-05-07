if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) && !obj_GameController.inPlay)
{
	obj_mouse.sprite_item = sprite_index;
	obj_mouse.item = item;
	obj_mouse.itemSelect = id;
	camera_set_view_target(view_camera[0], obj_mouse);
}
