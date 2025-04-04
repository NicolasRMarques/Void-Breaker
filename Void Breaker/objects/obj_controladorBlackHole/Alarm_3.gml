/// @description Energy

alarm[3] = 1/3 * room_speed;

if(global.bigShip){
	with (obj_energyDrainer) {
        instance_create_layer(x, y, "Instances", obj_power);
    }
}