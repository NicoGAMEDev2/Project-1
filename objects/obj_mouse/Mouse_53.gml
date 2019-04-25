if(obj_vehicleController.inPlay == false)
{
	if(!position_meeting(x, y, Obj_ItemSelect))
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
	else if(!position_meeting(x, y, obj_CameraMan.vehicle))
	{
		if(sprite_index == spr_TempTrampo)
		{
		}
		if(sprite_index == spr_TempHover)
		{
		}
	}
} 
else 
{
	if(!position_meeting(x, y, Obj_ItemSelect))
	{
		if(sprite_index == spr_TempTrampo)
		{
		}
		if(sprite_index == spr_TempHover)
		{
		}
	}
}