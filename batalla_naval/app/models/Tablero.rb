class Tablero

	attr_accessor :mapa


	def initialize(x,y)
		@mapa = Array.new(x,"water") {Array.new(y,"water")}
	end

	#las listas que se brindan como argumentos deben tener la misma longitud
	def putBarcoEn(x,y,nombre)
		size = x.size - 1
		for i in 0.. size
			@mapa[x[i]] [y[i]] = nombre
		end
	end

end