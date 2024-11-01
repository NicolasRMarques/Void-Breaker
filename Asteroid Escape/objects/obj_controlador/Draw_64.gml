draw_set_font(fnt_retro);

switch (room)
{
    case rm_jogo:
		if(!global.pause){
	        draw_set_halign(fa_left);
	        draw_text(20, 20, "Pontos: " + string(score));
	        draw_text(20, 60, "Vidas: " + string(lives));
			draw_text(20, 100, "Especial: " + string(global.special));
			if (global.ammo >= 66) {
			draw_sprite(spr_ammo, 0, display_get_gui_width() - 100, 100);
			} else if (global.ammo >= 33) {
				draw_sprite(spr_ammo, 1,display_get_gui_width() - 100, 100);
			} else if (global.ammo > 0) {
				draw_sprite(spr_ammo, 2, display_get_gui_width() - 100, 100);
			} else {
				draw_sprite(spr_ammo, 3,display_get_gui_width() - 100,100);
			}
		} else {
			var c = c_white;
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text_transformed_colour(room_width/2, room_height/2, "Pause", 3, 3, 0, c, c, c, c, 1);
		}
		break;

    case rm_inicio:
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
