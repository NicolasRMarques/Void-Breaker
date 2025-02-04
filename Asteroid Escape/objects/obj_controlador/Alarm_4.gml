/// @description Portal

alarm[4] = 10 * room_speed;

if(room == rm_asteroids and !global.pause){
	instance_destroy(obj_portal)
	global.portalCoolDown = 120;
	global.portalA = instance_create_layer(random_range(100, 1180), random_range(200, 1180), "Instances", obj_portal);
	global.portalB = instance_create_layer(random_range(200, 1180), random_range(200, 1180), "Instances", obj_portal);
	global.portalB.sprite_index = spr_portalB;
}