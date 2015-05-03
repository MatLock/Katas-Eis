class Tablero

	attr_accessor :mapa


	def initialize(x,y)
		@mapa = Array.new(x,"water") {Array.new(y,"water")}
	end

	#las listas que se brindan como argumentos deben tener la misma longitud
	#funciona para barcos chicos y largos (permite colocarlos de cualquier manera)
	def ponerBarcoEn(coords,barco)
		resultado = parsearCoordenadas(coords)
		x = resultado[0]
		y = resultado[1]
		size = x.size - 1
		for i in 0.. size
			@mapa[x[i]] [y[i]] = barco
		end
	end

	def parsearCoordenadas(coords)
		array = coords.split(",")
		coordsX = Array.new
		coordsY = Array.new
		i = 0
		array.each{|e| coordsX[i] = e[1..e.length - 4].to_i
					   coordsY[i] = e[3.. e.length - 2].to_i
					   i = i + 1}
		return [coordsX, coordsY]
	end


	def posicionVacia(coord)
		resultado = parsearCoordenadas(coord)
		x = resultado[0]
		y = resultado[1]
		return mapa[x[0]][y[0]].nil?
	end

end