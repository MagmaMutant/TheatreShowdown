if afacingb(obj_p2,obj_p1){
		obj_p1.x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		obj_p2.x += lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		//y+= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
	else{
		obj_p1.x += lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		obj_p2.x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
instance_destroy()