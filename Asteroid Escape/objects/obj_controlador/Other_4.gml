if (room == rm_fase1){
	repeat(6)
	{
		instance_create_layer(0,0, "Instances", obj_asteroide)
	}
} else {
	repeat(20)
	{
		instance_create_layer(choose(0, room_width),choose(0, room_height), "Instances", obj_asteroide)
	}
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


