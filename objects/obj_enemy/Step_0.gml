 vertical_speed = vertical_speed + gravity_p;

//Don't walk of edges
if (grounded && afraid_of_heights && !place_meeting(x+horizontal_speed+sprite_width/2,y+1,obj_wall))
{
	horizontal_speed = horizontal_speed*(-1);
}

// Horizontal collision
if (place_meeting(x+horizontal_speed,y,obj_wall)){
	
	while(!place_meeting(x+sign(horizontal_speed),y,obj_wall)){
		
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = horizontal_speed*(-1);
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

// ANIMATION

if (!place_meeting(x,y+1,obj_wall)){
	grounded = false;
}
else{
	grounded = true;
}
 

if (horizontal_speed != 0) image_xscale = sign(horizontal_speed) * size;
image_yscale = size;