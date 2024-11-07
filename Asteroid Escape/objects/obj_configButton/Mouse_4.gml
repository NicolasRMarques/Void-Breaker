global.configGUI = !global.configGUI;
global.costumesGUI = false;

image_index = (image_index + 1) mod image_number;

if(obj_costumesButton.image_index == 1){
	obj_costumesButton.image_index = 0;
}