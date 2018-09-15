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
		self.tengoQueAparecer(alguien)
		self.soyLaNuevaComida(alguien)
						
	}
	
	method tengoQueAparecer(alguien)
	{
		if(alguien.comida() != null)
		{
			self.aparecer()	
		}
	}
	
	
	/*para el metodo aparecer y el loop infinito que 
	 * es provocado por los choques solo se agrego otro random
	 *  y un nuevo metodo para que solo aparezca si lo tiene que hacer
	 */
	
	
	method aparecer()
	{
		
		game.addVisualIn(self, game.at(0.randomUpTo (10),0.randomUpTo (10)))		
		
	}
}




object alpiste 
{
	const property imagen = "alpiste.png"
	
	method energia() = 5
	
	method soyLaNuevaComida(alguien)
	{
		game.removeVisual(self)	
		alguien.comida(self)
			
		
	}
	
	
	method teEncontro(alguien)
	{
		self.tengoQueAparecer(alguien)
		self.soyLaNuevaComida(alguien)
	}
	
	/*para el metodo aparecer y el loop infinito que 
	 * es provocado por los choques solo se agrego otro random
	 *  y un nuevo metodo para que solo aparezca si lo tiene que hacer
	 */
	
	method aparecer()
	{
		game.addVisualIn( self , game.at(0.randomUpTo (10),0.randomUpTo (10)) )		
		
	}
	
	method tengoQueAparecer(alguien)
	{
		if(alguien.comida() != null)
		{
			self.aparecer()	
		}
	}
	
}
