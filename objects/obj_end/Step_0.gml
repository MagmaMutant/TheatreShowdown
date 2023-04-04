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
if eitherpress(gp_start){//gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(1,gp_start)  {
		//show_debug_message("2")
		global.game = true;
		room_goto(rm_mm)
}
if global.winner == 2
{
	instance_create_layer(511,255,"BattleFloor",obj_anc,{ anc : "Player 1 Wins!"});
	
}
if global.winner == 1
{
	instance_create_layer(511,255,"BattleFloor",obj_anc,{ anc : "Player 2 Wins!"});
}
if global.winner != 1 and global.winner != 2
{
	instance_create_layer(511,255,"BattleFloor",obj_anc,{ anc :"It's a TIE"});
	
}
//if global.winner  == 0
//{
	
//	if obj_p1.hp > obj_p2.hp
//	{
//		instance_create_layer(511,255,"BattleFloor",obj_anc,{ anc : "Player 1 Wins!"});
//	}
//	if obj_p1.hp < obj_p2.hp 
//	{
//		instance_create_layer(511,255,"BattleFloor",obj_anc,{ anc : "Player 2 Wins!"});
//	}
//	else{
//		instance_create_layer(511,255,"BattleFloor",obj_anc,{ anc : "It's a TIE"});
//	}
	
//}