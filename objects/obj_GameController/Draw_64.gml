if(global.rm == 0)
{
	draw_set_color(c_yellow)
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	stringBuilder = string(game_highscore);
	if(cheats) stringBuilder = "HACKERMAN";
	draw_text_ext_transformed(x, y, "highscore: " + stringBuilder, 0, 10000, 5,5,0);
}