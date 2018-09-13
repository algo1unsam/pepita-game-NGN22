import comidas.*

object jugador {
	const property imagen = "jugador.png"
	var property posicion = game.at(7,7)
	var property comida = null
	
	
	//inicial: tenia comida en la mano
	//post: suelta la comida en un lugar del tablero
	// TODO esto me parece que está bien pero no veo desde donde
	// se llama a este mensaje
	method soltarComida()
	{
		if(comida!=null)
		{
		game.addVisualIn(comida, game.at(0,1))
		}
	}
		
	
	
	//inicial le dio a alguien el contenido anterior
	//post comida = vacio
	method noTenesMasComida()
	{
		comida.aparecer()
		comida = null
		
	}
	 
	
}
