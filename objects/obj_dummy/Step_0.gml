if (kb == true){
	gravity = .5;
	//vspeed = -3
	//y-= lengthdir_y(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	if afacingb(obj_p1,obj_dummy){
		x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		y+= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
	else{
		x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		y-= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
}