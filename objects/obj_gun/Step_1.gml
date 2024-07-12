if(!instance_exists(obj_player))
{
	instance_destroy();
	exit;
}

x = obj_player.x;
y = obj_player.y;


if (obj_player.controller == 0){
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else{ 
	var _controller_h = gamepad_axis_value(0,gp_axisrh);
	var _controller_v = gamepad_axis_value(0,gp_axisrv);
	if (abs(_controller_h) > 0.2 || abs(_controller_v) > 0.2){
		
		controller_angle = point_direction(0,0,_controller_h,_controller_v)
	}
	
	image_angle = controller_angle;
}

firing_delay = firing_delay - 1;
recoil = max(0,recoil- 1);

if ((mouse_check_button(mb_left) || gamepad_button_check(0,gp_shoulderlb)) && firing_delay < 0){
	
	recoil = 4;
	firing_delay = 5;
	screen_shake(2,10);
	with (instance_create_layer(x,y,"Bullets",obj_bullet)){
		 
		speed = 25;
		direction = other.image_angle + random_range(-5,5);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90 && image_angle < 270){
	image_yscale = -1;

}
else{
	image_yscale = 1;
}