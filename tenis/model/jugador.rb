class Jugador
	attr_accessor :nombre,:puntos, :partido, :ventaja

	def initialize(nombre,partido)
		@nombre = nombre
		@puntos = 0
		@ventaja = false
		@partido = partido
	end

	def anotar()
		if(@puntos == 45 && partido.puntosJugadorEnemigo(@nombre) == 45)
			@ventaja = true
			return
		end
		
		if(@puntos == 45 && ventaja)
			partido.anotarSet(self)
			@puntos=0
			return
		end

		if (@puntos < 45)
			@puntos = @puntos + 15		
		end
	end

end
