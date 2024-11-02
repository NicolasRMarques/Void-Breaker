/// @description Inimigo

alarm[3] = 5 * room_speed;

if(room == rm_jogo and !global.pause){
	instance_create_layer(choose(0, 1280), irandom_range(100, 1100), "Instances", obj_inimigo);
}