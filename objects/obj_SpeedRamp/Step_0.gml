if(place_meeting(x, y, Obj_Vehicle))
{
	if(!audio_is_playing(s_Boost)) audio_play_sound(s_Boost, 5, false);
	with(obj_tire)
	{
		physics_joint_set_value(motor, phy_joint_motor_speed, Obj_Vehicle.speed * 2);
		physics_apply_torque(10000);
	}
}
else audio_pause_sound(s_Boost);