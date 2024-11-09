if(room == rm_inicio){
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

if(room == rm_inicio){
	global.konami_activated = false;
}

cursor_sprite = spr_mouse;

window_set_cursor(cr_none)

global.mouseCoolDown = 0;