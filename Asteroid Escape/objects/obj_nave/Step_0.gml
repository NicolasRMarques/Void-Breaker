if (keyboard_check(ord("W"))){
    speed = shipSpeed;
	instance_create_layer(x, y, "Instances", obj_particula); 
	audio_play_sound(snd_nave,1,false);
}
else{
    speed = 0;
}

if (keyboard_check(ord("A"))){
    direction += turnSpeed;
}else if (keyboard_check(ord("D"))){
    direction -= turnSpeed;
}

image_angle = direction;

move_wrap(true, true, 0);

if(global.ammo > 0){
	if (mouse_check_button_pressed(mb_left)) {
		global.ammo -= 1;
		audio_play_sound(snd_tiro,1,false);
	    var inst = instance_create_layer(x, y, "Instances", obj_tiro);
		inst.direction = direction;
		inst.speed = 20;
		inst.image_xscale = 2;
		inst.image_yscale = 0.5;
		inst.image_angle = direction;
	}
}

if (global.special > 0){
	if (keyboard_check_pressed(vk_space)) {
		audio_play_sound(snd_energy,1,false);
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

if (mouse_check_button(mb_right)) {
    shipSpeed = 10;
    turnSpeed = 8;
} else {
    shipSpeed = 8;
    turnSpeed = 4;
}

if (global.invincible_time > 0) {
    image_alpha = 0.5;
	global.invincible_time -= 1;

} else {
    image_alpha = 1;
}

