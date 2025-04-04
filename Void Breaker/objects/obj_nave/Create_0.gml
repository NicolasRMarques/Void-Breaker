image_index = global.costume;
image_speed = 0;

global.shipSpeed = 8*60/room_speed;
global.turnSpeed = 6*60/room_speed;

global.invincible_time = 0;

if(room == rm_blackHole){
	if (layer_get_id("Instances") == layer) {
		direction = 90;
		image_angle = direction;		
		x = 1280;
		y = 1120;
	} else if (layer_get_id("Instances_room") == layer) {
		direction = 90;
		image_angle = direction;
		x = 1280;
		y = 2336;
	}
}