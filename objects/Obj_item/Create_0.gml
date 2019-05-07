audio_play_sound(s_Placing, 9, false);
itemSelect.item_amount -= 1;
obj_money.money -= itemSelect.cost;
c = instance_create_layer(x, y, "mouseObj", obj_moneyChange)
c.change = -1 * itemSelect.cost;
c.color = c_red