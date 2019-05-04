if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id))
{
	if(obj_mouse.item == noone) 
	{
		obj_vehicleController.sprite_index = spr_Stop;
		
		with(obj_vehicleController)
		{
			obj_GameController.inPlay = false;
			sprite_index = spr_Stop;
			camera_set_view_target(view_camera[0], Obj_Vehicle);
		}
		
		with(Obj_Vehicle)
		{
			phy_position_x = spawnX;
			phy_position_y = spawnY;
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_angular_velocity = 0;
			phy_rotation = 0;
		}
		with(obj_tire)
		{
			phy_position_x = spawnX;
			phy_position_y = spawnY;
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_angular_velocity = 0;
			phy_rotation = 0;
		}
	}
}