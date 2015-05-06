class Barco

	attr_accessor :nombre


	def recibirDisparo
	end

	def hayBarco()
		return true
	end

	def initialize(nombre)
		@nombre = nombre
	end
end

class BarcoChico < Barco
	
	def initialize(nombre)
		super(nombre)
	end

	def recibirDisparo()
		return "hit"
	end
end

class SinBarco < Barco

	def recibirDisparo()
		return "water"
	end

	def initialize()
	end

	def hayBarco()
		return false
	end

end


class BarcoLargo < Barco
	attr_accessor :longitud

	def initialize(nombre,longitud)
		super(nombre)
		@longitud = longitud
	end

	def recibirDisparo()
		if (@longitud == 0)
			return "sink"
		end
		@longitud = @longitud - 1
		return "hit"
	end

end
