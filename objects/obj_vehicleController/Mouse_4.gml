if(sprite_index == spr_Stop) 
{
	with(obj_tire)
	{
		physics_joint_enable_motor(motor, true);
	}
	sprite_index = spr_Go;
}
else if(sprite_index == spr_Go) 
{
	with(obj_tire)
	{
		physics_joint_enable_motor(motor, false);
	}
	sprite_index = spr_Stop;
}