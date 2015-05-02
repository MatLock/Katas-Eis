require_relative '../spec_helper.rb'
require_relative '../../app/models/Tablero.rb'


describe 'Tablero'  do 
	
	before (:each) do
		@tablero = Tablero.new(5,5)
	end

	it 'Al iniciar el juego' do
		@tablero.should be #
	end

end