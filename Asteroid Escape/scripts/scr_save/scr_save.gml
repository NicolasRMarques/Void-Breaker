function save_game(){
    var struct = {
        costume: global.costume,
        configList: global.configList
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
	if(file_exists("save.txt")){
		var file = file_text_open_read("save.txt");
		var json = file_text_read_string(file);
		var struct = json_parse(json) ;
		
		global.costume = struct.costume;
		global.configList = struct.configList;
		
		file_text_close(file);
		
		show_debug_message("Loading...");
	} else {	
		global.configList = [["Janela", "Tela cheia"], ["640 x 640", "1080 x 1080", "1440 x 1440"], 
		["60 FPS", "90 FPS", "120 FPS", "144 FPS"], ["GUI: 0.8x", "GUI: 1x", "GUI: 1.2x", "GUI: 1.5x"]];
		global.costume = 0;
		
		show_debug_message("Creating Save...");
		save_game();	
	}
	
	setConfig();
}