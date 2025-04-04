function scr_endGame(){
	
	draw_set_font(fnt_retro);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if (keyboard_check(vk_anykey)){ 
		keyPressed = 5;
	} else {
		keyPressed = 0;
	}
	
	var size = global.transition/90
	var dislocation = 0;
	
	if(global.transition > 181){
		dislocation = global.transition - 181;
	}
	
	if (size >= 1){
		size = 1
	}
	
	var c = c_lime;
	    draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height()/3 - dislocation, "Vitória", 3*global.scaleGUI*size, 3*global.scaleGUI*size, 0, c, c, c, c, 1);
	    draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2 - dislocation, "Score: " + string(score), global.scaleGUI*size, global.scaleGUI*size, image_angle);
	var c = c_yellow;
		draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2 + 100 * global.scaleGUI - dislocation, 
		@"Chegamos ao fim de nossa jornada...
Obrigado por jogar!", global.scaleGUI*size, global.scaleGUI*size, image_angle);
		
		draw_text_transformed_colour(display_get_gui_width()/2, display_get_gui_height() + 50 - dislocation, "Créditos", global.scaleGUI*3*size, global.scaleGUI*3*size, 0, c, c, c, c, 1);
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	
	draw_text_transformed(display_get_gui_width()/2, display_get_gui_height() + 100 - dislocation,
    @"
Desenvolvimento:
Todo o jogo foi desenvolvido por
Nícolas R. Marques, que escreveu
cada linha de código, desenvolveu
as mecânicas e ajustou todos os detalhes.

Programação:
Cada sistema, movimento, ataque,
e comportamento foi programado
por Nícolas R. Marques para garantir
uma jogabilidade fluida e responsiva.

Idealização:
O conceito original do jogo, incluindo
suas mecânicas e desafios, foi pensado
e refinado por Nícolas R. Marques.

Inspiração:
A ideia veio do clássico 'Asteroids'
do Atari, trazendo uma versão repaginada
com novas mecânicas e identidade visual.

Base de desenvolvimento:
Parte do projeto teve como base
o aprendizado no curso Teens 2 da
Ctrl+Play, servindo como referência
para expandir a ideia inicial.

Arte e Design:
Os elementos visuais do jogo,
como sprites, animações e interface,
foram criados por Nícolas R. Marques.
Alguns poucos sprites foram retirados
da internet para complementar.

Áudio e Música:
Todos os sons do jogo, incluindo
efeitos e trilha sonora, foram obtidos
da internet para criar uma atmosfera
imersiva e envolvente.

Publicação:
O jogo pode ser encontrado e jogado
gratuitamente em itch.io.

Disponível em:
https://nicolasrmarques.itch.io/",

    global.scaleGUI*size, global.scaleGUI*size, 0);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	c = c_yellow;
	
	var space =  display_get_gui_height() / 1280

	var name_x = display_get_gui_width() / 2;
	var name_y = display_get_gui_height() + (3000 * space) - dislocation;
	var image_x = display_get_gui_width() / 2;
	var image_y = display_get_gui_height() + (3200 * space) - dislocation;

	draw_text_transformed_color(name_x, name_y, "Nícolas R. Marques", 2 * global.scaleGUI, 2 * global.scaleGUI, 0, c, c, c, c, 1);

	draw_sprite_ext(spr_picture, 0, image_x, image_y, 0.1 * global.scaleGUI, 0.1 * global.scaleGUI, 0, -1, 1);

	c = c_white;

	if (name_y <= display_get_gui_height() / 2 - (200 * space) and image_y <= display_get_gui_height() / 2 - (100 * space)) {
	    draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 2 + (400 * space), "< Pressione Enter para rejogar >", global.scaleGUI, global.scaleGUI, 0);
	} else {
	    global.transition += (0.8 + keyPressed) * 60 / room_speed * global.scaleGUI;
	}

}