/// @description game over when vehicle collides with camera man
resetCar();
hits -= 1;
if(hits > 0) show_message("You Hit the CameraMan, " + string(hits) + " chances left");
else 
{
	show_message("The CameraMan has quit and is going to sue you in court for the pain that you have cause him.");
	room_restart();
}