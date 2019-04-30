if(obj_GameController.inPlay == false)
{
	overInteractable = position_meeting(window_mouse_get_x(), window_mouse_get_y(), Obj_interactable);
	overItem = position_meeting(mouse_x, mouse_y, Obj_Item);
	overCameraManBoundary = point_in_circle(mouse_x, mouse_y, obj_CameraMan.x, obj_CameraMan.y, obj_CameraMan.radius);
	
	if(item == noone && !overInteractable && !overItem)
	{
		x = mouse_x;
		y = mouse_y;
	}
	else if(!overInteractable && !overCameraManBoundary)
	{
		if(item != noone && itemSelect.item_amount > 0) 
		{
			instance_create_layer(mouse_x, mouse_y, "Interactables", item);
			if(!obj_GameController.continuous)
			{
				sprite_item = noone;
				item = noone;
				itemSelect = noone;
			}
			
		}
	}
	
} 