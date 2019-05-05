if(obj_GameController.inPlay == false && global.rm != 0)
{
	overInteractable = position_meeting(window_mouse_get_x(), window_mouse_get_y(), Obj_interactable);
	overItem = position_meeting(mouse_x, mouse_y, Obj_Item);
	overCameraManBoundary = false;
	
	
	if(item == noone && !overInteractable && !overItem)
	{
		camera_set_view_target(view_camera[0], id);
		x = camera_get_view_x(view_camera[0]) + 800;
		y = camera_get_view_y(view_camera[0]) + 450;
	}
	else if(!overInteractable && !overCameraManBoundary)
	{
		if(item != noone && itemSelect.item_amount > 0) 
		{
			instance_create_layer(mouse_x, mouse_y, "Interactables", item);
		}
	}
	
} 