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
		@tablero.ponerBarcoEn("(3:3)",BarcoChico.new("Foxtrox"))
		expect(@tablero.mapa[3][3].nombre).to eq "Foxtrox"
	end



	it "Al agregar un barco grande en las posiciones (x,y),(z,t), las mismas ya no deben estar vacias en el tablero" do
		@tablero.ponerBarcoEn("(2:2),(3:3),(4:4)", BarcoLargo.new("Delta"))
		expect(@tablero.mapa[2][2].nombre).to eq "Delta"
		expect(@tablero.mapa[3][3].nombre).to eq "Delta"
		expect(@tablero.mapa[4][4].nombre).to eq "Delta"
	end	

end


describe 'Disparo' do
		before (:each) do
			@tablero = Tablero.new(5,5)
			@tablero.ponerBarcoEn("(4:1),(4,2)",BarcoLargo.new("Charlie"))
		end

		it "Al disparar a una coordenada y fallar, debo obtener 'water'" do
			expect(@tablero.dispararEn("(3:3)")).to eq "water"
		end
end