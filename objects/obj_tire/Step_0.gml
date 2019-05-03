/// @description turns motor on when on ground and off when in air.


if(physics_test_overlap(phy_position_x, phy_position_y, 0, obj_wall)) 
{
	onGround = true;
	i = insensitivity;
}
else
{
	i--;
	if(i < 0) onGround = false;
}

