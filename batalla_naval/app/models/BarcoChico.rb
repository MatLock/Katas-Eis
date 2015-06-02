class BarcoChico < Barco
	
	def initialize(nombre)
		super(nombre)
	end

	def recibirDisparo()
		return "sink"
	end
end