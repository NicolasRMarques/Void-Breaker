if (lives <= 0){
	room_goto(rm_gameOver);
}

if (keyboard_check_pressed(ord("P"))) {
	global.pause = !global.pause;

	if (global.pause) {
	    instance_deactivate_all(true);
	} else {
	    instance_activate_all();
		if(!global.insideGarage){
			instance_deactivate_object(obj_bigShip);
		} else {
			instance_deactivate_object(obj_blackHole);
			instance_deactivate_object(obj_asteroide);
			instance_deactivate_object(obj_energyDrainer);
		}
	}
}
	
if(global.pause){
	if(keyboard_check_pressed(vk_escape)){
		score = 0;
		room_goto(rm_start);
	}
}

if(!global.pause){
	if (global.mouseCoolDown > 0) {
		global.mouseCoolDown -= 1*60/room_speed;
	} else {
			cursor_sprite = spr_mouse;
	}
}

var count = 0;

with (obj_energyDrainer) {
    if (image_index == 11) {
       count += 1;
    }
}

if (count == totalDrainers and lives > 0) {
	if(global.bigShip){
		global.energyOn = true;
	} 
	
	if(global.currentQuest == 1 and global.showQuestTimer == 0){
		global.currentQuest = 2;
		global.showQuestTimer = 180;
		obj_garage.image_index = 1;
	}
}

if(global.currentQuest == 4){
	if(global.insideGarage == false){
		obj_garage.image_index = 0;
	}
}