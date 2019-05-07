audio_play_sound(s_deselect, 10, false);
itemSelect.item_amount += 1;
obj_money.money += itemSelect.cost;
c = instance_create_layer(x, y, "mouseObj", obj_moneyChange)
c.change = itemSelect.cost;
c.color = c_lime