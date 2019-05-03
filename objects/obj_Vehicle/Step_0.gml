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


//show_debug_message("chances: " + string(chances))
if(chances == 0) room_restart();
