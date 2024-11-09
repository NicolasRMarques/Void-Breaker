if (global.configGUI == true){
    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) {
		if(global.configOption + 2  <= array_length(global.configList)){
			global.configOption += 1;
			global.configSelection = 0;
		} else {
			global.configOption = 0;
			global.configSelection = 0;
		}
    }
	if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) {
        if(global.configOption - 1  >= 0){
			global.configOption -= 1;
			global.configSelection = 0;
		} else {
			global.configOption = array_length(global.configList) - 1;
			global.configSelection = 0;
		}
    }
	if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))) {
		if(global.configSelection + 2 <= array_length(global.configList[global.configOption])){
			global.configSelection += 1;
		} else {
			global.configSelection = 0;
		}
    }
	if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))) {
        if(global.configSelection - 1  >= 0){
			global.configSelection -= 1;
		} else {
			global.configSelection = array_length(global.configList[global.configOption]) - 1;
		}
    }
	if (keyboard_check_pressed(vk_enter)) {
	    var selectedItem = global.configList[global.configOption][global.configSelection];
	    array_delete(global.configList[global.configOption], global.configSelection, 1);
	    array_insert(global.configList[global.configOption], 0, selectedItem);
	    global.configSelection = 0;
	}
}

if(global.configList[0][0] == "Tela cheia") {
    window_set_fullscreen(true);
} else if(global.configList[0][0] == "Janela"){
	window_set_fullscreen(false);
}

if (keyboard_check_pressed(vk_enter)) {
		display_reset(0, false);
}

if (global.configList[1][0] == "640 x 640") {
	window_set_size(640, 640);
	display_set_gui_size(640, 640);
    surface_resize(application_surface, 640, 640);
} else if (global.configList[1][0] == "1080 x 1080") {
	window_set_size(1080, 1080);
	display_set_gui_size(1080, 1080);
    surface_resize(application_surface, 1080, 1080);
} else if (global.configList[1][0] == "1440 x 1440") {
	window_set_size(1440, 1440);
	display_set_gui_size(1440, 1440);
    surface_resize(application_surface, 1440, 1440);
}

if (global.configList[2][0] == "60 FPS") {
	game_set_speed(60, gamespeed_fps);
} else if (global.configList[2][0] == "90 FPS") {
	game_set_speed(90, gamespeed_fps);
} else if (global.configList[2][0] == "120 FPS") {
	game_set_speed(120, gamespeed_fps);
} else if (global.configList[2][0] == "144 FPS") {
	game_set_speed(144, gamespeed_fps);
}

if (global.configList[3][0] == "GUI: 0.8x") {
	global.scaleGUI = 0.8;
} else if (global.configList[3][0] == "GUI: 1x") {
	global.scaleGUI = 1;
} else if (global.configList[3][0] == "GUI: 1.2x") {
	global.scaleGUI = 1.2;
} else if (global.configList[3][0] == "GUI: 1.5x") {
	global.scaleGUI = 1.5;
}
	
if(keyboard_check(vk_escape) and (global.configGUI or global.costumesGUI)){
	global.configGUI = false;
	global.costumesGUI = false;
	obj_configButton.image_index = 0;
	obj_costumesButton.image_index = 0;
} else if(keyboard_check_pressed(vk_escape) and !global.configGUI and !global.costumesGUI){
	game_end();
}

image_xscale = global.scaleGUI * 640 / display_get_gui_height();
image_yscale = global.scaleGUI * 640 / display_get_gui_height(); 