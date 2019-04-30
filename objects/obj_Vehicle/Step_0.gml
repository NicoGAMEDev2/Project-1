/// @description Checks and updates if car is upside-down and on the ground

carAngle = abs(phy_rotation % 360);
if(abs(carAngle - 180) < 30)
{
	upsideDown = true;
}
else upsideDown = false;

if(upsideDown && place_meeting(x,y, obj_wall))
{
	if(include) 
	{
		chances -= 1;
		include = false;
	}
}	
else include = true;

if(!place_meeting(x, y, obj_SpeedRamp))
{

	with(obj_tire)
	{
		physics_joint_set_value(motor, phy_joint_motor_speed, obj_car.speed);
	}

}
//show_debug_message("chances: " + string(chances))
if(chances == 0) room_restart();
