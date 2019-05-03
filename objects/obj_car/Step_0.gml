/// @description Insert description here
// You can write your code in this editor

if(obj_GameController.inPlay)
{
	if(rearWheel.onGround || frontWheel.onGround) 
{
	show_debug_message("on the ground");
	startCar()
}
else
{
	show_debug_message("in the air");
	stopCar();
}
}
	

// Inherit the parent event
event_inherited();

