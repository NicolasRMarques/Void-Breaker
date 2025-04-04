if (room == rm_asteroids){
	repeat(6)
	{
		instance_create_layer(0,0, "Instances", obj_asteroide)
	}
} else {
	repeat(20)
	{
		instance_create_layer(choose(0, room_width),choose(0, room_height), "Instances", obj_asteroide)
	}
	
	if(room == rm_gameOver) {
		repeat(9){
				instance_create_layer(0,0, "Instances", obj_alien)
			}
	}
}

if (room == rm_victory){
	if (choose(true, false)) {
	    var x_pos = room_width / 2;
	    var y_pos = room_height;
	} else {
	    var x_pos = room_width;
	    var y_pos = room_height / 2;
	}

	instance_create_layer(x_pos, y_pos, "Instances", obj_astronaut);
}

fps_roomSpeed = 60*60/room_speed;

alarm[0] = fps_roomSpeed;
alarm[1] = fps_roomSpeed;
alarm[2] = fps_roomSpeed;
alarm[3] = fps_roomSpeed;
alarm[4] = fps_roomSpeed;
alarm[5] = fps_roomSpeed;

if (!audio_is_playing(snd_placeholder)){
	audio_play_sound(snd_placeholder,100,true);
}

global.pause = false;


