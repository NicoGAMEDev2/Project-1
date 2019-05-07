if(!obj_GameController.inPlay && global.rm != 0)
{
	draw_set_halign(fa_left);
	draw_set_font(font0);
	draw_self();
	
	//this will comine both and place it on the on the text box
	
	if( (position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) || (obj_mouse.itemSelect == id && !position_meeting(window_mouse_get_x(), window_mouse_get_y(), Obj_interactable)) ) && description != "")
	{
		xOffset = 30;
		spaceing = 10;		

		draw_set_valign(fa_top);
		draw_set_color(c_yellow);
		stringBuilder = item_name
		if(item_limit >= 0) stringBuilder += " Amount: " + string(item_amount);
		draw_text(obj_textBox.x + xOffset, obj_textBox.y - obj_textBox.sprite_yoffset, stringBuilder);
		
		draw_set_valign(fa_middle);
		draw_set_color(c_aqua);
		stringBuilder = "Description: " + description;
		draw_text(obj_textBox.x + xOffset, obj_textBox.y + 3, stringBuilder);
		
		draw_set_valign(fa_bottom);
		draw_set_color(c_red);
		stringBuilder = "Cost: $" + string(cost);
		draw_text(obj_textBox.x + xOffset, obj_textBox.y - obj_textBox.sprite_yoffset + obj_textBox.sprite_height + spaceing, stringBuilder);
	}
}
