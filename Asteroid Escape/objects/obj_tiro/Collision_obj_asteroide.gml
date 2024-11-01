if(sprite_index == spr_laser){
	instance_destroy();
}

audio_play_sound(snd_kabum,1,false);

repeat(50){
	instance_create_layer(x, y, "Instances", obj_particula);
}

with (other) {
    instance_destroy();

    if (sprite_index == spr_asteroideG) {
		score += 40
        repeat(2) {
            var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroide);
            new_asteroid.sprite_index = spr_asteroideM;
        }
    } else if (sprite_index == spr_asteroideM) {
		score += 20
        repeat(2) {
            var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroide);
            new_asteroid.sprite_index = spr_asteroideP;
        }
    } else {
		score += 10
	}
}