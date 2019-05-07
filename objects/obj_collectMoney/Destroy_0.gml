c = instance_create_layer(x, y, "mouseObj", obj_moneyChange)
c.change = moneyValue;
c.color = c_lime;
audio_play_sound(s_Money, 3, false);