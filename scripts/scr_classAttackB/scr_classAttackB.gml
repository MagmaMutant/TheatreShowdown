// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_classAttackB(player,char){
	if char = "KNIGHT"{
		player.attacking = true;
		audio_play_sound(attacksound,1001,false)
		player.attkcooldown = true;
		player.alarm[2] = room_speed * .5;
		if player ==obj_p1{
			if image_xscale == 1
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_slash,{ Def : 1})
			}
			else
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_slash,{ Def : -1})
			}
		}
		else{
			if image_xscale == 1
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_slash2,{ Def : 1})
			}
			else
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_slash2,{ Def : -1})
			}
		}
	}	
	if char == "RANGER"{
		player.attacking = true;
		audio_play_sound(daggerthorw,1001,false)
		player.attkcooldown = true;
		player.alarm[2] = room_speed * .35;
		if player ==obj_p1{
			if image_xscale == 1
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_dagger,{ Def : 1})
			}
			else
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_dagger,{ Def : -1})
			}
		}
		else{
			if image_xscale == 1
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_dagger2,{ Def : 1})
			}
			else
			{
				instance_create_layer(player.x,player.y,"BattleFloor",obj_dagger2,{ Def : -1})
			}
		}
		
		
	}
}