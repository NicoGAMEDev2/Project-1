if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id))
{
	with(obj_mouse)
	{
		sprite_item = noone;
		item = noone;
		itemSelect = noone;
	}
	if(sprite_index == spr_ContinuousOn) //switches to go
	{
		obj_GameController.continuous = false;
		sprite_index = spr_ContinuousOff;
	}
	else if(sprite_index == spr_ContinuousOff) //swithces to stop
	{
		obj_GameController.continuous = true;
		sprite_index = spr_ContinuousOn;
	}
}