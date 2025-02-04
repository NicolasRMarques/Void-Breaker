/// @description Ammo

alarm[1] = 60 * room_speed;

if(!global.pause){
	instance_create_layer(irandom_range(50, 2510), irandom_range(50, 2510), "Instances", obj_ammo);
}