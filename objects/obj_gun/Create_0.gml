



//mandado ela seguir o player

segue_player = function()
{
	 x = obj_player.x + 25
	 y = obj_player.y + 3
		
}

minha_direcao = function()
{

//pegando a direção do mouse para atirar
	direction = point_direction(x,y,mouse_x,mouse_y)
	image_angle = direction 
	
	if ( image_angle >= 164 and image_angle <= 267 )
	{   
		
		image_yscale = - 1
	}
	
	else 
	{   
		image_yscale = 1
	}
	
}








