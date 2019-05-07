physics_mass_properties(phy_mass, 8, 0, phy_inertia);
rideHieght = 0;
// 1:1 scale rear is x - 18
rearLoc = 18 * image_xscale
frontLoc = 17 * image_xscale

//rear wheel
wheel = instance_create_layer(x - rearLoc, y + rideHieght, layer, obj_tire);

wheel.image_xscale = image_xscale;
wheel.image_yscale = image_yscale;

//creates the circular fixure
fix = physics_fixture_create();

physics_fixture_set_circle_shape(fix, wheel.sprite_width / 2);
physics_fixture_set_friction(fix, friction);
physics_fixture_set_density(fix , 4);
//attaches fixture to wheel
physics_fixture_bind_ext(fix, wheel, wheel.sprite_width / 2, wheel.sprite_width / 2);

//attaches the rear wheel
rearWheel = physics_joint_revolute_create(id, wheel, wheel.x, wheel.y, 0, 0, 0, torque, 0, true, false);
wheel.motor = rearWheel;
rearWheel = wheel;
//front wheel
wheel = instance_create_layer(x + frontLoc, y + rideHieght, layer, obj_tire);

wheel.image_xscale = image_xscale;
wheel.image_yscale = image_yscale;

//reuses fixture to attach to wheel
physics_fixture_bind_ext(fix, wheel, wheel.sprite_width / 2, wheel.sprite_width / 2);
//deletes fixture
physics_fixture_delete(fix);
//ataches the front wheel
frontWheel = physics_joint_revolute_create(id, wheel, wheel.x, wheel.y, 0, 0, 0, torque, 0, true, false);
wheel.motor = frontWheel;
frontWheel = wheel;


timer_max = 6;
timer = timer_max;

angleOffSet = 10;
angleRange = 45;