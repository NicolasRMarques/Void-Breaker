/// @description Life

alarm[2] = 30 * room_speed;

if(room == rm_jogo and !global.pause){
	instance_create_layer(irandom_range(0, 1100), irandom_range(0, 1100), "Instances", obj_life);
}