/// @description Asteroide

alarm[0] = 1 * room_speed;

if(!global.pause and instance_exists(obj_blackHole)){
	var inst = instance_create_layer(0, 0, "Instances", obj_asteroide);
}