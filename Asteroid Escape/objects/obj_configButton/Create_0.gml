global.configGUI = false;
global.configOption = 0;
global.configSelection = 0;


if (!variable_global_exists("configList")) {
    global.configList = [["Janela", "Tela cheia"], ["640 x 640", "1080 x 1080", "1440 x 1440"], ["60 FPS", "120 FPS", "144 FPS"]];
}


image_index = 0;
image_speed = 0;

image_xscale = image_xscale * global.scaleGUI;
image_yscale = image_yscale * global.scaleGUI;