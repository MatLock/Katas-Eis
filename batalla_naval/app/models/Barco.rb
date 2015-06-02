class Barco

	attr_accessor :nombre


	def recibirDisparo
	end

	def to_s
		return @nombre
	end

	def hayBarco()
		return true
	end

	def initialize(nombre)
		@nombre = nombre
	end
end