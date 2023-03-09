draw_self();
var hppc = (hp/hpmax)*100
draw_set_font(fnt_menu)
draw_set_color(c_blue)
draw_set_alpha(1)
draw_sprite(spr_healthbaroutline,1, 24,24)

draw_healthbar(24, 24,324 , 50, hppc, c_black , c_red, c_green, 0, true, true);
draw_text(24,50+5,"Player 1")

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x,y-100,"P1")
draw_set_halign(fa_left);
