draw_set_font(fnt_retro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (room)
{
    case rm_asteroids:
		if(!global.pause){
			draw_text_transformed(display_get_gui_width()/2, 40, "Pontos: " + string(score), global.scaleGUI, global.scaleGUI, image_angle);
			
			var max_per_row = 5;

			for (var i = 0; i < lives; i += 1) {
			    var positionX = 40 + (i % max_per_row) * (50 * global.scaleGUI);
			    var positionY = 50 + (i div max_per_row) * (50 * global.scaleGUI);

			    draw_sprite_ext(spr_life, 0, positionX, positionY, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			}
			
			if (global.ammo >= 66) {
				draw_sprite_ext(spr_ammo, 0, display_get_gui_width() - 100, 60, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			} else if (global.ammo >= 33) {
				draw_sprite_ext(spr_ammo, 1, display_get_gui_width() - 100, 60, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			} else if (global.ammo > 0) {
				draw_sprite_ext(spr_ammo, 2, display_get_gui_width() - 100, 60, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			} else {
				draw_sprite_ext(spr_ammo, 3, display_get_gui_width() - 100, 60, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			}
			
			draw_sprite_ext(spr_specialAmmo, global.special, display_get_gui_width() - 100, 170 * global.scaleGUI, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			
			if(global.konami_activated){
				draw_sprite_ext(spr_star, 0,  80*global.scaleGUI, display_get_gui_height() - 80*global.scaleGUI, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			}
			
			if(global.clickCount >= 20){
				draw_sprite_ext(spr_asteroidAlert, 0, display_get_gui_width() - 80*global.scaleGUI,  display_get_gui_height() - 80*global.scaleGUI, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			}
		
		} else {
			var c = c_white;
			draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()*3/5, "Pause", 3*global.scaleGUI, 3*global.scaleGUI, 0, c, c, c, c, 1);
			draw_set_halign(fa_left);
			draw_text_transformed_colour(30, 30, "ESC - Reset", 1*global.scaleGUI, 1*global.scaleGUI, 0, c, c, c, c, 1);
			draw_set_halign(fa_center);
			
		}
		
		scr_showQuest();
		
		break;

	case rm_gameOver:
	    var c = c_red;
	    draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()/3, "GAME OVER", 3*global.scaleGUI, 3*global.scaleGUI, 0, c, c, c, c, 1);
		draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2, "Score: " + string(score), global.scaleGUI, global.scaleGUI, image_angle);
		draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2 + 50, "Aperte ENTER para voltar", global.scaleGUI, global.scaleGUI, image_angle);
	    break;

	case rm_victory:
		scr_endGame()
		break;
		
	case rm_transition:
	    scr_transition()
		break;
}