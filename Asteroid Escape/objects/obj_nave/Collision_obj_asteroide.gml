if (global.invincible_time == 0){
	
	lives -= 1;

	audio_play_sound(snd_kabum,1,false);
	
	with(other){
	    shipDestruction();
	}
	
	if(lives <= 0){
		instance_destroy();
	} else {
		global.invincible_time = 120;
	}
}

