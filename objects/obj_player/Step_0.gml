 
#region // Movement Inputs
key_left = keyboard_check(ord("A"));
key_right =keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
 
if (key_left || key_right || key_jump){
	
	controller = 0;
}

if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2){
	
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller = 1;
}

if (gamepad_button_check_pressed(0,gp_face1)){
	
	key_jump = 1;
	controller = 1;
}
#endregion

#region // Calculate movement
var _move = key_right-key_left;

horizontal_speed = _move * walk_speed;

vertical_speed = vertical_speed + gravity_p;

// Jumping
can_jump -= 1; 
if (can_jump > 0 && key_jump){
	
	vertical_speed = -8;
	can_jump = 0;
}

#endregion

#region // Collisions and movement

// Horizontal collision
if (place_meeting(x+horizontal_speed,y,obj_wall)){
	
	while(!place_meeting(x+sign(horizontal_speed),y,obj_wall)){
		
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = 0;
} 

x = x + horizontal_speed;

// Vertical collision
if (place_meeting(x,y+vertical_speed,obj_wall)){
	
	while(!place_meeting(x,y+sign(vertical_speed),obj_wall)){
		
		y = y + sign(vertical_speed);
	}
	vertical_speed = 0;
}

y = y + vertical_speed;

#endregion

#region // Animations

if (!place_meeting(x,y+1,obj_wall)){
	
	sprite_index = spr_player_jumping;
	image_speed = 0;
	
	if (sign(vertical_speed)>0) image_index = 1;
	else image_index = 0;
}
else{
	can_jump = 60;
	image_speed = 1;
	if (horizontal_speed == 0){
		sprite_index = spr_player_idle;
	}
	else{
		sprite_index = spr_player_running;
	}

}

if (horizontal_speed != 0) image_xscale = sign(horizontal_speed);

#endregion