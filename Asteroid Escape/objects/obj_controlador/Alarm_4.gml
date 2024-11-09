/// @description Portal

alarm[4] = 10 * room_speed;

if(room == rm_fase1 and !global.pause){
	instance_destroy(obj_portal)
	global.portalCoolDown = 120;
	global.portalA = instance_create_layer(random_range(200, 1080), random_range(200, 1080), "Instances", obj_portal);
	global.portalB = instance_create_layer(random_range(200, 1080), random_range(200, 1080), "Instances", obj_portal);
	global.portalB.sprite_index = spr_portalB;
}