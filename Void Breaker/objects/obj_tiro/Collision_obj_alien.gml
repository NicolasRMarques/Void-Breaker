instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index != spr_alienPolice){
		audio_play_sound(snd_alien,1,false);
		repeat(100){
			var inst = instance_create_layer(x, y, "Instances", obj_particula);
			inst.image_blend = alienBlood;
			inst.image_index = 1;
		}
	} else {
		audio_play_sound(snd_kabum,1,false);
		shipDestruction()
	}
	
}

score += 200;