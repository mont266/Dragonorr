/// @description Tree Re-Spawn
chopped = false;
sprite_index = spr_tree;

#region Level Mechanics
if (global.woodcutting > 0 && global.woodcutting <= 5) {
	treehealth = 10;
}
if (global.woodcutting > 5 && global.woodcutting <= 10) {
	treehealth = 6;
}
if (global.woodcutting > 10 && global.woodcutting <= 15) {
	treehealth = 4;
}
if (global.woodcutting > 15 && global.woodcutting <= 20) {
	treehealth = 2;
}
if (global.woodcutting > 20 && global.woodcutting <= 30) {
	treehealth = 1;
}
#endregion