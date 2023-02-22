if target.hp <=0 
{
	instance_destroy(target);
}
else
{
target.hit = false;
}
caster.attacking = false;