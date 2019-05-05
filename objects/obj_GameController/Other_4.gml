global.rm = room;
inPlay = false;
if(global.rm != 0)
{
	camera_set_view_target(view_camera[0], obj_mouse);
	if(instance_exists(obj_car)) vehicle = obj_car;
	if(instance_exists(obj_boat)) vehicle = obj_boat;
}

