import comidas.*

object jugador {
	const property imagen = "jugador.png"
	var property posicion = game.at(7,7)
	var property comida = null
	
	
		
	
	//inicial le dio a alguien el contenido anterior
	//post comida = vacio
	method noTenesMasComida()
	{
		comida.aparecer()
		comida = null
		
	}
	 
	
}
