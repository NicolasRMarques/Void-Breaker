speed = 5*60/room_speed;

if (x == 1280 and (y != 1280 and y != 0)) {
    image_xscale = -1;
    speed *= -1; 
} else if (x == 0 and (y != 1280 and y != 0)) {
    image_xscale = 1;
    speed *= 1;
} else if (y == 1280 and (x != 1280 and x != 0)) {
    direction = 270;
	image_angle = direction * -1;
	speed *= -1;
} else  {
    direction = 90;
	image_angle = direction * -1;
	speed *= -1;
}

image_index = random_range(0, 6)
image_speed = 0;
