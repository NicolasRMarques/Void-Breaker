with(other){
	instance_destroy()
}

if(other.sprite_index == spr_bigShipShot){
	image_xscale = image_xscale - 0.10;
	image_yscale = image_xscale;
} else {
	image_xscale = image_xscale + 0.01;
	image_yscale = image_xscale;
}