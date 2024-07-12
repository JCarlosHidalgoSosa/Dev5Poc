/// @description Draw text globe
if (!instance_exists(obj_bubble_text))
{
	with (instance_create_layer(x,y-60,layer,obj_bubble_text))
	{
		text = other.text;
		length = string_length(text);
	}
}
