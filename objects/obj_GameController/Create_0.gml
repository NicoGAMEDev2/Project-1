global.rm = room;
inPlay = false;
var vehicle;
cheats = false;
game_score = 0;
game_highscore = 0;
if(instance_exists(obj_car)) vehicle = obj_car;
if(instance_exists(obj_boat)) vehicle = obj_boat;