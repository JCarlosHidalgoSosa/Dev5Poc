/// @desc ScreenShake(magnitude,frames)
/// @arg _magnitude sets the strength of hte shake (radius in pixels)
/// @arg _frames sets the length of the sahke in frames
function screen_shake(_magnitude, _frames){
	
	with (obj_camera)
	{
		if (_magnitude > shake_remain)
		{
			shake_magnitude = _magnitude;
			shake_remain = _magnitude;
			shake_length = _frames;
		}
	}
	
}