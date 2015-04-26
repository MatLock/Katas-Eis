require 'rspec'
require_relative '../model/jugador.rb'


describe 'Jugador' do

		it 'Al comenzar el jugador deberia iniciar con 0 puntos' do
			jugador = Jugador.new('Pepe')
			jugador.puntos.should be 0
		end

		it ' Al anotar un punto y tener 0 puntos, su puntaje nuevo debe ser 15' do
			jugador = Jugador.new('Pepe')
			jugador.anotar()
			jugador.puntos.should eq 15
		end
end
