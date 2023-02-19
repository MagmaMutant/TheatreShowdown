//counter
draw_set_font(fnt_counter)
draw_set_color(c_red)
draw_set_alpha(1)
if countdown> 0{
	if countdown >9{
	draw_text(475,50,countdown)
	}
	else
	draw_text(490,50,countdown)
}
else{
	global.game = false
	room_goto(rm_gameover)
}