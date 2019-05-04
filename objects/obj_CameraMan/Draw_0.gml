draw_self();
draw_set_color(c_yellow);
draw_set_font(font0);
draw_set_valign(fa_bottom);
draw_text_ext(x + sprite_width/2 - sprite_xoffset + 10, y - sprite_yoffset + sprite_height/2, "Hit me and you'll pay $" + string(Obj_Vehicle.cost) + " for my medical bills", font_get_size(font0) + 5,150)