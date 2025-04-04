image_xscale = image_xscale + 0.001;
image_yscale = image_xscale;

if(image_xscale <= 0){
	global.konami = true;
	global.currentQuest = 0;
	global.transition = 1;
	room_goto(rm_victory);
}