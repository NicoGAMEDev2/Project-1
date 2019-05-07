offset = sprite_width/2

vehicle = collision_rectangle(x - offset, y - 100, x + offset, y, Obj_Vehicle, false, true);

if(vehicle != noone)
{
	show_debug_message("car is here");
	if(!audio_is_playing(s_Hover)) audio_play_sound(s_Hover, 4, false);
	with(vehicle) 
	{ 
		if(phy_position_y > other.phy_position_y -  other.hoverHeight) phy_position_y = other.phy_position_y -  other.hoverHeight;
		else phy_position_y = phy_position_yprevious;	
	}
}
else audio_pause_sound(s_Hover);