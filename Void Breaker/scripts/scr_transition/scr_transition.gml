function scr_transition(){
	
	var size = global.transition/90
	var space =  display_get_gui_height() / 1280
	
	if(global.transition < 301){
		global.transition += 1 * 60/room_speed
	} else {
		global.currentQuest = 1;
		global.showQuestTimer = 180;
		room_goto(rm_blackHole)
	}
	
	if (size >= 1){
		size = 1
	}
	
	var c = c_white;
	draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()/3, "FASE 2: Black Hole", 2.5*global.scaleGUI*size, 2.5*global.scaleGUI*size, 0, c, c, c, c, 1);
	draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()*4/5, "Não encoste!", global.scaleGUI*1.5*size, global.scaleGUI*1.5*size, image_angle);
		
}