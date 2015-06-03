require_relative '../spec_helper.rb'
require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/SinBarco.rb'
require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/BarcoChico.rb'
require_relative '../../app/models/Exceptions.rb'
require_relative '../../app/models/BarcoYaExistenteException.rb'


describe 'Tablero'  do 
	
	before (:each) do
		@tablero = Tablero.new(5,5)
	end

	it 'Al iniciar el juego' do
		expect(@tablero).to be #
	end

	it 'Al agregar un barco chico en la posicion (x,y), la misma ya no debe estar ocupada' do
		@tablero.ponerBarcoChicoEn("3:3",BarcoChico.new("Foxtrox"))
		expect(@tablero.mapa[3][3].nombre).to eq "Foxtrox"
	end

	it "Al agregar un barco grande en las posiciones 3:3 y 3:4, las mismas ya no deben estar vacias en el tablero" do
		@tablero.ponerBarcoLargoEn("3:3", BarcoLargo.new("Delta",2))
		expect(@tablero.mapa[3][3].nombre).to eq "Delta"
		expect(@tablero.mapa[3][4].nombre).to eq "Delta"
	end	

	it 'Al agregar un barco fuera de los limites del tablero se debe esperar una excepcion' do
		expect { @tablero.ponerBarcoChicoEn("6:6", BarcoChico.new("Alpha"))
		}.to raise_error(FueraDelTableroException)
	end

	it 'Al agregar un barco en una coordenada donde ya existe otro barco se debe esperar una excepcion' do
		@tablero.ponerBarcoChicoEn("3:3", BarcoChico.new("Alpha"))
		expect { @tablero.ponerBarcoChicoEn("3:3", BarcoChico.new("Alpha"))
		}.to raise_error(BarcoYaExistenteException)
	end

end


describe 'Disparo' do
	before (:each) do
	@tablero2 = Tablero.new(5,5)
	@tablero2.ponerBarcoLargoEn("3:3",BarcoLargo.new("Charlie",2))
	end

	it "Al disparar a una coordenada y fallar, debo obtener 'water'" do
		expect(@tablero2.dispararEn("2:2")).to eq "water"
	end

	it "Al disparar a una coordenada y que haya un barco en esa posicion debo obtener 'hit'" do
		expect(@tablero2.dispararEn("3:3")).to eq "hit"
	end

end
