if not attacking //and not attacking //and (sprite_index ==spr_p1A or sprite_index ==spr_p1B or sprite_index ==spr_shielded )
{
	
		if (x < obj_dummy.x)
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