if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id))
{
	if(sprite_index == spr_Stop) 
	{
		with(obj_tire)
		{
			physics_joint_enable_motor(motor, true);
		}
		obj_GameController.inPlay = true;
		sprite_index = spr_Go;
	}
	else if(sprite_index == spr_Go) 
	{
		with(obj_tire)
		{
			physics_joint_enable_motor(motor, false);
		}
		obj_GameController.inPlay = false;
		sprite_index = spr_Stop;
	}
}