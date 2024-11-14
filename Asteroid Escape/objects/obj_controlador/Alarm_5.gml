/// @description Alien

if(score >= 5000){
	alarm[5] = 5 * room_speed;
} else {
	alarm[5] = 10 * room_speed;
}

if(room == rm_fase1 and !global.pause){
	instance_create_layer(choose(0, room_width),choose(0, room_height), "Instances", obj_alien)
}