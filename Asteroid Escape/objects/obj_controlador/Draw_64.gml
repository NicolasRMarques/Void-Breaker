draw_set_font(fnt_retro);

switch (room)
{
    case rm_fase1:
		if(!global.pause){
	        draw_text(display_get_gui_width()/2, 60, "Pontos: " + string(score));
			for (var i = 0; i < lives; i += 1)
			{
			    draw_sprite(spr_life, 0, 50 + i * 50, 70);
			}
			if (global.ammo >= 66) {
			draw_sprite(spr_ammo, 0, display_get_gui_width() - 100, 100);
			} else if (global.ammo >= 33) {
				draw_sprite(spr_ammo, 1,display_get_gui_width() - 100, 100);
			} else if (global.ammo > 0) {
				draw_sprite(spr_ammo, 2, display_get_gui_width() - 100, 100);
			} else {
				draw_sprite(spr_ammo, 3,display_get_gui_width() - 100,100);
			}
			draw_sprite(spr_specialAmmo, global.special, display_get_gui_width() - 105, 250);
			
		} else {
			var c = c_white;
			draw_text_transformed_colour(room_width/2, room_height/2, "Pause", 3, 3, 0, c, c, c, c, 1);
			draw_set_valign(fa_left);
			draw_text_transformed_colour(150, 20, "F1 - Reset", 1, 1, 0, c, c, c, c, 1);
			
		}
		break;

    case rm_inicio:
		
		if(global.costumesGUI == true){
			var c = c_yellow;
			draw_set_halign(fa_center);
			draw_text_transformed_color(room_width/2, room_height/5, "Trajes", 3, 3, 0, c, c, c, c, 1);
			draw_sprite(spr_arrows, 0,room_width / 2, room_height / 2);
			break;
		}
		
	    var c = c_yellow;
	    draw_set_halign(fa_center);
	    draw_text_transformed_color(room_width/2, room_height/5, "Asteroid Escape", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, room_height/5+200,
		    @"Faça 5.000 pontos para ganhar

W: mover
A/S: virar
L CLICK: atirar
R CLICK: acelerar
ESPAÇO: especial
NUM 0: pause

>>Aperte ENTER para iniciar<<");

		break;

	case rm_derrota:
	    draw_set_halign(fa_center);
	    var c = c_red;
	    draw_text_transformed_colour(room_width/2, room_height/5, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, room_height/5 + 250, "Score: " + string(score));
	    draw_text(room_width/2, room_height/5 + 400, "Aperte ENTER para Reiniciar");
	    break;

	case rm_vitoria:
	    draw_set_halign(fa_center);
	    var c = c_lime;
	    draw_text_transformed_colour(room_width/2, room_height/5, "Vitória!", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width/2, room_height/5 + 400, "Aperte ENTER para Reiniciar");
	    break;
}
