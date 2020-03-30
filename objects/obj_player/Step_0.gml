/// @description Character Engine
keyup		= keyboard_check(ord("W"));
keyleft		= keyboard_check(ord("A"));
keydown		= keyboard_check(ord("S"));
keyright	= keyboard_check(ord("D"));

if (keyup) {
	y -= charspeed;	
}
if (keydown) {
	y += charspeed;
}
if (keyleft) {
	x -= charspeed;
}
if (keyright) {
	x += charspeed;
}