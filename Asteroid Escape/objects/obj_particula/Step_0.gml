image_alpha = image_alpha - 0.03 * 60/room_speed; 

if (image_alpha <= 0)
{
    instance_destroy(); 
}
