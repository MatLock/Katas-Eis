require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/BarcoChico.rb'



describe 'SinBarco'  do 
	
	before (:each) do
		@barco = BarcoChico.new("Delta")
	end

	it 'responde al metodo hayBarco' do
		expect(@barco).to be #
	end

	it 'Su nombre Es Delta' do
		expect(@barco.nombre).to eq "Delta"
	end

end