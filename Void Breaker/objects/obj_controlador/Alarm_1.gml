/// @description Ammo

alarm[1] = 60 * room_speed;

if(room == rm_asteroids and !global.pause){
	instance_create_layer(irandom_range(50, 1250), irandom_range(50, 1250), "Instances", obj_ammo);
}