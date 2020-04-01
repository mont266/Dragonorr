///@description Character Variables + Alarm Inits
facing = 0; //0 = Up, 1 = Down, 2 = Left, 3 = Right
playerspeed = 1;
hungerspeed = 30;
thirstSpeed = 15;

//Alarms
alarm[0] = room_speed * hungerspeed;
alarm[1] = room_speed * thirstSpeed;

//Resize
image_xscale = 2;
image_yscale = 2;