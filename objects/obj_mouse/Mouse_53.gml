if(obj_GameController.inPlay == false)
{
	overItemSelect = position_meeting(x, y, Obj_ItemSelect);
	overCameraManBoundary = point_in_circle(mouse_x, mouse_y, obj_CameraMan.x, obj_CameraMan.y, obj_CameraMan.radius);
	if(!overItemSelect && !overCameraManBoundary)
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