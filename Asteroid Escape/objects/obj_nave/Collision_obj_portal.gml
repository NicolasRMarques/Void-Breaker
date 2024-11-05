if (other.id == global.portalA and global.portalCoolDown == 0) {
	x = global.portalB.x
	y = global.portalB.y
	global.portalCoolDown = 120;
}

if (other.id == global.portalB and global.portalCoolDown == 0) {
    x = global.portalA.x
	y = global.portalA.y
	global.portalCoolDown = 120;
}