require_relative '../spec_helper.rb'
require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'



describe 'Tablero'  do 
	
	before (:each) do
		@tablero = Tablero.new(5,5)
	end

	it 'Al iniciar el juego' do
		expect(@tablero).to be #
	end

	it 'Al agregar un barco chico en la posicion (x,y), la misma ya no debe estar ocupada' do
		@tablero.putBarcoEn([3],[3],BarcoChico.new("Charlie"))
		expect(@tablero.mapa[3][3]).to be #
		expect(@tablero.mapa[3][3].nombre).to eq "Charlie"
	end

end