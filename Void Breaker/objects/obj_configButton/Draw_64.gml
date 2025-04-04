draw_set_font(fnt_retro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var c = c_white;
var guiSize = 3 * global.scaleGUI;


if(global.costumesGUI == true){
	c = c_yellow;
	draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/8, "Trajes", guiSize, guiSize, 0, c, c, c, c, 1);
	draw_sprite_ext(spr_arrows, 0, display_get_gui_width()/2, display_get_gui_height() / 2, global.scaleGUI, global.scaleGUI, 0, -1, 1);
	draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/10 * 8, "Aperte ENTER para selecionar", global.scaleGUI, global.scaleGUI, 0, c_white, c_white, c_white, c_white, 1);
} else if (global.configGUI == true){
	for (var i = 0; i < array_length(global.configList); i++) {
		
		if(i == global.configOption){
			c=c_yellow;
			var text = global.configList[i][global.configSelection];
		} else {
			c=c_white;
			var text = global.configList[i][0];
		}
	    var positionX = display_get_gui_width() / 2;
	    var positionY = (display_get_gui_height() / (array_length(global.configList) + 1)) * (i + 1);
	    draw_text_transformed_color(positionX, positionY, "< " + text + " >", 2*global.scaleGUI, 2*global.scaleGUI, 0, c, c, c, c, 1);
	}
	draw_set_halign(fa_left);
	draw_text_transformed(40*global.scaleGUI, 40*global.scaleGUI,global.version, global.scaleGUI, global.scaleGUI, image_angle);
	draw_set_halign(fa_center);
} else {
		
var c = c_yellow;
draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/8, "Void Breaker", guiSize, guiSize, 0, c, c, c, c, 1);
draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2,
		    @"Destrua o buraco negro para vencer

W: mover
A/D: virar
L CLICK: atirar
R CLICK: modo mira
ESPAÇO: especial
P: pause
Q: ver missão

>>Aperte ENTER para iniciar<<", 
global.scaleGUI, global.scaleGUI, image_angle);

	if(global.konami == true){
		draw_sprite_ext(spr_konamiCode, 0, display_get_gui_width()/2, display_get_gui_height() / 10 * 9, global.scaleGUI, global.scaleGUI, 0, -1, 1);
	}
}