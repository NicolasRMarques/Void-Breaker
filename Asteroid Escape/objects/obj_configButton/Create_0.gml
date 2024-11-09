global.configGUI = false;
global.configOption = 0;
global.configSelection = 0;

if (!variable_global_exists("configList")) {
    global.configList = [["Janela", "Tela cheia"], ["640 x 640", "1080 x 1080", "1440 x 1440"], 
	["60 FPS", "90 FPS", "120 FPS", "144 FPS"], ["GUI: 0.8x", "GUI: 1x", "GUI: 1.2x", "GUI: 1.5x"]];
}


image_index = 0;
image_speed = 0;