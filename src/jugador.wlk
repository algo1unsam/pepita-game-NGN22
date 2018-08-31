import comidas.*

object jugador {
	const property imagen = "jugador.png"
	var property posicion = game.at(7,7)
	var property comida = null
	
	method soltarComida(){
		if(comida!=null){
		game.addVisualIn(comida, game.at(0,1))
		}
		}
	method encontreAlgo(comidaAgarrada)
	{
		comida = comidaAgarrada
		self.soltarComida()
	} 
	
	method aparecerComida(){
		game.addVisualIn(comida, game.at(0,0.randomUpTo (10)))
		comida = null
		
	}
	 
	
}
