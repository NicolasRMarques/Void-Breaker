if (global.invincible_time == 0){
	
	lives -= 1;

	audio_play_sound(snd_kabum,1,false);
	
	with(other){
	    instance_destroy();
	    repeat(80){
	        var part = instance_create_layer(x, y, "Instances", obj_particula);
        
	        part.image_xscale = random_range(0.5, 1.5);
	        part.image_yscale = part.image_xscale;
        
	        part.image_blend = make_color_rgb(irandom_range(200,255), irandom_range(100, 150), 0);
        
	        part.speed = random_range(2, 4);
	        part.direction = random(360);
        
	    }
	}
	
	if(lives <= 0){
		instance_destroy();
	} else {
		global.invincible_time = 120;
	}
}

