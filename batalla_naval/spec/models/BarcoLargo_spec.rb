require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/BarcoLargo.rb'
require_relative '../spec_helper.rb'

describe 'BarcoLargo'  do 
	
	before (:each) do
		@barco = BarcoLargo.new("Delta",2)
	end

	it 'responde al metodo hayBarco' do
		expect(@barco).to be #
	end

	it 'Su nombre Es Delta' do
		expect(@barco.nombre).to eq "Delta"
	end

	it 'Un Barco Largo al recibir un primer disparo retorna hit' do
		expect(@barco.recibirDisparo()).to eq "hit"
	end

	it 'Un Barco Largo al recibir el segundo disparo retorna sink'do
			@barco.recibirDisparo
			expect(@barco.recibirDisparo()).to eq "sink"
	end

end