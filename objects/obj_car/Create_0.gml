

// 1:1 scale rear is x - 18
rearLoc = 18 * image_xscale
frontLoc = 17 * image_xscale

//rear wheel
wheel = instance_create_layer(x - rearLoc, y, "Instances", obj_tire);

wheel.image_xscale = image_xscale;
wheel.image_yscale = image_yscale;

//creates the circular fixure
fix = physics_fixture_create();

physics_fixture_set_circle_shape(fix, wheel.sprite_width / 2);
physics_fixture_set_friction(fix, friction);
//attaches fixture to wheel
physics_fixture_bind_ext(fix, wheel, wheel.sprite_width / 2, wheel.sprite_width / 2);

//attaches the rear wheel
rearWheel =physics_joint_revolute_create(id, wheel, wheel.x, wheel.y, 0, 0, 0, torque, speed, false, false);

//front wheel
wheel = instance_create_layer(x + frontLoc, y, "Instances", obj_tire);

wheel.image_xscale = image_xscale;
wheel.image_yscale = image_yscale;

//reuses fixture to attach to wheel
physics_fixture_bind_ext(fix, wheel, wheel.sprite_width / 2, wheel.sprite_width / 2);
//deletes fixture
physics_fixture_delete(fix);
//ataches the front wheel
frontWheel = physics_joint_revolute_create(id, wheel, wheel.x, wheel.y, 0, 0, 0, torque, speed, false, false);