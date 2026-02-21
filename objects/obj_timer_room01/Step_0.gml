

//O meu timer vai descendo, até zerar, então posso passar para a fase espiritual
if ( global.comecar == true and instance_exists(obj_player) )
{    	 
	 o_meu_timer = global.timer_room1;
	 global.timer_room1 -= 0.02
	
 
}

//zerando o timer! 
//se o timer zerou e nao há inimigos, o spiritualis começa 
if ( global.timer_room1 <= 0 )
{
	  global.timer_room1 = 0;

if ( global.timer_room1 <= 0 and (!instance_exists(obj_inimigo_01)) )
   {
//vamos começar a fase espiritual 1!	 
	 global.fase1 = true;
	 
   }
}



