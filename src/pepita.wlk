import ciudades.*

object pepita {
	var property energia = 9
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	
	var imagen = "pepita1.png"

	method come(comida)
	{
		energia = energia + comida.energia()
		/*cambio la imagen con el metodo por que interprete que se hacia 
		 * automaticamente al variar la energia
		 */
		self.cambiarImagen()
	}
	
	method meDieronDeComer(alguien)
	{
		self.come(alguien.comida())
		alguien.noTenesMasComida()
		
	}
	
	//post: le dan de comer o no hace nada
	method teEncontro(alguien)
	{
		if(alguien.comida() != null)
		{
			self.meDieronDeComer(alguien)
		}
		 
	} 
	
	//post dice la ciudad donde esta pepita
	method deciDondeEstas()
	{
		game.say(self , "ya estoy en!" )
		game.say(self , ciudad.nombre())
	}
	
	//post: verifica si pepita puede volar a donde le dicen
	method volaHacia(unaCiudad) 
	{
		if (ciudad != unaCiudad) 
		{
			self.calcularMovimiento(unaCiudad)
		}
		else self.deciDondeEstas()
		/* correccion se agrego cartel para que se sepa que ya esta en esa ciudad*/
	}
	
	//post si le alcanza energia se mueve, desciende la energia
	method calcularMovimiento(unaCiudad)
	{
		if(self.meAlcanzaLaEnergia(unaCiudad.posicion()))
		{
			energia = self.nuevaEnergia(unaCiudad.posicion())
			self.cambiarImagen()			
			self.meMovi(unaCiudad) 
		}
		else self.noMeMovi()
	}
	
	
	
	
	// inicial la trataron de mover
	// post: anuncia que no tenia energia para vomerse
	method noMeMovi()
	{
		game.say(self , "no tengo energia, primero dame de comer" )
		/*corerecion se elimino comprobacion  */
	}
	
	
	
	
	//post tenia energia cambia ciudad y posicion
	method meMovi(unaCiudad)
	{
		ciudad = unaCiudad
		self.nuevaPosicion( unaCiudad.posicion() )
		self.queCiudadEs()
	}
	
	
	
	/*correcion se agrega metodo para que pepita se "mueva hacia la ciudad " */
	method queCiudadEs()
	
	{	
		game.removeVisual( self )
		if(ciudad == buenosAires)
		{
			game.addVisualIn( self, game.at(0,0)  )
		}
		else 
		game.addVisualIn( self, game.at(7,2)  )
	}
	
	
	
	
	
	
	
	//
	//post: si tiene energia se mueve 
	method meAlcanzaLaEnergia( nuevaPosicion )
	{
		return self.nuevaEnergia( nuevaPosicion ) > 10		
	}
	
	//post: nuevo valor de energia luego de volar a una distancia
	method nuevaEnergia(nuevaPosicion) 
	{	
		return energia - self.energiaParaVolar( posicion.distance(nuevaPosicion) )
	}
	
	method energiaParaVolar(distancia) = 15 + 5 * distancia
	
	//post cambia la posicion y anuncia
	method nuevaPosicion( nuevaPosicion )
	{	
		self.posicion( nuevaPosicion )		
		
		self.deciDondeEstas()
	}
	
	method estasCansada()
	{
		return energia <= 10
	}
	
	method demasiadaComida()
	{
		return energia >= 100
	}
	
	// TODO fijate que haciendo todo en imagen() por ahi te queda mas corto 
	method cambiarImagen()
	{
		if(self.estasCansada())
		{
			self.cansada()
		}
		else self.conEnergia()
	}
	
	method cansada()
	{			
		imagen = "pepita.png"
	}
	
	method conEnergia()
	{
		if (self.demasiadaComida())
		{
			imagen = "pepita-gorda-raw.png"
		}
		else self.imagenNormal()
	}
	method imagenNormal()
	{
		imagen = "pepita1.png"
	}
	
	
	}