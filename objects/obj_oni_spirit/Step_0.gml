



//chamando minhas funcoes;
olho_de_oni();

machina();

morrendo();


if (instance_exists(obj_oni_spirit))
{
  if ( distance_to_point(obj_oni_spirit.x,obj_oni_spirit.y) < 25 )
   {
	    	 
	  speed = 1;
	  move_towards_point(x_escolhe,y,speed)
	  
	  if ( x = x_escolhe)
	  {
		  
		  x = x_escolhe;
		 
		move_towards_point(x,y_escolhe,speed)
	
	  }
    
	if ( y = y_escolhe)
	 {
		speed = 0;
		y = y_escolhe
	
	  }
	
	}
	

}