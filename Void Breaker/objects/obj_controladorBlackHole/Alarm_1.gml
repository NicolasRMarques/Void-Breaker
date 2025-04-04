/// @description Ammo

alarm[1] = 30 * room_speed;

if(!global.pause and instance_exists(obj_blackHole)){
	instance_create_layer(irandom_range(50, 2510), irandom_range(50, 2510), "Instances", obj_ammo);
}