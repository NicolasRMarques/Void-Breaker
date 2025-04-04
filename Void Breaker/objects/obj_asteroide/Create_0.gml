sprite_index = choose(spr_asteroideP, spr_asteroideM, spr_asteroideG);

direction = irandom_range(0, 359);

image_angle = irandom_range(0, 359);

speed = 2*60/room_speed;

image_blend = choose($ADD8E6, c_silver, c_grey, c_white, #967872);

if(global.clickCount >= 20){
	image_xscale = 2;
	image_yscale = 2;
	speed *= 2;
}