require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/SinBarco.rb'



describe 'SinBarco'  do 
	
	before (:each) do
		@sinBarco = SinBarco.new()
	end

	it 'responde al metodo hayBarco' do
		expect(@sinBarco.hayBarco).to eq false
	end

	it 'responde al toString' do
		expect(@sinBarco.to_s).to eq "water"
	end

	it 'responde recibir disparo' do
		expect(@sinBarco.recibirDisparo).to eq "water"
	end

end