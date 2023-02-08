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
    var _h = gamepad_axis_value(gamepad_id, gp_axislh);
	var _x = gamepad_axis_value(gamepad_id, gp_face3); //jump
	var _a = gamepad_axis_value(gamepad_id, gp_face1); //special
	var _b = gamepad_axis_value(gamepad_id, gp_face2); //attk
	var _y = gamepad_axis_value(gamepad_id, gp_face4); //block
	
	
	
	x += _h * 6; // move LR
	

		if (_x)
		{
			y-= _x * 4
			
		}
	}
	

