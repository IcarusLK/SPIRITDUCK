

//Pegando váriaveis

right = 0;
left  = 0;
up    = 0;
down  = 0;
vel   = 2;


//variaveis para eu poder atirar
atira = 0;
tempo_para_atirar = 3;
timer_para_atirar =  0;
posso_atirar      =  true;



//velocidade e direção
moveX = 0;
moveY = 0;


//variaveis auxiliares

indica_estado = 0; 

//pegando colisões
colisores     =  [obj_parede];


//fazendo a movimentação do Player

control = function()
{
	
	right = keyboard_check(ord("D"))
	left  = keyboard_check(ord("A"))
	up    = keyboard_check(ord("W"))
	down  = keyboard_check(ord("S"))
	
	atira = mouse_check_button(mb_left)
	
	vel   = 2;
	
	moveX = (right - left ) * vel
	moveY = ( down -  up   ) * vel
	
	
	//chamando o move_and_collide
	
	move_and_collide(moveX,moveY,colisores)
		
    if (atira and posso_atirar)
	{
		//inserir function de atirar
		atirar()

//se já atirei não atiro mais		
		posso_atirar = false;
	}
	
//se nao posso atirar o timer começa a contar tic tacc		
	  if (!posso_atirar)
	  {
		timer_para_atirar += 0.1;
	  }
	
//se meu timer for igual ao tempo para atirar, posso atirar novamente e reseto o timer
if   (timer_para_atirar >= tempo_para_atirar)
	{   
		timer_para_atirar = 0
		posso_atirar = true;
	};
}


#region Máquina de estados

//Iniciando meu primeiro estado (IDLE)


estado_idle = function()
{
	
	sprite_index = spr_player_idle;
	indica_estado = "idle"
	
//Indo para o estado de andando	
	if (left or right or up or down)
	
	{
		estado = estado_andando
	}
	
};


estado_andando = function()
{
	   vel = 2;
	   indica_estado = "andando";
	
//mudando a sprite	
	if ( moveY > 0 )
	{
//andando para frente
		sprite_index = spr_player_walk;
		
	}
	
	if ( moveY < 0 )
	{
//andando para trás
		sprite_index = spr_duck_walk_back
		
	}

//mudando de estado 	   
	  if ( moveY = 0 and moveX = 0)
	  {
		  estado = estado_idle
	  }; 
	
	
	
}



#endregion 


//Fazendo o tiro

atirar = function()
{

//pegando meu criador
	var ori = obj_gun
//criando a bala
	var tiro    = instance_create_depth(ori.x,ori.y,1,obj_bullet)
//pegando a direção da arma	
	tiro.direction = obj_gun.direction 

//dando velocidade ao tiro	
	tiro.speed = 3
	
	
		
}



//Aqui eu irei executar os meus estados 
//começando no idle

estado = estado_idle;






