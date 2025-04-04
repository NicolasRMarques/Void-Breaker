function scr_showQuest() {
    questList = [
        "Faça 10000 pontos",
        "Ative os drenadores",
        "Entre na garagem",
        "Ache a nave de contenção",
        "DESTRUA O BURACO NEGRO!"
    ];
	
	
	if(global.showQuestTimer > 0 or global.pause){
				
		if(global.pause){
			
			var c = c_yellow;
			draw_text_transformed_color(
				display_get_gui_width() / 2,
		        display_get_gui_height() * 2/5,
		        "< " + questList[global.currentQuest] + " >",
		        global.scaleGUI * 2, global.scaleGUI * 2, 0,
		        c, c, c, c, 1
		    );
			
		} else {
			
			var c = c_yellow;
			draw_text_transformed_color(
				display_get_gui_width() / 2,
		        display_get_gui_height() * 7 / 8,
		        "< " + questList[global.currentQuest] + " >",
		        global.scaleGUI, global.scaleGUI, 0,
		        c, c, c, c, 1
		    );
			
			global.showQuestTimer -= 1 * 60/room_speed
		}
		
	}
}
