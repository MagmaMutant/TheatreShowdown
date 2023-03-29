if not hit and not dodging
{
	if not blocking
	{
		kbpower = obj_slash2.kbpower
		hit = true
		kb= true
		hp -=20
		alarm[3] =  room_speed * .2;

		//if afacingb(obj_p1,obj_dummy)
		//{
		//	//x += 4
		//	//hspeed = 5
		//}
		//else
		//{
		//	//x-= 4
		//	//hspeed =-5
		////}
	}
	if blocking{
		kbpower = obj_slash2.kbpower / 2
		hit = true
		kb= true
		hp -=5
		alarm[3] =  room_speed * .1;
	}
	
}