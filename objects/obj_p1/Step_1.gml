//floor collision
	if (place_meeting(x,y+1,obj_wall))
	{
		gravity = 0
		vspeed = 0
		canjump =true
	}