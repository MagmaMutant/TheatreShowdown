draw_self();
var hppc = (hp/hpmax)*100

draw_healthbar(700, 24,1000 , 50, hppc, c_black , c_red, c_green, 1, true, true);
draw_set_font(fnt_menu)
draw_set_halign(fa_right);
draw_set_color(c_red)
draw_text(1000,50,"Player 2")





draw_set_alpha(1)
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x,y-100,"P2")
draw_set_halign(fa_left);
