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
			score = 0;
            room_goto(rm_jogo);
            break;
        case rm_vitoria:
            game_restart();
            break;
        case rm_derrota:
            game_restart();
            break;
    }
}

if(room == rm_jogo){
	if (keyboard_check_pressed(vk_numpad0)) {
	    global.pause = !global.pause;

	    if (global.pause) {
	        instance_deactivate_all(true); 
	    } else {
	        instance_activate_all(); 
	    }
	}
}
