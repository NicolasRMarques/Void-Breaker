/// @description Asreroide

// cria novas instâncias do asteroide
instance_create_layer(0, 0, "Instances", obj_asteroide);

alarm[0] = 4 * room_speed; 
// define o alarme para ser acionado a cada quatro segundos