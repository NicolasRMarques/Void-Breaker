if(instance_exists(obj_nave)){
	direction = point_direction(x,y,obj_nave.x,obj_nave.y);
	if(sprite_index == spr_alienPolice){
			image_angle = direction;
			alientrail = c_dkgray;
			speed = global.shipSpeed / 4;
	}
}

var inst = instance_create_depth(x, y, 100, obj_particula);

inst.image_blend = alientrail;

move_wrap(true, true, sprite_width / 2);