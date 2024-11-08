speed = 5*60/room_speed;

if (x == 1280) {
    image_xscale = -1;
    speed *= -1; 
} else {
    image_xscale = 1;
    speed *= 1;
}

image_index = random_range(0, 6)
image_speed = 0;
