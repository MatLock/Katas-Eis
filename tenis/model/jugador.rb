class Jugador
	attr_accessor :nombre,:puntos

	def initialize(nombre)
		@nombre = nombre
		@puntos = 0
	end

	def anotar()
		@puntos += 15
	end

end