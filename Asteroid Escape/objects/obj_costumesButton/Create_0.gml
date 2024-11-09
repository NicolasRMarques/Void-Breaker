global.costumesGUI = false;

if(!variable_global_exists("scaleGUI")){
	global.scaleGUI = 0.8;
}

image_index = 0;
image_speed = 0;

if (!variable_global_exists("costume")) {
    global.costume = 0;
}

global.konami_code = [
    vk_up, vk_up, vk_down, vk_down,
    vk_left, vk_right, vk_left, vk_right,
    ord("B"), ord("A")
];

global.konami_count = 0;
global.read_next = 0;