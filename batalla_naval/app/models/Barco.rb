class Barco

	attr_accessor :nombre


	def recibirDisparo()
	end

	def initialize(nombre)
		@nombre = nombre
	end
end


class BarcoChico < Barco

end


class BarcoLargo < Barco

end
