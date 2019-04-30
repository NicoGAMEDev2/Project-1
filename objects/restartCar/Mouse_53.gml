if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id))
{
	if(obj_mouse.item == noone) 
	{
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
		//room_restart();
	}
}