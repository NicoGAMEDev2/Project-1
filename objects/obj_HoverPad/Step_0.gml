offset = sprite_width/2

vehicle = collision_rectangle(x - offset, y - 100, x + offset, y, Obj_Vehicle, false, true);

if(vehicle != noone)
{
	show_debug_message("car is here");
	with(vehicle) 
	{ 
		if(phy_position_y > other.phy_position_y -  other.hoverHeight) phy_position_y = other.phy_position_y -  other.hoverHeight;
		else phy_position_y = phy_position_yprevious;	
	}
}