if (image_index == 1) {
	
	instance_deactivate_all(true)
	instance_activate_object(obj_nave)
	instance_activate_object(obj_controladorBlackHole)
	
	with(other){
		if(y <= 200){
			
			layer_background_sprite(layer_background_get_id(layer_get_id("Background")), spr_garageFloor);

			direction = 90;
			image_angle = direction;
		
			x = 1280;
			y = 2336
			
			instance_activate_object(obj_bigShip)
			
			global.insideGarage = true;
			
		} else {
			
			layer_background_sprite(layer_background_get_id(layer_get_id("Background")), spr_background2);
			
			direction = -90;
			image_angle = direction;
		
			x = 1280;
			y = 224;
			
			global.insideGarage = false;
		}
	}
	
	if(y <= 200){
		y = 2496
	} else {
		y = 64
		instance_activate_all();
	}
	
	if(global.currentQuest == 2){
		global.currentQuest = 3;
		global.showQuestTimer = 180;
	}
} 

if(!global.insideGarage){
	instance_destroy(obj_alien);
}
