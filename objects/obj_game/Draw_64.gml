//counter
draw_set_font(fnt_counter)
draw_set_color(c_red)
draw_set_alpha(1)

if countdown> 0{
	if room == rm_theatre{
	if countdown >9{
	draw_text(475,50,countdown)
	}
	else
	draw_text(490,50,countdown)
	}
}
else{
	show_debug_message("1")
	global.game = false
	show_debug_message("2")
	room_goto(rm_gameover)
	show_debug_message("3")
}