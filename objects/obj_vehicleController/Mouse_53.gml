if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id))
{
	with(obj_mouse)
	{
		sprite_item = noone;
		item = noone;
		itemSelect = noone;
	}
	if(sprite_index == spr_Go)
	{
		startCar();
		description1 = resetDis + string(Obj_Vehicle.cost);
		sprite_index = spr_Restart;
		obj_GameController.inPlay = true;
		camera_set_view_target(view_camera[0], Obj_Vehicle);
		
	}
	else if(sprite_index == spr_Restart)
	{
		description1 = goDis + string(Obj_Vehicle.cost);
		obj_GameController.inPlay = false;
		obj_mouse.x = Obj_Vehicle.x;
		obj_mouse.y = Obj_Vehicle.y;
		camera_set_view_target(view_camera[0], obj_mouse);
		resetCar();
	}
}