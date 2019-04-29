if(obj_GameController.inPlay == false)
{
	overInteractable = position_meeting(window_mouse_get_x(), window_mouse_get_y(), Obj_interactable);
	overCameraManBoundary = point_in_circle(mouse_x, mouse_y, obj_CameraMan.x, obj_CameraMan.y, obj_CameraMan.radius);
	
	if(!overInteractable && !overCameraManBoundary)
	{
		if(sprite_index == spr_TempTrampo)
		{
			instance_create_layer(mouse_x, mouse_y, "Items", obj_JumpPad);
		}
		if(sprite_index == spr_TempHover)
		{
			instance_create_layer(mouse_x, mouse_y, "Items", obj_HoverPad);
		}
	}
} 