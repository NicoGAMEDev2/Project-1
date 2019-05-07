/// @description decides when to stop and start motor in play



	
if(obj_GameController.inPlay)
{
	angle = phy_rotation % 360;
	if((angle) < 0) angle = 360 + angle;
	
	if(rearWheel.onGround || frontWheel.onGround) 
	{
		timer = timer_max;
		startCar();
	}
	else
	{ 
		timer -= 1;
		if(timer < 0) 
		{
			
			timer = timer_max;
			if(angle > angleOffSet && angle < (angleOffSet + angleRange)) 
			{
				show_debug_message("attempting to realign: rotate left");
				physics_apply_angular_impulse(-50);
			}
			else if(angle < (360 - angleOffSet) && angle > (360 - angleOffSet - angleRange))
			{
				show_debug_message("attempting to realign: rotate right");
				physics_apply_angular_impulse(50);
			}
		}
		stopCar();
	}
	
	
	
}
// Inherit the parent event
event_inherited();

