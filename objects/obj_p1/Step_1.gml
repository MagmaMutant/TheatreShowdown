//floor collision
	if (place_meeting(x,y+1,obj_wall)) 
	{
		gravity = 0
		vspeed = 0
		canjump =true
		canjump2 = true
		freefall = false;
		//y=456;
		
	}
	//if (place_meeting(x,y+1,obj_platform)) 
	//{
	//	gravity = 0
	//	vspeed = 0
	//	canjump =true
	//	freefall = false;
		
	//}
	
if freefall{
	image_alpha = .5
}
else{
	image_alpha = 1
}