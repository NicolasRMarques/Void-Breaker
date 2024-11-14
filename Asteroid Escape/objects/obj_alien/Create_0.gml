sprite_index = choose(spr_alien1, spr_alien2, spr_alien3);

alienBlood = c_white;

switch(sprite_index){
	case spr_alien1:
		alienBlood = c_lime;
		speed = global.shipSpeed / 4;
		break;
	case spr_alien2:
		alienBlood = c_purple;
		speed = global.shipSpeed / 8;
		break;
	case spr_alien3:
		alienBlood = c_red;
		speed = global.shipSpeed / 6;
		break;
}