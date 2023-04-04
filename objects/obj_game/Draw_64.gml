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
	global.game = false
	if obj_p1.hp > obj_p2.hp{
		global.winner = 2
	}
	if obj_p1.hp < obj_p2.hp{
		global.winner = 1
	}
	else{
		global.winner = 0
	}
	room_goto(rm_gameover)
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);

	
