load_game();

global.configGUI = false;
global.configOption = 0;
global.configSelection = 0;

global.version = "Beta 1.0.3"

if(!variable_global_exists("clickCount")){
	global.clickCount = 0;
}

image_index = 0;
image_speed = 0;