if (global.konami_activated){
	lives = 10;
	global.special = 99;
	global.ammo = 999;
} else {
	lives = 3;
	global.special = 3;
	global.ammo = 100;
}

global.canShoot = true;

totalDrainers = 4;

if(!variable_global_exists("bigShip")){
	global.bigShip = false;
}

if(!variable_global_exists("energyOn")){
	global.energyOn = false;
}

global.insideGarage = false;