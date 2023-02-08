gamepad_id = -1;
if (ybase =! y){
	y += 1;
}

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
    //var _v = gamepad_axis_value(gamepad_id, gp_axislv);
    x += _h * 6;
    //y += _v * 4;
}


{
	
	if (gamepad_button_check(gamepad_id,gp_shoulderl) == true) and (ybase =! y){
		y += 60;
	}
	
	
}