sprite_index = choose(spr_asteroideP, spr_asteroideM, spr_asteroideG);

direction = irandom_range(0, 359);

image_angle = irandom_range(0, 359);

speed = 2*60/room_speed;

if(global.clickCount >= 10){
	image_xscale = 2;
	image_yscale = 2;
	speed *= 2;
}