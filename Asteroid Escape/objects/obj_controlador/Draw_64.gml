//muda a fonta para a que criamos
draw_set_font(fnt_retro);

switch (room)
{
	//estrutura de decisão semelhante a if else
    case rm_jogo:
		if(!global.pause){
	        draw_set_halign(fa_left);
	        //alinhamento horizontal à esquerda
	        draw_text(20, 20, "Pontos: " + string(score));
	        //escreve a pontuação
	        draw_text(20, 60, "Vidas: " + string(lives));
	        //escreve as vidas restantes
			draw_text(20, 100, "Especial: " + string(global.special));
	        //escreve as vidas restantes
		} else {
			var c = c_white;
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text_transformed_colour(room_width/2, room_height/2, "Pause", 3, 3, 0, c, c, c, c, 1);
		}
		break;

    case rm_inicio:
	    var c = c_yellow;
	    // iguala c à variável embutida c_yellow (cor amarela)
	    draw_set_halign(fa_center);
	    // alinhamento horizontal ao centro
	    draw_text_transformed_color(room_width/2, room_height/5, "Asteroid Escape", 3, 3, 0, c, c, c, c, 1);
	    // comando que aumenta e muda o texto de cor
		draw_text(room_width/2, room_height/5+200,
		    @"Faça 10.000 pontos para ganhar

W: mover
A/S: virar
CLICK: atirar
ESPAÇO: especial
NUM 0: pause

>>Aperte ENTER para iniciar<<");
		    // mesmo comando usado para rm_jogo, mas com parágrafos
		break;
	    // interrompe a estrutura se o caso for verdadeiro

	case rm_derrota:
	    draw_set_halign(fa_center);
	    var c = c_red;
	    //iguala c à variável embutida c_red (cor vermelha)
	    draw_text_transformed_colour(room_width/2, room_height/5, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, room_height/5 + 250, "Score: " + string(score));
	    draw_text(room_width/2, room_height/5 + 400, "Aperte ENTER para Reiniciar");
	    break;

	case rm_vitoria:
	    draw_set_halign(fa_center);
	    var c = c_lime;
	    //iguala c à variável embutida c_lime (cor verde lima)
	    draw_text_transformed_colour(room_width/2, room_height/5, "Vitória!", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width/2, room_height/5 + 400, "Aperte ENTER para Reiniciar");
	    break;
}
