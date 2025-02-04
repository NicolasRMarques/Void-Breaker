load_game();

global.configGUI = false;
global.configOption = 0;
global.configSelection = 0;

global.version = "Beta 1.5.0"

global.konami_code = [
    vk_up, vk_up, vk_down, vk_down,
    vk_left, vk_right, vk_left, vk_right,
    ord("B"), ord("A")
];

global.konami_count = 0;
global.read_next = 0;

if(!variable_global_exists("clickCount")){
	global.clickCount = 0;
}

image_index = 0;
image_speed = 0;