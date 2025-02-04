if(instance_exists(obj_nave)){
	direction = point_direction(x,y,obj_nave.x,obj_nave.y);
}

var inst = instance_create_layer(x, y, "Instances", obj_particula); 

inst.image_blend = alientrail;