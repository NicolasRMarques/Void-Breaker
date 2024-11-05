draw_set_font(fnt_retro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (room)
{
    case rm_fase1:
		if(!global.pause){
	        draw_text(display_get_gui_width()/2, 40, "Pontos: " + string(score));
			
			var max_per_row = 5;

			for (var i = 0; i < lives; i += 1) {
			    var positionX = 50 + (i % max_per_row) * (50 * global.scaleGUI);
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
			draw_sprite_ext(spr_specialAmmo, global.special, display_get_gui_width() - 100, 140, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			if(global.konami_activated){
				draw_sprite_ext(spr_star, 0, 50,  display_get_gui_height() - 50, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			}
			
		} else {
			var c = c_white;
			draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()/2, "Pause", 3, 3, 0, c, c, c, c, 1);
			draw_set_halign(fa_left);
			draw_text_transformed_colour(30, 30, "F1 - Reset", 1, 1, 0, c, c, c, c, 1);
			draw_set_halign(fa_center);
			
		}
		break;

    case rm_inicio:
		
		if(global.costumesGUI == true){
			var c = c_yellow;
			draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/8, "Trajes", 3, 3, 0, c, c, c, c, 1);
			draw_sprite_ext(spr_arrows, 0, display_get_gui_width()/2, display_get_gui_height() / 2, global.scaleGUI, global.scaleGUI, 0, -1, 1);
			break;
		} else if (global.configGUI == true){
			break;
		}
		
	    var c = c_yellow;
	    draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/8, "Asteroid Escape", 3, 3, 0, c, c, c, c, 1);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2,
		    @"Faça 5.000 pontos para ganhar

W: mover
A/D: virar
L CLICK: atirar
R CLICK: acelerar
ESPAÇO: especial
NUM 0: pause

>>Aperte ENTER para iniciar<<");

		break;

	case rm_derrota:
	    var c = c_red;
	    draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()/3, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "Score: " + string(score));
	    draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 50, "Aperte ENTER para Reiniciar");
	    break;

	case rm_vitoria:
	    var c = c_lime;
	    draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()/3, "Vitória!", 3, 3, 0, c, c, c, c, 1);
	    draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "Aperte ENTER para Reiniciar");
	    break;
}
