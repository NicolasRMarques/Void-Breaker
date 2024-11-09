if (lives <= 0){
	room_goto(rm_derrota);
}
else if (score >= 5000){
	score = 0;
	room_goto(rm_vitoria);
}

if (keyboard_check_pressed(vk_enter))
{
    switch(room)
    {
        case rm_inicio:
			if(!global.costumesGUI and !global.configGUI){
				score = 0;
				room_goto(rm_fase1);
			}
            break;
        case rm_vitoria:
			score = 0;
            room_goto(rm_inicio);
            break;
        case rm_derrota:
			score = 0;
            room_goto(rm_inicio);
            break;
    }
}

if(room == rm_fase1){
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
			room_goto(rm_inicio);
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

