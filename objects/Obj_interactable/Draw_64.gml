if(global.rm != 0)
{
	draw_self();
	if(true)
	{
		draw_set_halign(fa_left);
		draw_set_font(font0);
		draw_self();
	
		//this will comine both and place it on the on the text box
	
		if((position_meeting(window_mouse_get_x(), window_mouse_get_y(), id)) && description1 != "")
		{
			xOffset = 30;
			spaceing = 10;		
		
			draw_set_valign(fa_middle);
			draw_set_color(c_aqua);
			stringBuilder = description1;
			draw_text(obj_textBox.x + xOffset, obj_textBox.y + 3, stringBuilder);
		}
	}

}