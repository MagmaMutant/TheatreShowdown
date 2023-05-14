
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
gamepad_id = 0
if gamepad_id = 0 //> -1
{
	//establish controls
    var _h = gamepad_axis_value(gamepad_id, gp_axislh);
	var _rb = gamepad_button_check_pressed(gamepad_id, gp_shoulderr); // dodge stick
	var _lb = gamepad_button_check_pressed(gamepad_id, gp_shoulderl); // dodge stick
	var _x = gamepad_button_check_pressed(gamepad_id, gp_face3); //jump
	//var _select = gamepad_button_check_pressed(gamepad_id,gp_select); // select
	var _a = gamepad_button_check_pressed(gamepad_id, gp_face1); //special
	var _b = gamepad_button_check_pressed(gamepad_id, gp_face2); //attk
	var _y = gamepad_button_check(gamepad_id, gp_face4); //block
	
	
	//
	
	// cant do while blocking
	if global.game{
		if (kb == true){
	gravity = .5;
	//vspeed = -3
	//y+= lengthdir_y(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	//y-= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	if afacingb(obj_p2,obj_p1){
		x += lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		//y+= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
	else{
		x -= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
		//y-= lengthdir_x(kbpower,point_direction(x,y,obj_p1.x,obj_p1.y))
	}
}
else{
	//show_debug_message(attacking)
	if not blocking and not attacking and not dodging and not freefall and not kb// and not rolling
	{
		// walking
		if (_h != 0)
		{
			walking = true;
			x += _h * 4 * speedmod;
			image_speed = abs(_h)*speedmod//add animation speed acording to |_h|
			sprite_index = spr_p1walk;
			
			
		}
		else if (_h = 0)
		{
			walking = false;
			image_speed = 1;
			fallingoridle();
		}
		
		//jumping
		if ((canjump) && (_x)) 
		{
			vspeed = -9;
			gravity = .3;
			canjump = false;
	
		}
		
		if (_b) and not attkcooldown and not kb//and canjump
		{
			scr_classAttackB(obj_p1,class);
		}
		if (_a) and canjump and not attkcooldown and not kb and not rolling//and canjump
		{
			scr_classAttackA(obj_p1,class);
			
		}
		else
		{
			//attacking = false;
		}

		}
		
	
	
	
	
	//SPECIAL
	
	if (_y){
		scr_classSpecY(class)
		
	}
	if not _y and class == "KNIGHT"
	{
		
			blocking = false;
			if not walking{
				fallingoridle();
			
		}
	}
	if canroll  and canjump and not kb and not blocking and (_rb or _lb) //and not rolling
	{
		//show_debug_message("trigger")
		if _rb{
			
			dodgedirection = 1
			
		}
	
		if _lb{
			
			
			dodgedirection = -1
		}
		rolling = true
		canroll = false
		image_alpha = .5
		alarm[1] = room_speed * .2;
		alarm[5] = room_speed * 3;
	}
	if rolling = true and not kb{
		x += lengthdir_x(15,point_direction(x,y,obj_p1.x,obj_p1.y)) * dodgedirection
		//rotate
	}
	// airdodge
	if not canjump and not attacking and not dodging and not freefall and not kb{
		if _y and abs(_h) > .3{
			dodging = true;
			freefall = true
			if _h > 0{
				dodgedirection = 1
			}
			else{
				dodgedirection =-1
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
		x += lengthdir_x(15,point_direction(x,y,obj_p1.x,obj_p1.y)) * dodgedirection  // change first num for power
	}
	//resize	
	// need if stattement
	//{
	//	show_debug_message("1")
	//	if window_get_fullscreen()
	//	{
	//		window_set_fullscreen(false);
	//	}
	//	else
	//	{
	//		window_set_fullscreen(true);
	//	}
	//}
	
	
}
}
//}
//if (place_meeting(x + _h * 4, y, obj_platform)) { while (!place_meeting(x +  _h * 4, y, obj_platform)) { x += _h * 4; } } x +=  _h * 4;

//if (place_meeting(x, y + vspeed, obj_platform)) { while (!place_meeting(x, y + sign(vspeed), obj_platform)) { y += sign(vspeed); } vspeed = 0; } y += vspeed;
}

