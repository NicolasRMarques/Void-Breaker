with(other){
	instance_destroy()
}

obj_nave.sprite_index = spr_bigShip;

global.bigShip = true;

lives = 10;

score += 2000;

global.special = 9;

global.currentQuest = 4;
global.showQuestTimer = 180;

repeat(10) {
	var inst = instance_create_layer(random_range(0, room_width), choose(0,room_height), "Instances", obj_alien)
	inst.sprite_index = spr_alienPolice
	inst = instance_create_layer(choose(0,room_width),random_range(0, room_height), "Instances", obj_alien)
	inst.sprite_index = spr_alienPolice;
}