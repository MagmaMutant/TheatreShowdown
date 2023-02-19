//gamepad_id = -1;
for (var i = 0; i < 12; i += 1;)
{
    if gamepad_is_connected(i)
    {
        gamepad_id = i;
        gamepad_set_axis_deadzone(gamepad_id, 0.2);

        break;
    }
}
if gamepad_button_check_pressed(gamepad_id,gp_start)  {
		show_debug_message("2")
		global.game = true;
		room = rm_theatre;
}