/// @description Tree Damage
treehealth -= 1;
if (treehealth > 0 && chopping = true) {
	alarm[2] = room_speed * 1;
}
else {
	global.logs += 1;
	global.woodcuttingxp += 10;
	chopped = true;
	chopping = false;
	alarm[1] = room_speed * spawntime;
	sprite_index = spr_trunk
}