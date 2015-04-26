require 'rspec'
require_relative '../model/jugador.rb'


describe 'Jugador' do

		it 'Al comenzar el jugador deberia iniciar con 0 puntos' do
			jugador = Jugador.new('Pepe')
			jugador.puntos.should be 0
		end
end
