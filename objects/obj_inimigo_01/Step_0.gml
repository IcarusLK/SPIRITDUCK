


//chamando minha máquina de estados
machina()

//morrendo quando zerar a vida, é melhor fazer fora do switch. 
morrendo();

//tentando fazer os bichos nao se mesclarem

if (instance_exists(obj_inimigo_01))
{
  if ( distance_to_point(obj_inimigo_01.x,obj_inimigo_01.y) < 15 )
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