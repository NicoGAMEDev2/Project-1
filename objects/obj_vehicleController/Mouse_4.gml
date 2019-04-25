if(sprite_index == spr_Stop) 
{
	with(obj_tire)
	{
		physics_joint_enable_motor(motor, true);
	}
	inPlay = true;
	sprite_index = spr_Go;
}
else if(sprite_index == spr_Go) 
{
	with(obj_tire)
	{
		physics_joint_enable_motor(motor, false);
	}
	inPlay = false;
	sprite_index = spr_Stop;
}