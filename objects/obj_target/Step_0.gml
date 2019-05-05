vehicle = physics_test_overlap(x, y, 0, Obj_Vehicle);

if(vehicle)
{
	show_debug_message("car is hit target");
	OnEnter = true;
}

if(OnEnter && !vehicle) OnExit = true;

if(OnEnter && OnExit) PassedOver = true;	

if(PassedOver = true)
{
	switch(global.rm)
	{
		case 1: room_goto(2); break;
		case 2: room_goto(3); break;
		case 3: room_goto(0); break;
	}
	show_message("YOU WIN")
	OnEnter = false;
	OnExit = false;
	PassedOver = false;
}