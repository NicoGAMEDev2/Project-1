vehicle = obj_GameController.vehicle;
if(obj_vehicleController.vehicle == obj_car)
{
	sprite_index = spr_TempBoat;
	obj_vehicleController.vehicle = obj_boat
}
else
{
	sprite_index = spr_TempCar;
	obj_vehicleController.vehicle = obj_car;
}
resetCar()