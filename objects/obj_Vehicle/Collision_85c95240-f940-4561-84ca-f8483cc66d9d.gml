/// @description When car is upsideDown it attempt to reposition itself
if(upsideDown)
{
	show_debug_message("oh no the car is upsideDown");

	show_debug_message("must apply a force");
	physics_apply_impulse(phy_position_x + 5, phy_position_y, 0, -50);
}