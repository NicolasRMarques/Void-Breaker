global.costumesGUI = !global.costumesGUI;
global.configGUI = false

image_index = (image_index + 1) mod image_number;

if(obj_configButton.image_index == 1){
	obj_configButton.image_index = 0;
}