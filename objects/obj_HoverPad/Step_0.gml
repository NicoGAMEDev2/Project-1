offset = sprite_width/2

vehicle = collision_rectangle(x - offset, y - 100, x + offset, y, Obj_Vehicle, false, true);

if(vehicle != noone)
{
	show_debug_message("car is here");
	with(vehicle) 
	{ 
		phy_position_y = other.phy_position_y -  other.hoverHeight;
	}
}