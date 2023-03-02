//counter
draw_set_font(fnt_counter)
draw_set_color(c_red)
draw_set_alpha(1)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if countdown> 0{
	draw_text(x,y,countdown)
}
else{
<<<<<<< HEAD
	//show_debug_message("1")
	global.game = false
	//show_debug_message("2")
	room_goto(rm_gameover)
	//show_debug_message("3")
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
=======
	show_debug_message("1")
	global.game = false
	show_debug_message("2")
	room_goto(rm_gameover)
	show_debug_message("3")
}
>>>>>>> b6c06604e581786ce1558fbf4ac751a3826155bf
