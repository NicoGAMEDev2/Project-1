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
		with(obj_tire)
		{
			physics_joint_enable_motor(motor, true);
		}
		obj_GameController.inPlay = true;
		sprite_index = spr_Go;
		camera_set_view_target(view_camera[0], Obj_Vehicle);
	}
	else if(sprite_index == spr_Go) //swithces to stop
	{
		with(obj_tire)
		{
			physics_joint_enable_motor(motor, false);
		}
		obj_GameController.inPlay = false;
		sprite_index = spr_Stop;
		obj_mouse.x = Obj_Vehicle.x;
		obj_mouse.y = Obj_Vehicle.y;
		camera_set_view_target(view_camera[0], obj_mouse);
	}
}