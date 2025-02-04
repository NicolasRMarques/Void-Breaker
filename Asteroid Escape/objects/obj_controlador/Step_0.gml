if (lives <= 0){
	room_goto(rm_gameOver);
} else if (score >= 10000){
	score = 0;
	room_goto(rm_blackHole);
}

if (keyboard_check_pressed(vk_enter))
{
    switch(room)
    {
        case rm_start:
			if(!global.costumesGUI and !global.configGUI){
				score = 0;
				room_goto(rm_blackHole);
			}
            break;
        case rm_victory:
			score = 0;
            room_goto(rm_start);
            break;
        case rm_gameOver:
			score = 0;
            room_goto(rm_start);
            break;
    }
	
	save_game();
}

if(room == rm_asteroids){
	if (keyboard_check_pressed(ord("P"))) {
	    global.pause = !global.pause;

	    if (global.pause) {
	        instance_deactivate_all(true); 
	    } else {
	        instance_activate_all(); 
	    }
	}
	
	if(global.pause){
		if(keyboard_check_pressed(vk_escape)){
			score = 0;
			room_goto(rm_start);
		}
	}
}

if(!global.pause){
	if (global.mouseCoolDown > 0) {
		global.mouseCoolDown -= 1*60/room_speed;
	} else {
			cursor_sprite = spr_mouse;
	}
}

