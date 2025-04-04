/// @description Asteroide

if(!global.pause and room == rm_asteroids){
	instance_create_layer(0, 0, "Instances", obj_asteroide);
}

if(score >= 5000){
	alarm[0] = 2 * room_speed;
} else {
	alarm[0] = 4 * room_speed;
}