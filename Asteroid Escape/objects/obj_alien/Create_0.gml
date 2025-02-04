sprite_index = choose(spr_alien1, spr_alien2, spr_alien3);

switch(sprite_index){
	case spr_alien1:
		alienBlood = c_lime;
		alientrail = c_purple;
		speed = global.shipSpeed / 4;
		break;
	case spr_alien2:
		alienBlood = c_blue;
		alientrail = c_dkgray;
		speed = global.shipSpeed / 8;
		break;
	case spr_alien3:
		alienBlood = c_red;
		alientrail = c_ltgray;
		speed = global.shipSpeed / 6;
		break;
}