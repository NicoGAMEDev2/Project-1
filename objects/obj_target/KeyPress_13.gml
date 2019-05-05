PassedOver = true;
show_message("YOU WIN")
OnEnter = false;
OnExit = false;
PassedOver = false;

switch(global.rm)
	{
		case 1: room_goto(2); break;
		case 2: room_goto(3); break;
		case 3: room_goto(0); break;
	}