if target.hp <=0 
{
	instance_destroy(target);
	global.winner = 1
	global.game = false;
	room_goto(rm_gameover)
}
else
{
target.hit = false;
}
caster.attacking = false;