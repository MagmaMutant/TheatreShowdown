if not hit and not dodging
{
	if not blocking 
	{
		kbpower = obj_bow.kbpower
		hit = true
		kb= true
		hp -=obj_bow.dmg
		alarm[3] =  room_speed * .2;
		audio_play_sound(suchit,1000,false)
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
		kbpower = obj_bow.kbpower / 2
		hit = true
		kb= true
		hp -= 0
		alarm[3] =  room_speed * .1;
		//audio_play_sound(shieldhit,1000,false)
	}
}