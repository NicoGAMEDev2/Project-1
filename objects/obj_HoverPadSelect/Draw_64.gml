display_set_gui_size(1600, 900);
draw_self();

if(item_name != "") draw_text(x-sprite_width/2,y + sprite_height/2,item_name + ": " + string(item_amount));