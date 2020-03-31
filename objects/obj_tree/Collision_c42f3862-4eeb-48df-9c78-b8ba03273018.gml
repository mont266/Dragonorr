/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("E")) && chopped == false) {
	global.logs += 1;
	global.woodcuttingxp += 10;
	chopped = true;
	alarm[1] = room_speed * 15;
	sprite_index = spr_trunk;
}