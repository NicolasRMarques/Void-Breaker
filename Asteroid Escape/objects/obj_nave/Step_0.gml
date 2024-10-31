if (keyboard_check(ord("W"))){
    speed = 8;
    // movimentação da nave
	instance_create_layer(x, y, "Instances", obj_particula); 
	//rastro da nave
	audio_play_sound(snd_nave,1,false);
}
else{
    speed = 0;
    // interrompe o movimento da nave
}

if (keyboard_check(ord("A"))){
    direction += 4;
    // gira a nave no sentido anti-horário
}else if (keyboard_check(ord("D"))){
    direction -= 4;
    // gira a nave no sentido horário
}

image_angle = direction;
// faz a imagem acompanhar a rotação da nave

move_wrap(true, true, 0);
// teleporta a nave quando chega na borda da cena (room)

if (mouse_check_button_pressed(mb_left)) {
	audio_play_sound(snd_tiro,1,false);
    var inst = instance_create_layer(x, y, "Instances", obj_tiro);
	inst.direction = direction;
	inst.speed = 20;
	inst.image_xscale = 2;
	inst.image_yscale = 0.5;
	inst.image_angle = direction;
}

if (global.special > 0){
	if (keyboard_check_pressed(vk_space)) {
		var dir = 0
		repeat(10){
		    var inst = instance_create_layer(x, y, "Instances", obj_tiro);
			inst.speed = 8;
			inst.image_xscale = 1;
			inst.image_yscale = 1;
			inst.image_angle = direction;
			inst.sprite_index = spr_especial
		    inst.direction += dir;
			inst.image_angle += dir;
			dir += 36;
		}
		global.special -= 1;
	}
}

