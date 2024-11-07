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
	if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))) {
		if(global.configSelection + 2 <= array_length(global.configList[global.configOption])){
			global.configSelection += 1;
		} else {
			global.configSelection = 0;
		}
    }
	if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))) {
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
	

