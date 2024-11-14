instance_destroy();

with(other){
	instance_destroy();
	
	repeat(100){
		var inst = instance_create_layer(x, y, "Instances", obj_particula);
		inst.image_blend = alienBlood;
		inst.image_index = 1;
	}
}

audio_play_sound(snd_alien,1,false);

score += 200;