

//iniciando o inimigo 1!
//randomizando as coisas
randomise()

//iniciando váriaveis
minha_vel          = 1
tempo_para_atacar  = 15;
timer              = 0;
tiro               = 0;
velocidade_tiro    = random_range(2,4);
meu_alvo           = obj_player;


//variaveis para o segundo estado
tempo_para_tiro        = choose(10,15)
timer_tempo_tiro       = 0;
atirar                 = true;
tempo_para_voltar_tiro = 37;
timer_para_voltar_tiro = 0;

//os meus estatus :
vida_oni    = 1;
ataque_oni  = 1;

//chance de dropar alimento para recuperar vida :
drop = choose(3,7)



//iniciando estado
estado = "way"


#region Meus Tiros


olho_de_oni = function()
{

// se posso atirar eu atiro	 
 if ( atirar and instance_exists(meu_alvo)) 
   {
	 tiro = instance_create_layer(x,y+5,"Inst_Inimigos",obj_olhos_de_oni_tiro)
	 tiro.speed = velocidade_tiro
	
//avisando a direção do meu tiro e seu angulo 
	tiro.direction = point_direction(x,y,meu_alvo.x,meu_alvo.y)	 

//adicioanr o 90 para mudar a angulação!   
	tiro.image_angle = tiro.direction + 90
   }

//se eu atirei uma vez fico sem atirar por uns segundos
	if (tiro)
	{
		atirar = false;
		timer_para_voltar_tiro += 0.5;
	}

//se meu timer chega em um certo valor posso voltar a atirar e meu timer reseta
	if (timer_para_voltar_tiro >= tempo_para_voltar_tiro)
	{
		atirar = true;
		timer_para_voltar_tiro = 0;
	}
}





#endregion 




#region Máquina de Estados 
//criando seu comportamento 
machina = function()
{
	  switch(estado)
	  
	  {
		  case "way" :

//definindo minha sprite		  
		  image_speed = 0;
		  image_index = 0;
//iniciando timer para atacar
         timer += 0.5
            
		   
 
		  if (xstart <= 6)
		  {
			  speed = minha_vel
		  }
		  else if (xstart >= 382)
		  {
			  speed = -minha_vel
		  }
		  
		  if (timer >= tempo_para_atacar)
		  {
			  timer  = 0;
			  estado = "attack";
			  //show_message("CARGA!");
			  
		  }; 
		  
		  
		  
		  break; //termina o estado

//indo para estado de ataque		  
		  case "attack" :
		  
		   speed             = 0;
		   image_speed       = 2
		   timer_tempo_tiro += 0.5

//ativo um timer para mudar de estado		   
		   if (timer_tempo_tiro >= tempo_para_tiro)
		   {   
			   
			   image_index = 1;
			   image_speed = 0;
			   estado = "olho de oni";
//reseta timer após mudar o estado			  
			  timer_tempo_tiro = 0;
			
		   };
		   
		   break;
		   
		   case "olho de oni" :
		   
		   image_speed = 0;
		   image_index = 1;
		  
		    olho_de_oni();	

//se o player morreu, isto é, não existe mais, eu vazo			
			if (!instance_exists(meu_alvo))
			{
				estado = "vazando"
			}
		  
		   break;

//se o player morreu eu vazo, volto para onde vim	  	  
		  case "vazando" : 


//voltando meu sprite!		  
		  image_index = 0;
		  image_speed = 0;
		  
		  if (xstart <= 6)
		  {
			  speed = - minha_vel
		  }
		  
		   else if (xstart >= 382)
		  {
			  speed = + minha_vel
		  }
		 break;  
		  
	  }//fecha o switch
	  
	
}//fecha a function


#endregion 


morrendo = function()
{
	
			if ( vida_oni <= 0 )
		{

//me destruíndo 	   
	    instance_destroy()
//droppando algo
	     if ( drop == 7 )
	     {
//criando uma maca			 
		   instance_create_depth(x,y,1,obj_maca)
	     }
			
	    }; 
	
}










