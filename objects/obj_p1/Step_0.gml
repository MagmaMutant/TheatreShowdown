gamepad_id = -1;

for (var i = 0; i < 12; i += 1;)
{
    if gamepad_is_connected(i)
    {
        gamepad_id = i;
        gamepad_set_axis_deadzone(gamepad_id, 0.2);

        break;
    }
}

if gamepad_id > -1
{
	//establish controls
    var _h = gamepad_axis_value(gamepad_id, gp_axislh);
	var _x = gamepad_button_check_pressed(gamepad_id, gp_face3); //jump
	var _a = gamepad_button_check_pressed(gamepad_id, gp_face1); //special
	var _b = gamepad_button_check_pressed(gamepad_id, gp_face2); //attk
	var _y = gamepad_button_check(gamepad_id, gp_face4); //block
	
	
	//
	
	// cant do while blocking
	if not blocking
	{
		// walking
		x += _h * 4; 
		
		
		//jumping
		if ((canjump) && (_x)) 
		{
			vspeed = -7;
			gravity = .3;
			canjump = false;
	
		}
		if (_b) and canjump
		{
			attacking = true;
			//play_
			

		}
		if attacking = true
		{
			
		}
		
	}
	
	
	
	//block
	if (_y) && canjump 
	{
		prevsprite = sprite_index
		sprite_index  = spr_shielded
		blocking = true;
	}
	else
	{
		blocking = false;
		sprite_index = spr_p1A
	}






}