//Movement
vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,o_PlayerWall))
{
	while(!place_meeting(x+sign(hsp),y,o_PlayerWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;  
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x, y+vsp, o_PlayerWall))
{
	while(!place_meeting(x,y+sign(vsp),o_PlayerWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
 
//Jump Animation
if (!place_meeting(x,y+1,o_PlayerWall))
{
	sprite_index = EnemyBird
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = EnemyBird;
	}
	
}
//Face = Direction
if (hsp != 0) image_xscale = sign(hsp);