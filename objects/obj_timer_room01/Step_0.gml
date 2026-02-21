

//O meu timer vai descendo, até zerar, então posso passar para a fase espiritual
if ( global.comecar == true and instance_exists(obj_player) )
{    	 
	 o_meu_timer = global.timer_room1;
	 global.timer_room1 -= 0.01
	
 
}

//zerando o timer!
if ( global.timer_room1 <= 0)
{
	  global.timer_room1 = 0;

}



