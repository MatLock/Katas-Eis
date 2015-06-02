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

	def ponerBarcoEn(x,y,barco)
		@mapa[x][y] = barco
	end

	def ponerBarcoChicoEn(coord,barco)
		resultado = parsearCoordenadas(coord)
		x = resultado[0]
		y = resultado[1]
		ponerBarcoEn(x,y,barco)
	end

	def parsearCoordenadas(coords)
		array = coords.split(":")
		array[0] = array[0].to_i
		array[1] = array[1].to_i
		return array
	end

end