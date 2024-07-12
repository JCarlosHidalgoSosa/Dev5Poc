/// @description Progress text

letters += speed_text;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fnt_sign);

if (height == 0)
{
	height = string_height(text)
}
width = string_width(text_current);

// Destroy when done
if (letters >= length)
{
	time_to_destroy --;
	if (time_to_destroy == 0)
	{
		instance_destroy();
	}
}