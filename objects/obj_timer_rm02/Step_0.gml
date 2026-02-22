



// vendo quando é preciso começar, e contando o timer do player!
         if (global.comecar == true and instance_exists(obj_player))
		{
			timer -= 0.02
			
		};
		
		if (timer <= tempo_para_sair)
		{
			timer = tempo_para_sair;

//destruo os geradores de espirito
			instance_destroy(obj_gera_espirito)
			
		}