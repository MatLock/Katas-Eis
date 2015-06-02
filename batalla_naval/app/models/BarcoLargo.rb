class BarcoLargo < Barco
	attr_accessor :longitud

	def initialize(nombre,longitud)
		super(nombre)
		@longitud = longitud
	end

	def recibirDisparo()
		@longitud = @longitud -1
		if (@longitud == 0)
			return "sink"
		end
		return "hit"
	end

end