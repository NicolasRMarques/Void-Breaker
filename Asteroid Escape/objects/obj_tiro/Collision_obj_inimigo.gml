instance_destroy();

audio_play_sound(snd_kabum,1,false);

score += 200;

with(other){
	instance_destroy();
    shipDestruction();
}