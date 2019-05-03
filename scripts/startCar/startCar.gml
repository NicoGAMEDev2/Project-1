with(obj_tire)
{
	if(obj_GameController.inPlay) physics_joint_enable_motor(motor, true);
	else physics_joint_set_value(motor, phy_joint_motor_speed, obj_car.speed);
	show_debug_message("start Car, motor speed: " + string(physics_joint_get_value(motor, phy_joint_motor_speed)));	
}