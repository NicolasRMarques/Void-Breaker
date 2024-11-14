/// @description Inimigo

alarm[3] = 10 * room_speed;

if(score >= 5000){
	alarm[3] = 5 * room_speed;
} else {
	alarm[3] = 10 * room_speed;
}

up_down = choose(true, false);

if(room == rm_fase1 and !global.pause){
	if(up_down){
		instance_create_layer(choose(0, 1280), irandom_range(10, 1270), "Instances", obj_inimigo);
	} else {	
		instance_create_layer(irandom_range(10, 1270), choose(0, 1280), "Instances", obj_inimigo);
	}
}