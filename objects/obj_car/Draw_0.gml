draw_self();
draw_set_color(c_yellow);

if(obj_GameController.inPlay)
{
	if(!rearWheel.onGround && !frontWheel.onGround)
	{
		draw_text(x, y - 40, "AIR TIME BOIS")
	}
	
}