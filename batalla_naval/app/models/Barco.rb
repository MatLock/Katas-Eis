class Barco

	attr_accessor :nombre


	def recibirDisparo()
	end
end


class BarcoChico < Barco

	def initialize(nombre)
		@nombre = nombre
	end
end
