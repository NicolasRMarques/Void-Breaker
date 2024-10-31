//cria asteroid quando o jogo inicia
repeat(6)
{
	instance_create_layer(0,0, "Instances", obj_asteroide)
}

alarm[0] = 60;
alarm[1] = 60;
alarm[2] = 60;
alarm[3] = 60;

//toca música do jogo
if (room == rm_jogo){
	audio_play_sound(snd_musica,2,true);
}

global.pause = false;


