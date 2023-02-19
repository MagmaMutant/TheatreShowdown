if obj_dummy.hp <=0 
{
	instance_destroy(obj_dummy);
}
else
{
obj_dummy.hit = false;
}
obj_p1.attacking = false;