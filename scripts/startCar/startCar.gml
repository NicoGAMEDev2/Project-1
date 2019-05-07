with(obj_tire)
{
	if(obj_GameController.inPlay) physics_joint_enable_motor(motor, true);
	else 
	{
		audio_play_sound(s_carGo, 1, false);
		physics_joint_set_value(motor, phy_joint_motor_speed, Obj_Vehicle.speed);
		
	}
	show_debug_message("start Car, motor speed: " + string(physics_joint_get_value(motor, phy_joint_motor_speed)));	
}