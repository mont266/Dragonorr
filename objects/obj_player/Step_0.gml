//// @description Player Engine
#region Key Bindings
keyup		= keyboard_check(ord("W"));
keyleft		= keyboard_check(ord("A"));
keydown		= keyboard_check(ord("S"));
keyright	= keyboard_check(ord("D"));
sprint		= keyboard_check(vk_lshift);
#endregion
#region Sprite Change
if (facing = 0) {
	sprite_index = spr_player_up;
}
if (facing = 1) {
	sprite_index = spr_player_down;
}
if (facing = 2) {
	sprite_index = spr_player_left;
}
if (facing = 3) {
	sprite_index = spr_player_right;
}
#endregion
#region Movement Engine
if (keyup) {
	y -= playerspeed;
	facing = 0;
	if (obj_tree.chopping = true) {
		obj_tree.chopping = false;
	}
}
if (keyleft) {
	x -= playerspeed;
	facing = 2;
	if (obj_tree.chopping = true) {
		obj_tree.chopping = false;
	}
}
if (keydown) {
	y += playerspeed;
	facing = 1;
	if (obj_tree.chopping = true) {
		obj_tree.chopping = false;
	}
}
if (keyright) {
	x += playerspeed;
	facing = 3;
	if (obj_tree.chopping = true) {
		obj_tree.chopping = false;
	}
}

//Sprinting
if (sprint) {
	playerspeed = 5;
	image_speed = 4;
} else {
	playerspeed = 3;
	image_speed = 1;
}

//Idle
if (keyboard_check(vk_nokey)) {
		image_speed = 0;
		image_index = 0;
}
else {
	image_speed = 1;	
}
#endregion
#region Leveling Enging
if (global.xp >= global.maxexp) {
	global.level += 1;
	global.prevexp = global.maxexp;
	global.maxexp = global.prevexp + global.prevexp * 1.1;
	global.xp = 0;
}
	if (keyboard_check_pressed(vk_enter)) {
		global.xp += 20;
	}
#endregion
#region Woodcutting Engine
if (global.woodcuttingxp >= global.woodcuttingmaxexp) {
	global.woodcutting += 1;
	global.xp += global.woodcutting * 10;
	global.woodcuttingprevexp = global.woodcuttingmaxexp;
	global.woodcuttingmaxexp = global.woodcuttingprevexp + global.woodcuttingprevexp * 1.1;
	global.woodcuttingxp = 0;
}
#endregion