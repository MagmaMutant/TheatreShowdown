// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_classSpecY(char){
	if char = "KNIGHT"{
		if canjump and not kb{
			prevsprite = sprite_index
			sprite_index  = spr_shielded
			blocking = true;
		}
		else{
			blocking = false;
			if not walking{
				fallingoridle();
			}
		}
	}
	if char = "RANGER"{
		if boostavailible{
			speedmod = 2.5
			boostavailible = false
			alarm[6] = room_speed * 1.25
		}
	}
}