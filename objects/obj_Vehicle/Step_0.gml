/// @description Checks and updates if car is upside-down and on the ground

carAngle = abs(phy_rotation % 360);
if(abs(carAngle - 180) < 30)
{
	upsideDown = true;
}
else upsideDown = false;

if(upsideDown && place_meeting(x,y, Obj_StaticCollisions))
{
	if(include) 
	{
		chances -= 1;
		include = false;
	}
}	
else include = true;


if(obj_GameController.inPlay && !place_meeting(phy_position_x, phy_position_y, obj_SpeedRamp))
{
	with(obj_tire)
	{
		physics_joint_set_value(motor, phy_joint_motor_speed, Obj_Vehicle.speed);
	}
}
if(chances == 0) resetCar();
