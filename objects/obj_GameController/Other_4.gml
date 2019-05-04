global.rm = room;
inPlay = false;
camera_set_view_target(view_camera[0], obj_mouse);

if(instance_exists(obj_car)) vehicle = obj_car;
if(instance_exists(obj_boat)) vehicle = obj_boat;
