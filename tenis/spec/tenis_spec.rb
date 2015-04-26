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

		it 'Al anotar un punto y tener 15 puntos, su puntaje nuevo debe ser 30' do
			jugador = Jugador.new('Pepe')
			jugador.puntos = 15
			jugador.anotar()
			jugador.puntos.should eq 30
		end

		it 'Al anotar un punto y tener 30 puntos, su puntaje nuevo debe ser 45' do
			jugador = Jugador.new('Pepe')
			jugador.puntos = 30
			jugador.anotar()
			jugador.puntos.should eq 45
		end
end
