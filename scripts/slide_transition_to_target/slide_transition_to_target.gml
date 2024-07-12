/// @desc slide_transition(mode, targetRoom)
/// @arg _mode sets transition mode between next, restart and goto.
/// @arg _target sets target room when using the goto mode.
function slide_transition_to_target(_mode, _target)
{
	
	with (obj_transition_manager)
	{
	mode = _mode; 
	if (argument_count > 1) target = _target;
	}
	
}


