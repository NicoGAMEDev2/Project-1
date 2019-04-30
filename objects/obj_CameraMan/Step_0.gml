
/// @description determines if vehicle passed the cameraman (also keeps count)

if(hitLimit <= 0)
{
	show_message("OOF Game Over");
	room_restart();
}
vehicle = collision_circle(x, y, radius , Obj_Vehicle, false, true);



if(vehicle != noone)
{
	
	if(point_in_circle(vehicle.x, vehicle.y, x, y, radius)  && Trigger) OnEnter = true;
	if(place_meeting(x,y, Obj_Vehicle) || place_meeting(x,y, obj_tire))
	{
		
		if(Trigger) hitLimit -= 1;
		show_message("try again, " + string(hitLimit) + " chances left");
		Trigger = false;
		OnEnter = false;
		with(Obj_Vehicle)
		{
			phy_position_x = spawnX;
			phy_position_y = spawnY;
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_angular_velocity = 0;
			phy_rotation = 0;
		}
		with(obj_tire)
		{
			phy_position_x = spawnX;
			phy_position_y = spawnY;
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_angular_velocity = 0;
			phy_rotation = 0;
		}
	}
}

if(!place_meeting(phy_position_x,phy_position_y, Obj_Vehicle) && !place_meeting(phy_position_x,phy_position_y, obj_tire) && Trigger == false)
{
	OnEnter = false;
	Trigger = true;
}

if(OnEnter && vehicle == noone) OnExit = true;

if(OnEnter && OnExit) PassedOver = true;	

if(PassedOver = true)
{
	switch(global.rm)
	{
		case 0: room_goto(1); break;
		case 1: room_goto(2); break;
		case 2: room_goto(0); break;
	}
	
	AmountPassed ++;
	show_debug_message("vehicle has passed over " + string(AmountPassed) + " times")
	show_message("YOU WIN")
	OnEnter = false;
	OnExit = false;
	PassedOver = false;
}