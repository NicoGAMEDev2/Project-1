offset = sprite_width/2

vehicle = collision_rectangle(x - offset, y - hitBoxHeight, x + offset, y, Obj_Vehicle, false, true);

if(vehicle != noone)
{
	show_debug_message("car is here");
	with(vehicle) // indicates the object it has collide with (in this case the bus)
	{ //within this block of code, we are now accessing and applying code to the OTHER (the bus)
		if(abs(other.phy_position_x - phy_position_x) < 10) //using OTHER in this block of code refers back to the orignal object this code currently resides in.
		{
			audio_play_sound(s_Jump, 1, false);
			physics_apply_impulse(phy_com_x, phy_com_x, 0, -obj_JumpPad.jumpForce);
			
			with(obj_tire)
			{
				physics_apply_impulse(phy_com_x, phy_com_y, 0, -obj_JumpPad.jumpForce);
			}
			
		}
	}
	
}