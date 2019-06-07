/// @description Insert description here
// You can write your code in this editor

if (other.image_index == 0) {
	add_score(2000);
	with (other) {
	 image_index = 1;	
	}
	instance_destroy();
}