class Partido
	
	attr_accessor :jugador1,:jugador2, :sets

	def initialize()
		@sets = Hash.new
		@jugador1
		@jugador2
	end

	def anotarSet(nombre)
		if (@sets.has_key?(nombre))
			@sets[nombre] = sets[nombre] + 1
		else
			@sets[nombre] = 1
		end	
	end

	def puntosJugadorEnemigo(nombre)
		if(nombre == @jugador1.nombre)
			return @jugador2.puntos		
		end
		return @jugador1.puntos
	end

	def ventajaJugadorEnemigo(nombre)
		if (nombre == @jugador1.nombre)
			return @jugador2.ventaja
		end
		return @jugador1.ventaja
	end

	def quitarVentajaJugadorEnemigo(nombre)
		if (nombre == @jugador1.nombre)
			@jugador2.quitarVentaja()
		else
			@jugador1.quitarVentaja()
		end 
	end

end
