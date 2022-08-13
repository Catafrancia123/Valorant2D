if (done == 0)
{
	//Movement
	vsp = vsp + grv;

	//Horizontal Collision
	if (place_meeting(x+hsp,y,o_PlayerWall))
	{
		while(!place_meeting(x+sign(hsp),y,o_PlayerWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//Vertical Collision
	if(place_meeting(x, y+vsp, o_PlayerWall))
	{
		if (vsp > 0)
		{
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x,y+sign(vsp),o_PlayerWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}