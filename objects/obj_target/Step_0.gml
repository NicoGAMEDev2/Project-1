if(OnEnter && vehicle == noone) OnExit = true;

if(OnEnter && OnExit) PassedOver = true;	

if(PassedOver = true)
{
	switch(global.rm)
	{
		case 0: room_goto(1); break;
		case 1: room_goto(2); break;
		case 2: room_goto(0); break;
	}
	
	AmountPassed ++;
	show_debug_message("vehicle has passed over " + string(AmountPassed) + " times")
	show_message("YOU WIN")
	OnEnter = false;
	OnExit = false;
	PassedOver = false;
}