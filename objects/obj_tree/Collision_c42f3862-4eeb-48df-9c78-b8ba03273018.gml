/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("E")) && chopping == false) {
	if (chopped = false) {
		chopping = true;
		alarm[2] = room_speed * 1;
	}
}