/// @description game over when tire also collides with camera man
resetCar();
if(!audio_is_playing(s_Scream)) audio_play_sound(s_Scream, 8, false);
hits -= 1;
if(hits > 0) show_message("You Hit the CameraMan, " + string(hits) + " chances left");
else 
{
	show_message("The CameraMan has quit and is going to sue you in court for the pain that you have cause him.");
	room_restart();
}