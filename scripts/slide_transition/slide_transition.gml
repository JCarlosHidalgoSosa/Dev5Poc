/// @desc slide_transition(mode, targetRoom)
/// @arg _mode sets a concrete mode to obj_transition_manager object

function slide_transition(_mode)
{
	with (obj_transition_manager)
	{
		mode = _mode;
	}
}