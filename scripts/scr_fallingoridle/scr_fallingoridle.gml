// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fallingoridle(){
			if not canjump
			{
				sprite_index = spr_p1fall;
			}
			else
			{
				sprite_index = spr_p1Idle;
			}
}