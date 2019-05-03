if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id))
{
	with(obj_mouse)
	{
		sprite_item = noone;
		item = noone;
		itemSelect = noone;
	}
	if(sprite_index == spr_Stop) //switches to go
	{
		startCar();
		sprite_index = spr_Go;
		obj_GameController.inPlay = true;
		camera_set_view_target(view_camera[0], Obj_Vehicle);
		
	}
	else if(sprite_index == spr_Go) //swithces to stop
	{
		
		sprite_index = spr_Stop;
		obj_GameController.inPlay = false;
		obj_mouse.x = Obj_Vehicle.x;
		obj_mouse.y = Obj_Vehicle.y;
		camera_set_view_target(view_camera[0], obj_mouse);
		stopCar();
	}
}