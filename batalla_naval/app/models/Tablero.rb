class Tablero

	attr_accessor :mapa, :x , :y


	def initialize(x,y)
		@x = x
		@y = y
		@mapa = Array.new(x) { Array.new(y, SinBarco.new) }
	end

	def to_s
		return 'tablero'
	end

end