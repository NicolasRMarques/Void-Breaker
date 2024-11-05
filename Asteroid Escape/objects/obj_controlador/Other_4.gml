repeat(6)
{
	instance_create_layer(0,0, "Instances", obj_asteroide)
}

alarm[0] = 60;
alarm[1] = 60;
alarm[2] = 60;
alarm[3] = 60;
alarm[4] = 60;

if (!audio_is_playing(snd_placeholder)){
	audio_play_sound(snd_placeholder,100,true);
}

global.pause = false;


