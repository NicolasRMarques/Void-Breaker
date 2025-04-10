if(room == rm_start){
	global.konami_activated = false;
}

if (global.konami_activated){
	lives = 10;
	global.special = 99;
	global.ammo = 999;
} else {
	lives = 3;
	global.special = 3;
	global.ammo = 100;
}

if(room == rm_start){
	global.konami_activated = false;
}

cursor_sprite = spr_mouse;

window_set_cursor(cr_none)

global.mouseCoolDown = 0;

global.canShoot = room == rm_asteroids or room == rm_blackHole; 
global.bigShip = false;

global.transition = 1;

if(!variable_global_exists("clickCount")){
	global.clickCount = 0;
}

if(global.clickCount >= 20 and room = rm_gameOver){
	global.clickCount = 0;
}