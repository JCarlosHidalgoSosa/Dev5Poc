/// @description Progress the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(minimum_range, percent - max((percent / 10), 0.005));
	} 
	else
	{
		percent = min(maximum_range, percent + max(((maximum_range - percent) / 10) , 0.005));
	}
	
	if (percent == maximum_range) || (percent == minimum_range)
	{
		switch (mode)
		{
				case TRANS_MODE.INTRO:
				{
					mode = TRANS_MODE.OFF;
					break;
				}
				
				case TRANS_MODE.NEXT:
				{
					mode = TRANS_MODE.INTRO;
					room_goto_next();
					break;
				}
				
				case TRANS_MODE.GOTO:
				{
					mode = TRANS_MODE.INTRO;
					room_goto(target);
					break;
				}
				
				case TRANS_MODE.RESTART:
				{
					game_restart();
					break;
				}
		}
	}
}