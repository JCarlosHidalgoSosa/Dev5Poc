/// @description Inserte aquí la descripción

screen_shake(6,60);
game_set_speed(30,gamespeed_fps);

with (obj_camera)
{
	follow = other.id;
} 

alarm[0] = 60;