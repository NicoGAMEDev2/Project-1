//Apply impulse to the vehicle
with(other) //OTHER indicates the object it has collide with (in this case the bus)
{ //within this block of code, we are now accessing and applying code to the OTHER (the bus)
	if(abs(other.phy_position_x - phy_position_x) < 1) //using OTHER in this block of code refers back to the orignal object this code currently resides in.
	{
		physics_apply_impulse(phy_position_x, phy_position_y, 0, -other.jumpForce);
	}
}