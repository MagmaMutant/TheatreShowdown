

obj_p1.x += lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
obj_p2.x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))


audio_play_sound(spearhitsspear,1000,false)
instance_destroy()