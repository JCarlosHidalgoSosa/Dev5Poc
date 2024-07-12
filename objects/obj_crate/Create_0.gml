/// @description Makes this object collidable

wall = instance_create_layer(x,y,layer,obj_wall); 

with (wall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}