if not hit
{
	hit = true
	hp -=20
	if afacingb(obj_p1,obj_dummy)
	{
		x += 4
	}
	else
	{
		x-= 4
	}
}