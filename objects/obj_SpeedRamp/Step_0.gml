if(place_meeting(x, y, Obj_Vehicle))
{
	with(obj_tire)
	{
		spd = physics_joint_get_value(motor, phy_joint_speed)
		show_debug_message(string(spd));
		physics_joint_set_value(motor, phy_joint_motor_speed, 100000);
		
		tor = physics_joint_get_value(motor, phy_joint_max_torque)
		show_debug_message(string(tor));
		physics_joint_set_value(motor, phy_joint_max_torque, 100000);
	}
}