/// @description determines if vehicle passed the cameraman (also keeps count)

vehicle = collision_circle(x, y, radius , Obj_Vehicle, false, true);

if(vehicle != noone)
{
	OnEnter = true;
}

if(OnEnter && vehicle == noone)
{
	OnExit = true;
}

if(OnEnter && OnExit)
{
	PassedOver = true;	
}

if(PassedOver = true)
{
	AmountPassed ++;
	show_debug_message("vehicle has passed over " + string(AmountPassed) + " times")
	OnEnter = false;
	OnExit = false;
	PassedOver = false;
}