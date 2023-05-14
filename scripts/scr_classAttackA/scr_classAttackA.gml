// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_classAttackA(player,char){
	show_debug_message("WE GOOF")
	if char = "KNIGHT"{
		player.attacking = true;
		audio_play_sound(spearsound,1001,false)
		player.attkcooldown = true;
		player.alarm[2] = room_speed * 1.5;
		
		if player == obj_p1{
			if image_xscale == 1
				{
					instance_create_layer(x,y,"BattleFloor",obj_pierce,{ Def : 1})
				}
			else
				{
					instance_create_layer(x,y,"BattleFloor",obj_pierce,{ Def : -1})
				}
		}
		else{
			if image_xscale == 1
			{
				instance_create_layer(x,y,"BattleFloor",obj_pierce2,{ Def : 1})
			}
			else
			{
				instance_create_layer(x,y,"BattleFloor",obj_pierce2,{ Def : -1})
			}
		}
	}
	if char == "RANGER"{
		
		player.attacking = true;
		audio_play_sound(shootarrow,1001,false)
		player.attkcooldown = true;
		alarm[2] = room_speed * 2;
		if player == obj_p1{
			if image_xscale == 1
				{
					instance_create_layer(player.x,player.y-40,"BattleFloor",obj_bow,{ Def : 1})
				}
			else
				{
					instance_create_layer(player.x,player.y-40,"BattleFloor",obj_bow,{ Def : -1})
				}
		}
		else{
			if image_xscale == 1
			{
				instance_create_layer(x,y-30,"BattleFloor",obj_bow2,{ Def : 1})
			}
			else
			{
				instance_create_layer(x,y-30,"BattleFloor",obj_bow2,{ Def : -1})
			}
		}
	
	
	
	
	}
}