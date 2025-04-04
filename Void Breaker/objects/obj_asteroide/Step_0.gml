move_wrap(true, true, sprite_width / 2);

if (sprite_index == spr_asteroideP){
	image_angle+=4*60/room_speed;
} else if  (sprite_index == spr_asteroideM){
	image_angle+=2*60/room_speed;
} else {
	image_angle+=1*60/room_speed;
}

speed = 2*60/room_speed;