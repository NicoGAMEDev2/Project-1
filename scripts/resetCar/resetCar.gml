obj_GameController.inPlay = false;
obj_vehicleController.sprite_index = spr_Go;

X = Obj_Vehicle.spawnX;
Y = Obj_Vehicle.spawnY
instance_destroy(obj_car);
instance_destroy(obj_tire);
instance_create_layer(X, Y, "mouseObj", obj_car);

obj_money.money -= Obj_Vehicle.cost;
camera_set_view_target(view_camera[0], Obj_Vehicle);