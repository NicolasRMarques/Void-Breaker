if (keyboard_check(ord("W"))){
    speed = global.shipSpeed;
	instance_create_depth(x, y, 100, obj_particula);
	audio_play_sound(snd_nave,1,false);
}
else{
    speed = 0;
}

if (keyboard_check(ord("A"))){
    direction += global.turnSpeed;
}else if (keyboard_check(ord("D"))){
    direction -= global.turnSpeed;
}

image_angle = direction;

move_wrap(true, true, 0);

if(global.ammo > 0 and global.canShoot){
	if (mouse_check_button_pressed(mb_left)) {
		
		var inst = instance_create_layer(x, y, "Instances", obj_tiro);
		inst.direction = direction;
		inst.image_angle = direction;
		audio_play_sound(snd_tiro,1,false);
		cursor_sprite = spr_mouse_shooting;
		global.mouseCoolDown = 10;
		global.ammo -= 1;
		
		if(global.bigShip){
			
			inst.sprite_index = spr_bigShipShot;
			inst.speed = 10 * 60/room_speed;
			
			var offset = 50;
			
			var shoot_x = x + lengthdir_x(offset, direction);
			var shoot_y = y + lengthdir_y(offset, direction);
			
			inst.x = shoot_x;
			inst.y = shoot_y;
			
			inst.image_speed = 8;
			
		} else {
			
			inst.speed = 20 * 60/room_speed;
			inst.image_xscale = 2;
			inst.image_yscale = 0.5;
		}
	}
}

if (global.special > 0){
	if (keyboard_check_pressed(vk_space)) {
		var dir = direction;
		audio_play_sound(snd_special,1,false)
		global.special -= 1;
		
		if(global.bigShip) {
			repeat(20){
			    var inst = instance_create_layer(x, y, "Instances", obj_tiro);
				inst.speed = 4 * 60/room_speed;
				inst.image_speed = 10;
				inst.image_xscale = 2;
				inst.image_yscale = 2;
				inst.image_angle = direction;
				inst.sprite_index = spr_especial
			    inst.direction += dir;
				inst.image_angle += dir;
				dir += 18;
			}
		} else {
			repeat(10){
			    var inst = instance_create_layer(x, y, "Instances", obj_tiro);
				inst.speed = 8 *60/room_speed;
				inst.image_speed = 10;
				inst.image_angle = direction;
				inst.sprite_index = spr_especial
			    inst.direction += dir;
				inst.image_angle += dir;
				dir += 36;
			}
		}
	}
}

if (mouse_check_button(mb_right)) {
	direction = point_direction(x, y, mouse_x, mouse_y);
} 

if (global.invincible_time > 0) {
    image_alpha = 0.5;
	global.invincible_time -= 1*60/room_speed;
} else {
    image_alpha = 1;
}

if(keyboard_check_pressed(ord("Q"))){
	global.showQuestTimer = 180;
}