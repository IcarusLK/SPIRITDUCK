

//mudando minha escala rapidin

image_xscale = 0.4
image_yscale = image_xscale


estado = "desce"
//efeito de subir!

efeito_sobe_desce = function()
{
	
	switch(estado)
	{
		case "desce" : 
	
	    y = lerp(y,ystart + 10,0.02)
		
	     if ( y >= ystart + 9)
		 {
			 estado = "sobe"
			
		 }
		 break; 
		 
		 case "sobe" :

//voltando para cima 
		 y = lerp(y,ystart - 9,0.02)
		 
		 if ( y <= ystart - 5)
		 {
			 estado = "desce";
		 }
		 
		 
		 break; 
	    	
    }//close switch


}// fecha func

   







