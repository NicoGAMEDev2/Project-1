with(obj_tire)
{
	if(obj_GameController.inPlay) physics_joint_enable_motor(motor, false);
	else physics_joint_set_value(motor, phy_joint_motor_speed, 0);
	show_debug_message("stop Car, motor speed: " + string(physics_joint_get_value(motor, phy_joint_motor_speed)));
}