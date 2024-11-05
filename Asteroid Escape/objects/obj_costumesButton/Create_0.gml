global.costumesGUI = false;

image_index = 0;
image_speed = 0;

image_xscale = image_xscale * global.scaleGUI;
image_yscale = image_yscale * global.scaleGUI;


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