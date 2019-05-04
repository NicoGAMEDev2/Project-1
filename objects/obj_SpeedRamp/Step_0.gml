if(place_meeting(x, y, Obj_Vehicle))
{
	with(obj_tire)
	{
		physics_joint_set_value(motor, phy_joint_motor_speed, Obj_Vehicle.speed * 2);
		physics_apply_torque(10000);
	}
}