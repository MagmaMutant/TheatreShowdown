if target.hp <=0 
{
	//audio_play_sound(killsound,1,false)
	instance_destroy(target);
	global.winner = 2
	global.game = false;
	room_goto(rm_gameover)
}
else
{
target.hit = false;
}
caster.attacking = false;