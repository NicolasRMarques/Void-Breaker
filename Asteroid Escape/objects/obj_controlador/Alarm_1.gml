/// @description Ammo

alarm[1] = 60 * room_speed;

if(room == rm_jogo){
instance_create_layer(irandom_range(0, 1100), irandom_range(0, 1100), "Instances", obj_ammo);
}