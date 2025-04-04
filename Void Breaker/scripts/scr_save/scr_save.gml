function save_game(){
    var struct = {
        costume: global.costume,
        configList: global.configList,
		konami: global.konami
    };
    var structString = json_stringify(struct);
    var file = file_text_open_write("save.txt");
    if (file != -1) {
        file_text_write_string(file, structString);
        file_text_close(file);
		show_debug_message("Saving...");
    } else {
        show_debug_message("Opening file error!");
    }
}

function load_game(){
	var file = file_text_open_read("save.txt");
	
	if(file_exists("save.txt") and !file_text_eof(file)){
		var json = file_text_read_string(file);
		
		var struct;
		
		try {
			struct = json_parse(json);
			global.costume = struct.costume;
			global.configList = struct.configList;
			global.konami = struct.konami;
		} catch (e) {
			inicialize();
        }
		
		update(struct);
		
		file_text_close(file);
		
		show_debug_message("Loading...");
		
	} else {
		
		inicialize();
		
	}
	
	setConfig();
}

function update(struct){
		
		var updatedConfigList = [["Janela", "Tela cheia"], ["640 x 640", "1080 x 1080", "1440 x 1440"], 
		["60 FPS", "90 FPS", "120 FPS", "144 FPS", "180 FPS"], ["GUI: 0.8x", "GUI: 1x", "GUI: 1.2x", "GUI: 1.5x"],
		["Som: Ativado", "Som: Desativado"],["Reset save"]];
			
		if(array_length(struct.configList) != array_length(updatedConfigList)){
			global.configList = updatedConfigList;
			save_game();
			show_debug_message("Overwriting Save...");
		}
		
		save_game();
	
		show_debug_message("Updating...");	
}

function inicialize(){
	
	if(!variable_global_exists("costume")){
		global.costume = 0;
	}
		
	if(!variable_global_exists("konami")){
		global.konami = false;
	}
	
	global.configList = [];
	
	var struct = {
        costume: global.costume,
        configList: global.configList,
		konami: global.konami
    };
	
	update(struct);
}
