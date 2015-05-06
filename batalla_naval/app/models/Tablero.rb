class Tablero

	attr_accessor :mapa


	def initialize(x,y)
		@mapa = Array.new(x) { Array.new(y, SinBarco.new) }
	end

	#las listas que se brindan como argumentos deben tener la misma longitud
	#funciona para barcos chicos y largos (permite colocarlos de cualquier manera)
	def ponerBarcoEn(coords,barco)
		resultado = parsearCoordenadas(coords)
		x = resultado[0]
		y = resultado[1]
		i = 0
		while i < x.size() do 
			validarCoordenadas(x[i],y[i])
			@mapa[x[i]] [y[i]] = barco
			i = i + 1
		end
	end

	def validarCoordenadas(x,y)
		if (x > mapa.size() || y > mapa.size() || y > mapa[0].size() ||
		 x < 0 || y < 0 || y < 0)
			raise FueraDelTableroException, "No es posible colocar un barco fuera del mapa!!"
		end
	end

	    
	def parsearCoordenadas(coords)
		array = coords.split(",")
		coordsX = Array.new(array.size)
		coordsY = Array.new(array.size)
		i = 0
		array.each{|e| coordsX[i] = e[1..e.length - 4].to_i
					   coordsY[i] = e[3.. e.length - 2].to_i
					   i = i + 1}
		return [coordsX, coordsY]
	end

	def dispararEn(coord)
		array = parsearCoordenadas(coord)
		x = array[0][0]
		y = array[1][0]
		return efectuarDisparo(x,y)
	end

	def posicionVacia(coord)
		array = parsearCoordenadas(coord)
		x = array[0][0]
		y = array[1][0]
		return ! @mapa[x][y].hayBarco()
	end 

	def efectuarDisparo(x,y)
		resultado = mapa[x][y].recibirDisparo()	
		if resultado.eql?("sink") || resultado.eql?("hit")
			mapa[x][y] = SinBarco.new
		end
		return resultado
	end

end