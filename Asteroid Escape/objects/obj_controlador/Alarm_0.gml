/// @description Asreroide

if(!global.pause and room == rm_fase1){
	instance_create_layer(0, 0, "Instances", obj_asteroide);
}
alarm[0] = 4 * room_speed; 