/// @description decides when to stop and start motor in play

if(obj_GameController.inPlay)
{
	if(rearWheel.onGround || frontWheel.onGround) startCar();
	else stopCar();
	
}
// Inherit the parent event
event_inherited();

