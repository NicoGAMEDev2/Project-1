if(global.rm == 0)
{
	draw_set_color(c_yellow)
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_ext_transformed(x, y, "highscore: " + string(game_highscore), 0, 10000, 5,5,0);
}