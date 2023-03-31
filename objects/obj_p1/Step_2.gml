if global.game == true{
	if not attacking //and not attacking //and (sprite_index ==spr_p1A or sprite_index ==spr_p1B or sprite_index ==spr_shielded )
	{
	
			if (x < obj_p2.x)
			{
				//sprite_index= spr_p1A;
				image_xscale = 1;
	
			}

			else
			{
				image_xscale = -1;
				//sprite_index= spr_p1B
			}
	
	}
	var _h = gamepad_axis_value(gamepad_id, gp_axislh);
	if freefall and not wallc{
		x += _h * 1.5;
		image_speed = abs(_h)
		
	}
	
}