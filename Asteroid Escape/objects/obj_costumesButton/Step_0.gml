if (global.costumesGUI == true) {
    if (!instance_exists(obj_naveCostumes)) {
        var spaceShip = instance_create_layer(room_width / 2, room_width / 2, "Instances", obj_naveCostumes);
    } else {
        var spaceShip = instance_find(obj_naveCostumes, 0);
    }

    if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))) {
        spaceShip.image_index = (spaceShip.image_index + 1) mod spaceShip.image_number;
    }

    if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))) {
        spaceShip.image_index = (spaceShip.image_index - 1 + spaceShip.image_number) mod spaceShip.image_number;
    }
	
	if(keyboard_check_pressed(vk_enter)){
		global.costume = spaceShip.image_index;
		global.costumesGUI = !global.costumesGUI;
	}
} else {
    if (instance_exists(obj_naveCostumes)) {
        with (obj_naveCostumes) {
            instance_destroy();
        }
    }
}

if(keyboard_lastkey == global.konami_code[global.konami_count]){
	global.konami_count++;
}

if(global.konami_count == 10){
	global.konami_activated = true;
	audio_play_sound(snd_picking,1,false)
	global.konami_count = 0
}
	
