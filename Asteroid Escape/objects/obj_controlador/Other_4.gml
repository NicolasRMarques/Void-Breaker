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

alarm[0] = 60*60/room_speed;
alarm[1] = 60*60/room_speed;
alarm[2] = 60*60/room_speed;
alarm[3] = 60*60/room_speed;
alarm[4] = 60*60/room_speed;

if (!audio_is_playing(snd_placeholder)){
	audio_play_sound(snd_placeholder,100,true);
}

global.pause = false;


