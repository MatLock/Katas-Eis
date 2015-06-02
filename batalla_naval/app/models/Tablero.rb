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
		validarCoordenadas(x,y)
		@mapa[x][y] = barco
	end

	def ponerBarcoChicoEn(coord,barco)
		resultado = parsearCoordenadas(coord)
		x = resultado[0]
		y = resultado[1]
		ponerBarcoEn(x,y,barco)
	end

	def ponerBarcoLargoEn(coords,barco)
		resultado = parsearCoordenadas(coords)
		x = resultado[0]
		y = resultado[1]
		ponerBarcoEn(x,y,barco)
		ponerBarcoEn(x,y+1,barco)
	end

	def parsearCoordenadas(coords)
		array = coords.split(":")
		array[0] = array[0].to_i
		array[1] = array[1].to_i
		return array
	end

	def posicionVacia(coord)
		array = parsearCoordenadas(coord)
		x = array[0]
		y = array[1]
		return ! @mapa[x][y].hayBarco()
	end 


	def validarCoordenadas(x,y)
		if (x > @x ||  x < 0 || y < 0 || y > @y)
			raise FueraDelTableroException, "No es posible colocar un barco fuera del mapa!!"
		end
		if ( !mapa[x][y].kind_of?(SinBarco))
			raise BarcoYaExistenteException, "Ya existe un barco en la coordenada proporcionada!"
		end
	end

end