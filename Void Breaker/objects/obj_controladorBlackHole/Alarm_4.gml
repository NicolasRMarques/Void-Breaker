/// @description Alien

alarm[4] = 5 * room_speed;

if(global.bigShip){
	if(!global.pause and !global.insideGarage){
		instance_create_layer(choose(0, room_width),choose(0, room_height), "Instances", obj_alien)
	}
}