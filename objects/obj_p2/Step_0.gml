
gamepad_id = -1;
for (var i = 0; i < 12; i += 1;)
{
    if gamepad_is_connected(i)
    {
        gamepad_id = i;
        gamepad_set_axis_deadzone(gamepad_id, 0.2);

        break;
    }
}

//show_debug_message(gamepad_id)
if global.game{
gamepad_id = 1
gamepad_set_axis_deadzone(gamepad_id, 0.5);
if gamepad_id = 1 //> -1
{
	if (kb == true){
	gravity = .5;
	//vspeed = -3
	//y-= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	//y+= lengthdir_y(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	if afacingb(obj_p2,obj_p1){
		x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		//y+= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
	else{
		x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		//y-= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
}
else{
	//gravity = 0.0; redundant
	//establish controls
    var _h = gamepad_axis_value(gamepad_id, gp_axislh);
	var _rb = gamepad_button_check_pressed(gamepad_id, gp_shoulderr); // dodge stick
	var _lb = gamepad_button_check_pressed(gamepad_id, gp_shoulderl); //dodge
	var _v = gamepad_axis_value(gamepad_id, gp_axislv); // vertical stick
	var _x = gamepad_button_check_pressed(gamepad_id, gp_face3); //jump
	//var _select = gamepad_button_check_pressed(gamepad_id,gp_select); // select
	var _a = gamepad_button_check_pressed(gamepad_id, gp_face1); //special
	var _b = gamepad_button_check_pressed(gamepad_id, gp_face2); //attk
	var _y = gamepad_button_check(gamepad_id, gp_face4); //block
	
	
	//
	
	// cant do while blocking
	
	if not blocking and not attacking and not dodging and not freefall and not kb
	{
		// walking
		if (_h != 0)
		{
			walking = true;
			x += _h * 4;
			image_speed = abs(_h) //add animation speed acording to |_h|
			sprite_index = spr_p1walk;
			
			
		}
		else if (_h = 0)
		{
			walking = false;
			image_speed = 1;
			fallingoridle();
		}
		
		//jumping
		if ((canjump) && (_x)) and not kb
		{
			gravity = 0.3;
			vspeed = -9;
			canjump = false;
	
		}
		if (_b) and not kb and not attkcooldown //and canjump
		{
			scr_classAttackB(obj_p2,"KNIGHT");
		}
		if (_a) and canjump and not attkcooldown and not kb and not rolling//and canjump
		{
			scr_classAttackA(obj_p2,"RANGER");
			
		}
		else
		{
			//attacking = false;
		}

		}
		
	
	
	
	
	//block
	if (_y) && canjump and not kb
	{
		prevsprite = sprite_index
		sprite_index  = spr_shielded
		blocking = true;
	}
	else
	{
		blocking = false;
		if not walking{
			fallingoridle();
		}
	}
	if canroll and not rolling and canjump and not kb and not blocking and (_rb or _lb)
	{
		show_debug_message("trigger")
		if _rb{
			
			dodgedirection = 1
			
		}
	
		if _lb{
			
			
			dodgedirection = -1
		}
		if x<obj_p1.x{
			dodgedirection*=-1;
		}
		rolling = true
		canroll = false
		image_alpha = .5
		alarm[1] = room_speed * .2;
		alarm[5] = room_speed * 3;
	}
	if rolling = true and not kb{
		x -= lengthdir_x(15,point_direction(x,y,obj_p1.x,obj_p1.y)) * dodgedirection
		//rotate
	}
	// airdodge
	if not canjump and not attacking and not dodging and not freefall and not kb{
		if _y and abs(_h) > .3{
			dodging = true;
			freefall = true
			if _h > 0{
				dodgedirection = -1
			}
			else{
				dodgedirection =1
			}
			image_alpha = .5
			gravp = gravity
			gravity = .8
			alarm[1] = room_speed * .1;  //duration
			//if _h >0{//going right
			
		//}
		
		//else{//going left
			
		//}
		}
	}

	if dodging == true and not kb{
		x -= lengthdir_x(15,point_direction(x,y,obj_p2.x,obj_p2.y)) * dodgedirection // change first num for power
	}
	
	
}
//}


}

}