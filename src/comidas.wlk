object manzana {
	const property imagen = "manzana.png"
	
	
	method energia() = 80
	
	method soyLaNuevaComida(alguien)
	{
		alguien.comida(self)
		game.removeVisual(self)	
		
	}
	
	
	method teEncontro(alguien)
	{
		if(alguien.comida()==null)
		{
			self.soyLaNuevaComida(alguien)
		}
		// TODO acá falta reemplazar la comida que está, por la que se encontró
		// me parece que self.soyLaNuevaComida(alguien) hay que llamarlo siempre
		// lo único que cambia es que si había algo hay que agregarlo de nuevo la tablero
		else self.aparecer()
		
	}
	
	method aparecer(){
		game.addVisualIn(self, game.at(0,0.randomUpTo (10)))		
		
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	
	method energia() = 5
	
	method soyLaNuevaComida(alguien)
	{
		alguien.comida(self)
		game.removeVisual(self)	
		
	}
	method teEncontro(alguien)
	{
		if(alguien.comida()==null)
		{
			self.soyLaNuevaComida(alguien)
		}
		else self.aparecer()
	}
	method aparecer()
	{
		game.addVisualIn(self, game.at(0,0.randomUpTo (10)))		
		
	}
}
