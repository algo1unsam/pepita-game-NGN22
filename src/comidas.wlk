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
